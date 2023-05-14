cmake_minimum_required(VERSION 3.12)
project(libpandadriver)

set(CMAKE_CXX_STANDARD 17)

add_library(libpandadriver SHARED panda_comms.cc panda.cc)
target_link_libraries(libpandadriver capnp libusb-1.0)

target_include_directories(libpandadriver PUBLIC "${PROJECT_SOURCE_DIR}")
