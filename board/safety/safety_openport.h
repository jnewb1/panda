static const addr_checks* openport_init(uint16_t param) {
  UNUSED(param);
  controls_allowed = true;
  return &default_rx_checks;
}

static int openport_tx_hook(CANPacket_t *to_send) {
  UNUSED(to_send);
  return true;
}

static int openport_tx_lin_hook(int lin_num, uint8_t *data, int len) {
  UNUSED(lin_num);
  UNUSED(data);
  UNUSED(len);
  return true;
}

static int openport_fwd_hook(int bus_num, int addr) {
  int bus_fwd = -1;
  UNUSED(addr);

  if (bus_num == 1) {
    bus_fwd = 2;
  }
  if (bus_num == 2) {
    bus_fwd = 1;
  }

  return bus_fwd;
}

const safety_hooks openport_hooks = {
  .init = openport_init,
  .rx = default_rx_hook,
  .tx = openport_tx_hook,
  .tx_lin = openport_tx_lin_hook,
  .fwd = openport_fwd_hook,
};
