#!/usr/bin/env python3
import unittest
from panda import Panda
from panda.tests.libpanda import libpanda_py
import panda.tests.safety.common as common
from panda.tests.safety.common import CANPackerPanda


MSG_SUBARU_PG_CruiseControl       = 0x144
MSG_SUBARU_PG_Throttle            = 0x140
MSG_SUBARU_PG_Wheel_Speeds        = 0xD4
MSG_SUBARU_PG_Brake_Pedal         = 0xD1
MSG_SUBARU_PG_ES_LKAS             = 0x164
MSG_SUBARU_PG_ES_Brake            = 0x160
MSG_SUBARU_PG_ES_Distance         = 0x161
MSG_SUBARU_PG_ES_Status           = 0x162
MSG_SUBARU_PG_Steering_Torque     = 0x371

class TestSubaruPreglobalSafety(common.PandaSafetyTest, common.DriverTorqueSteeringSafetyTest):
  TX_MSGS = [[MSG_SUBARU_PG_ES_Distance, 0], [MSG_SUBARU_PG_ES_LKAS, 0]]
  STANDSTILL_THRESHOLD = 0  # kph
  RELAY_MALFUNCTION_ADDR = MSG_SUBARU_PG_ES_LKAS
  RELAY_MALFUNCTION_BUS = 0
  FWD_BLACKLISTED_ADDRS = {2: [MSG_SUBARU_PG_ES_Distance, MSG_SUBARU_PG_ES_LKAS]}
  FWD_BUS_LOOKUP = {0: 2, 2: 0}

  MAX_RATE_UP = 50
  MAX_RATE_DOWN = 70
  MAX_TORQUE = 2047

  MAX_RT_DELTA = 940
  RT_INTERVAL = 250000

  DRIVER_TORQUE_ALLOWANCE = 75
  DRIVER_TORQUE_FACTOR = 10

  FLAGS = 0

  def setUp(self):
    self.packer = CANPackerPanda("subaru_outback_2015_generated")
    self.safety = libpanda_py.libpanda
    self.safety.set_safety_hooks(Panda.SAFETY_SUBARU_PREGLOBAL, self.FLAGS)
    self.safety.init_tests()

  def _set_prev_torque(self, t):
    self.safety.set_desired_torque_last(t)
    self.safety.set_rt_torque_last(t)

  # TODO: this is unused
  def _torque_driver_msg(self, torque):
    values = {"Steer_Torque_Sensor": torque}
    return self.packer.make_can_msg_panda("Steering_Torque", 0, values)

  def _speed_msg(self, speed):
    # subaru safety doesn't use the scaled value, so undo the scaling
    values = {s: speed*0.0592 for s in ["FR", "FL", "RR", "RL"]}
    return self.packer.make_can_msg_panda("Wheel_Speeds", 0, values)

  def _user_brake_msg(self, brake):
    values = {"Brake_Pedal": brake}
    return self.packer.make_can_msg_panda("Brake_Pedal", 0, values)

  def _torque_cmd_msg(self, torque, steer_req=1):
    values = {"LKAS_Command": torque}
    return self.packer.make_can_msg_panda("ES_LKAS", 0, values)

  def _user_gas_msg(self, gas):
    values = {"Throttle_Pedal": gas}
    return self.packer.make_can_msg_panda("Throttle", 0, values)

  def _pcm_status_msg(self, enable):
    values = {"Cruise_Activated": enable}
    return self.packer.make_can_msg_panda("CruiseControl", 0, values)



class TestSubaruPreglobalLongitudinalSafety(TestSubaruPreglobalSafety, common.LongitudinalGasBrakeSafetyTest):
  MIN_GAS = 808
  MAX_GAS = 3400
  INACTIVE_GAS = 1818
  MAX_POSSIBLE_GAS = 2**12

  MIN_BRAKE = 0
  MAX_BRAKE = 600
  MAX_POSSIBLE_BRAKE = 2**16

  MIN_RPM = 0
  MAX_RPM = 2400
  MAX_POSSIBLE_RPM = 2**12

  FLAGS = Panda.FLAG_SUBARU_LONG

  FWD_BLACKLISTED_ADDRS = {2: [MSG_SUBARU_PG_ES_LKAS, MSG_SUBARU_PG_ES_Brake, MSG_SUBARU_PG_ES_Distance,
                               MSG_SUBARU_PG_ES_Status]}
  
  TX_MSGS = [[MSG_SUBARU_PG_ES_Distance, 0], [MSG_SUBARU_PG_ES_LKAS, 0], [MSG_SUBARU_PG_ES_Brake, 0],
             [MSG_SUBARU_PG_ES_Status, 0]]


  def test_rpm_safety_check(self):
    self._generic_limit_safety_check(self._send_rpm_msg, self.MIN_RPM, self.MAX_RPM, 0, self.MAX_POSSIBLE_RPM, 1)

  def _send_brake_msg(self, brake):
    values = {"Brake_Pressure": brake}
    return self.packer.make_can_msg_panda("ES_Brake", 0, values)

  def _send_gas_msg(self, gas):
    values = {"Cruise_Throttle": gas}
    return self.packer.make_can_msg_panda("ES_Distance", 0, values)

  def _send_rpm_msg(self, rpm):
    values = {"Cruise_RPM": rpm}
    return self.packer.make_can_msg_panda("ES_Status", 0, values)

if __name__ == "__main__":
  unittest.main()
