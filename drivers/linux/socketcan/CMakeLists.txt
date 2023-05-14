cmake_minimum_required(VERSION 3.12)
project(panda_socketcan)

add_library(panda_socketcan SHARED panda.c)
target_link_libraries(panda_socketcan libpandadriver)