#pragma once

#include <cstdint>
#include <ctime>
#include <functional>
#include <list>
#include <memory>
#include <optional>
#include <vector>
#include <string>

#include "health.h"
#include "panda_comms.h"

#define USB_TX_SOFT_LIMIT (0x100U)
#define USBPACKET_MAX_SIZE (0x40)

#define RECV_SIZE (0x4000U)

#define CAN_REJECTED_BUS_OFFSET 0xC0U
#define CAN_RETURNED_BUS_OFFSET 0x80U

#define LIN_MSG_MAX_LEN 10
#define CAN_RX_QUEUE_LEN 10000
#define CAN_RX_MSG_LEN 1000
#define KLINE_MSG_MAX_LEN 260

const uint8_t PANDA_BUS_CNT = 4U;
const unsigned char dlc_to_len[] = {0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 12U, 16U, 20U, 24U, 32U, 48U, 64U};

struct can_header {
  uint8_t reserved : 1;
  uint8_t bus : 3;
  uint8_t data_len_code : 4;
  uint8_t rejected : 1;
  uint8_t returned : 1;
  uint8_t extended : 1;
  uint32_t addr : 29;
  uint8_t checksum : 8;
};

struct can_frame {
  long address;
  std::vector<uint8_t> dat;
  long busTime;
  long src;
};

enum PandaType {
    unknown = 0,
    whitePanda= 1,
    greyPanda = 2,
    blackPanda = 3,
    pedal = 4,
    uno = 5,
    dos = 6,
    redPanda = 7,
    redPandaV2 = 8,
    tres = 9
};

enum SafetyModel {
  silent = 0,
  hondaNidec = 1,
  toyota = 2,
  elm327 = 3,
  gm = 4,
  hondaBoschGiraffe = 5,
  ford = 6,
  cadillac = 7,
  hyundai = 8,
  chrysler = 9,
  tesla = 10,
  subaru = 11,
  gmPassive = 12,
  mazda = 13,
  nissan = 14,
  volkswagen = 15,
  toyotaIpas = 16,
  allOutput = 17,
  gmAscm = 18,
  noOutput = 19,  //# like silent but without silent CAN TXs
  hondaBosch = 20,
  volkswagenPq = 21,
  subaruLegacy = 22,  //# pre-Global platform
  hyundaiLegacy = 23,
  hyundaiCommunity = 24,
  volkswagenMlb = 25,
  hongqi = 26,
  body = 27,
  hyundaiCanfd = 28
};

enum PANDA_SERIAL_PORT {
  SERIAL_DEBUG = 0,
  SERIAL_ESP = 1,
  SERIAL_LIN1 = 2,
  SERIAL_LIN2 = 3
};

struct CanData {
  uint32_t address;
  uint16_t busTime;
  std::vector<uint8_t> dat;
  uint8_t src;
};

struct KLineData {

};

enum PANDA_CAN_PORT_CLEAR {
  PANDA_CAN1_TX = 0,
  PANDA_CAN2_TX = 1,
  PANDA_CAN3_TX = 2,
  PANDA_CAN_RX = 0xFFFF,
};

class Panda {
private:
  std::unique_ptr<PandaCommsHandle> handle;

public:
  Panda(std::string serial="", uint32_t bus_offset=0);

  PandaType hw_type = PandaType::unknown;
  bool has_rtc = false;

  const uint32_t bus_offset;

  bool connected();
  bool comms_healthy();
  std::string hw_serial();

  // Static functions
  static std::vector<std::string> list();

  // Panda functionality
  void set_safety_model(SafetyModel safety_model, uint16_t safety_param=0U);
  void set_alternative_experience(uint16_t alternative_experience);
  void set_rtc(struct tm sys_time);
  struct tm get_rtc();
  void set_fan_speed(uint16_t fan_speed);
  uint16_t get_fan_speed();
  void set_ir_pwr(uint16_t ir_pwr);
  PandaType get_hw_type();
  std::optional<health_t> get_state();
  std::optional<can_health_t> get_can_state(uint16_t can_number);
  void set_loopback(bool loopback);
  std::optional<std::vector<uint8_t>> get_firmware_version();
  std::optional<std::string> get_serial();
  void set_power_saving(bool power_saving);
  void enable_deepsleep();
  void send_heartbeat(bool engaged);
  void set_can_speed_kbps(uint16_t bus, uint16_t speed);
  void set_data_speed_kbps(uint16_t bus, uint16_t speed);
  void set_canfd_non_iso(uint16_t bus, bool non_iso);
  void can_send(const std::vector<CanData> &can_data_list);
  bool can_receive(std::vector<can_frame>& out_vec);
  bool can_clear(PANDA_CAN_PORT_CLEAR port);
  bool can_clear(PANDA_SERIAL_PORT port);
  void can_reset_communications();

  void Panda::pack_can_buffer(const std::vector<CanData> &can_data_list,
                            std::function<void(uint8_t *, size_t)> write_func);

  bool Panda::unpack_can_buffer(uint8_t *data, uint32_t &size, std::vector<can_frame> &out_vec);

protected:
  // for unit tests
  uint8_t receive_buffer[RECV_SIZE + sizeof(can_header) + 64];
  uint32_t receive_buffer_size = 0;

  Panda(uint32_t bus_offset) : bus_offset(bus_offset) {}
  uint8_t calculate_checksum(uint8_t *data, uint32_t len);
  
};
