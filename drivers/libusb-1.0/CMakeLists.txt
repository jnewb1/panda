cmake_minimum_required(VERSION 3.12)
project(libusb)

set(CMAKE_CXX_STANDARD 11)

set(WINDOWS_PLATFORM_SRC
    os/events_windows.h os/events_windows.c
    os/threads_windows.h os/threads_windows.c)

set(OS_WINDOWS_SRC
    libusb-1.0.def libusb-1.0.rc
    os/windows_common.h os/windows_common.c
    os/windows_usbdk.h os/windows_usbdk.c
    os/windows_winusb.h os/windows_winusb.c)

set(COMMON_SRC
    libusbi.h version.h version_nano.h
    core.c descriptor.c hotplug.c io.c strerror.c sync.c)

add_library(libusb-1.0 SHARED ${COMMON_SRC} ${WINDOWS_PLATFORM_SRC} ${OS_WINDOWS_SRC})

target_include_directories(libusb-1.0 PUBLIC "${PROJECT_SOURCE_DIR}")
