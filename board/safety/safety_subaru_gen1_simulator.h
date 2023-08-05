#define MSG_SUBARU_Brake_Status          0x13c
#define MSG_SUBARU_CruiseControl         0x240
#define MSG_SUBARU_Throttle              0x40
#define MSG_SUBARU_Steering_Torque       0x119
#define MSG_SUBARU_Wheel_Speeds          0x13a

#define MSG_SUBARU_ES_LKAS               0x122
#define MSG_SUBARU_ES_Brake              0x220
#define MSG_SUBARU_ES_Distance           0x221
#define MSG_SUBARU_ES_Status             0x222
#define MSG_SUBARU_ES_DashStatus         0x321
#define MSG_SUBARU_ES_LKAS_State         0x322
#define MSG_SUBARU_ES_Infotainment       0x323

#define SUBARU_MAIN_BUS 0
#define SUBARU_ALT_BUS  1
#define SUBARU_CAM_BUS  2

static const addr_checks* subaru_simulator_init(uint16_t param){
  UNUSED(param);
  controls_allowed = true;
  return &default_rx_checks;
}

static int subaru_simulator_fwd_hook(int bus_num, int addr) {
  int bus_fwd = -1;

  if (bus_num == SUBARU_MAIN_BUS) {
    if((addr == MSG_SUBARU_CruiseControl) || (addr == MSG_SUBARU_Wheel_Speeds) || (addr == MSG_SUBARU_Brake_Status)){
      bus_fwd = SUBARU_ALT_BUS;
    }
  }

  if (bus_num == SUBARU_CAM_BUS) {
    if((addr == MSG_SUBARU_ES_Brake) || (addr == MSG_SUBARU_ES_Status) || (addr == MSG_SUBARU_ES_Distance)){
      bus_fwd = SUBARU_ALT_BUS;
    }
  }

  return bus_fwd;
}

const safety_hooks safety_subaru_gen1_simulator = {
  .init = subaru_simulator_init,
  .rx = default_rx_hook,
  .tx = nooutput_tx_hook,
  .tx_lin = nooutput_tx_lin_hook,
  .fwd = subaru_simulator_fwd_hook,
};
