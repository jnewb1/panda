cmake_minimum_required(VERSION 3.12)
project(panda_j2534)

set(CMAKE_CXX_STANDARD 17)

file(GLOB SOURCE src/*.cpp)

add_library(panda_j2534 SHARED ${SOURCE})
target_link_libraries(panda_j2534 libpandadriver)

target_include_directories(panda_j2534 PUBLIC "${PROJECT_SOURCE_DIR}/include")
target_include_directories(panda_j2534 PUBLIC "${PROJECT_SOURCE_DIR}/../libpandadriver")
