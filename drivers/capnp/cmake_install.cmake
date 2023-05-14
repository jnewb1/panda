# Install script for directory: C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Project")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnp.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnp.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnp.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnp.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/capnp/c++.capnp.h;/capnp/common.h;/capnp/std-iterator.h;/capnp/blob.h;/capnp/endian.h;/capnp/layout.h;/capnp/orphan.h;/capnp/list.h;/capnp/any.h;/capnp/message.h;/capnp/capability.h;/capnp/membrane.h;/capnp/dynamic.h;/capnp/schema.h;/capnp/schema.capnp.h;/capnp/stream.capnp.h;/capnp/schema-lite.h;/capnp/schema-loader.h;/capnp/schema-parser.h;/capnp/pretty-print.h;/capnp/serialize.h;/capnp/serialize-async.h;/capnp/serialize-packed.h;/capnp/serialize-text.h;/capnp/pointer-helpers.h;/capnp/generated-header-support.h;/capnp/raw-schema.h;/capnp/c++.capnp;/capnp/schema.capnp;/capnp/stream.capnp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/capnp" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/c++.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/common.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/compat/std-iterator.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/blob.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/endian.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/layout.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/orphan.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/list.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/any.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/message.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/capability.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/membrane.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/dynamic.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/stream.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema-lite.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema-loader.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema-parser.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/pretty-print.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/serialize.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/serialize-async.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/serialize-packed.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/serialize-text.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/pointer-helpers.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/generated-header-support.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/raw-schema.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/c++.capnp"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/schema.capnp"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/stream.capnp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnp-rpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnp-rpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnp-rpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnp-rpc.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/capnp/rpc-prelude.h;/capnp/rpc.h;/capnp/rpc-twoparty.h;/capnp/rpc.capnp.h;/capnp/rpc-twoparty.capnp.h;/capnp/persistent.capnp.h;/capnp/ez-rpc.h;/capnp/rpc.capnp;/capnp/rpc-twoparty.capnp;/capnp/persistent.capnp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/capnp" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc-prelude.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc-twoparty.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc-twoparty.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/persistent.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/ez-rpc.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc.capnp"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/rpc-twoparty.capnp"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/persistent.capnp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnp-json.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnp-json.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnp-json.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnp-json.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/capnp/compat/json.h;/capnp/compat/json.capnp.h;/capnp/compat/json.capnp")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/capnp/compat" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/compat/json.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/compat/json.capnp.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/compat/json.capnp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnpc.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnpc.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnp.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnpc-c++.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnpc-c++.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnpc-c++.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnpc-c++.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Debug/capnpc-capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/Release/capnpc-capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/MinSizeRel/capnpc-capnp.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/capnp/RelWithDebInfo/capnpc-capnp.exe")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "C:/Program Files/CMake/bin/cmake.exe" -E create_symlink capnp.exe "$ENV{DESTDIR}/capnpc.exe")
endif()

