const SteeringLimits SUBARU_STEERING_LIMITS = {
  .max_steer = 2047,
  .max_rt_delta = 940,
  .max_rt_interval = 250000,
  .max_rate_up = 50,
  .max_rate_down = 70,
  .driver_torque_factor = 50,
  .driver_torque_allowance = 60,
  .type = TorqueDriverLimited,
};

const SteeringLimits SUBARU_GEN2_STEERING_LIMITS = {
  .max_steer = 2047,
  .max_rt_delta = 940,
  .max_rt_interval = 250000,
  .max_rate_up = 40,
  .max_rate_down = 40,
  .driver_torque_factor = 50,
  .driver_torque_allowance = 60,
  .type = TorqueDriverLimited,
};

const int SUBARU_BRAKE_MIN = 0;
const int SUBARU_BRAKE_MAX = 400;

const int SUBARU_THROTTLE_MIN = 0;
const int SUBARU_THROTTLE_MAX = 3400;

const int SUBARU_RPM_MIN = 0;
const int SUBARU_RPM_MAX = 3200;

const uint Brake_Status =  0x13c;
const uint CruiseControl = 0x240;


// 0x122 is ES_LKAS
// 0x220 is ES_Brake
// 0x221 is ES_Distance
// 0x222 is ES_Status
// 0x321 is ES_DashStatus
// 0x322 is ES_LKAS_State

const uint ES_LKAS = 0x122;
const uint ES_Brake = 0x220;
const uint ES_Distance = 0x221;
const uint ES_Status =  0x222;
const uint ES_DashStatus = 0x321;
const uint ES_LKAS_State = 0x322;

const CanMsg SUBARU_TX_MSGS[] = {
  {ES_LKAS, 0, 8},
  {ES_Distance, 0, 8},
  {ES_DashStatus, 0, 8},
  {ES_LKAS_State, 0, 8}
};
#define SUBARU_TX_MSGS_LEN (sizeof(SUBARU_TX_MSGS) / sizeof(SUBARU_TX_MSGS[0]))

const CanMsg SUBARU_LONG_TX_MSGS[] = {
  {ES_LKAS, 0, 8},
  {ES_Brake, 0, 8},
  {ES_Distance, 0, 8},
  {ES_Status, 0, 8},
  {ES_DashStatus, 0, 8},
  {ES_LKAS_State, 0, 8},
  {Brake_Status, 2, 8},
  {CruiseControl, 2, 8}
};
#define SUBARU_LONG_TX_MSGS_LEN (sizeof(SUBARU_LONG_TX_MSGS) / sizeof(SUBARU_LONG_TX_MSGS[0]))

const CanMsg SUBARU_GEN2_TX_MSGS[] = {
  {ES_LKAS, 0, 8},
  {ES_Distance, 1, 8},
  {ES_DashStatus, 0, 8},
  {ES_LKAS_State, 0, 8}
};
#define SUBARU_GEN2_TX_MSGS_LEN (sizeof(SUBARU_GEN2_TX_MSGS) / sizeof(SUBARU_GEN2_TX_MSGS[0]))

AddrCheckStruct subaru_addr_checks[] = {
  {.msg = {{ 0x40, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 10000U}, { 0 }, { 0 }}},
  {.msg = {{0x119, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x13a, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x13c, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x240, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 50000U}, { 0 }, { 0 }}},
};
#define SUBARU_ADDR_CHECK_LEN (sizeof(subaru_addr_checks) / sizeof(subaru_addr_checks[0]))
addr_checks subaru_rx_checks = {subaru_addr_checks, SUBARU_ADDR_CHECK_LEN};

AddrCheckStruct subaru_gen2_addr_checks[] = {
  {.msg = {{ 0x40, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 10000U}, { 0 }, { 0 }}},
  {.msg = {{0x119, 0, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x13a, 1, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x13c, 1, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 20000U}, { 0 }, { 0 }}},
  {.msg = {{0x240, 1, 8, .check_checksum = true, .max_counter = 15U, .expected_timestep = 50000U}, { 0 }, { 0 }}},
};
#define SUBARU_GEN2_ADDR_CHECK_LEN (sizeof(subaru_gen2_addr_checks) / sizeof(subaru_gen2_addr_checks[0]))
addr_checks subaru_gen2_rx_checks = {subaru_gen2_addr_checks, SUBARU_GEN2_ADDR_CHECK_LEN};


const uint16_t SUBARU_PARAM_GEN2 = 1;
const uint16_t SUBARU_PARAM_LONGITUDINAL = 2;

bool subaru_gen2 = false;
bool subaru_longitudinal = false;

bool subaru_aeb = false;

static uint32_t subaru_get_checksum(CANPacket_t *to_push) {
  return (uint8_t)GET_BYTE(to_push, 0);
}

static uint8_t subaru_get_counter(CANPacket_t *to_push) {
  return (uint8_t)(GET_BYTE(to_push, 1) & 0xFU);
}

static uint32_t subaru_compute_checksum(CANPacket_t *to_push) {
  int addr = GET_ADDR(to_push);
  int len = GET_LEN(to_push);
  uint8_t checksum = (uint8_t)(addr) + (uint8_t)((unsigned int)(addr) >> 8U);
  for (int i = 1; i < len; i++) {
    checksum += (uint8_t)GET_BYTE(to_push, i);
  }
  return checksum;
}

static int subaru_rx_hook(CANPacket_t *to_push) {

  bool valid = addr_safety_check(to_push, &subaru_rx_checks,
                                 subaru_get_checksum, subaru_compute_checksum, subaru_get_counter, NULL);

  if (valid) {
    const int bus = GET_BUS(to_push);
    const int alt_bus = subaru_gen2 ? 1 : 0;
    const int alt_bus2 = subaru_gen2 ? 1 : 2;

    int addr = GET_ADDR(to_push);
    if ((addr == 0x119) && (bus == 0)) {
      int torque_driver_new;
      torque_driver_new = ((GET_BYTES_04(to_push) >> 16) & 0x7FFU);
      torque_driver_new = -1 * to_signed(torque_driver_new, 11);
      update_sample(&torque_driver, torque_driver_new);
    }

    // ES_Brake Cruise_Brake_Active
    if ((addr == ES_Brake) && (bus == alt_bus2)) {
      subaru_aeb = GET_BIT(to_push, 38U) != 0U;
    }

    // enter controls on rising edge of ACC, exit controls on ACC off
    if ((addr == 0x240) && (bus == alt_bus)) {
      bool cruise_engaged = GET_BIT(to_push, 41U) != 0U;
      pcm_cruise_check(cruise_engaged);
    }

    // update vehicle moving with any non-zero wheel speed
    if ((addr == 0x13a) && (bus == alt_bus)) {
      vehicle_moving = ((GET_BYTES_04(to_push) >> 12) != 0U) || (GET_BYTES_48(to_push) != 0U);
    }

    if ((addr == Brake_Status) && (bus == alt_bus)) {
      brake_pressed = ((GET_BYTE(to_push, 7) >> 6) & 1U);
    }

    if ((addr == 0x40) && (bus == 0)) {
      gas_pressed = GET_BYTE(to_push, 4) != 0U;
    }

    generic_rx_checks((addr == ES_LKAS) && (bus == 0));
  }
  return valid;
}


static int subaru_tx_hook(CANPacket_t *to_send) {

  int tx = 1;
  int addr = GET_ADDR(to_send);
  bool violation = false;

  if (subaru_gen2) {
    tx = msg_allowed(to_send, SUBARU_GEN2_TX_MSGS, SUBARU_GEN2_TX_MSGS_LEN);
  } else if (subaru_longitudinal) {
    tx = msg_allowed(to_send, SUBARU_LONG_TX_MSGS, SUBARU_LONG_TX_MSGS_LEN);
  } else {
    tx = msg_allowed(to_send, SUBARU_TX_MSGS, SUBARU_TX_MSGS_LEN);
  }

  // steer cmd checks
  if (addr == 0x122) {
    int desired_torque = ((GET_BYTES_04(to_send) >> 16) & 0x1FFFU);
    desired_torque = -1 * to_signed(desired_torque, 13);

    const SteeringLimits limits = subaru_gen2 ? SUBARU_GEN2_STEERING_LIMITS : SUBARU_STEERING_LIMITS;
    if (steer_torque_cmd_checks(desired_torque, -1, limits)) {
      tx = 0;
    }

  }

  if (subaru_longitudinal) {
    // check es_brake brake_pressure limits
    if (addr == ES_Brake) {
      int es_brake_pressure = ((GET_BYTES_04(to_send) >> 16) & 0xFFFFU);
      violation |= !subaru_aeb && max_limit_check(es_brake_pressure, SUBARU_BRAKE_MAX, SUBARU_BRAKE_MIN);
    }
    // check es_distance cruise_throttle limits
    if ((addr == ES_Distance) && controls_allowed && !gas_pressed) {
      int cruise_throttle = ((GET_BYTES_04(to_send) >> 16) & 0xFFFU);
      violation |= max_limit_check(cruise_throttle, SUBARU_THROTTLE_MAX, SUBARU_THROTTLE_MIN);
    }
    // check es_status cruise_rpm limits
    if ((addr == ES_Status) && controls_allowed && !gas_pressed) {
      int cruise_rpm = ((GET_BYTES_04(to_send) >> 16) & 0xFFFU);
      violation |= max_limit_check(cruise_rpm, SUBARU_RPM_MAX, SUBARU_RPM_MIN);
    }
  }

  if (violation) {
    tx = 0;
  }
  return tx;
}

static int subaru_fwd_hook(int bus_num, CANPacket_t *to_fwd) {
  int bus_fwd = -1;

  int addr = GET_ADDR(to_fwd);

  if (bus_num == 0) {
    // Global Platform
    bool block_msg = subaru_longitudinal && ((addr == Brake_Status) || (addr == CruiseControl));
    if (!block_msg) {
      bus_fwd = 2;  // to the eyesight camera
    }
  }

  if (bus_num == 2) {
    // Global Platform
    bool block_common = (addr == ES_LKAS) || (addr == ES_DashStatus) || (addr == ES_LKAS_State);
    bool block_long = (addr == ES_Brake) || (addr == ES_Distance) || (addr == ES_Status);
    bool block_msg = block_common || (subaru_longitudinal && block_long);
    if (!block_msg) {
      bus_fwd = 0;  // Main CAN
    }
  }

  return bus_fwd;
}

static const addr_checks* subaru_init(uint16_t param) {
  subaru_gen2 = GET_FLAG(param, SUBARU_PARAM_GEN2);

#ifdef ALLOW_DEBUG
  subaru_longitudinal = GET_FLAG(param, SUBARU_PARAM_LONGITUDINAL);
#endif

  if (subaru_gen2) {
    subaru_rx_checks = (addr_checks){subaru_gen2_addr_checks, SUBARU_GEN2_ADDR_CHECK_LEN};
  } else {
    subaru_rx_checks = (addr_checks){subaru_addr_checks, SUBARU_ADDR_CHECK_LEN};
  }

  return &subaru_rx_checks;
}

const safety_hooks subaru_hooks = {
  .init = subaru_init,
  .rx = subaru_rx_hook,
  .tx = subaru_tx_hook,
  .tx_lin = nooutput_tx_lin_hook,
  .fwd = subaru_fwd_hook,
};
