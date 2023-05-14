# Install script for directory: C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj

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
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Debug/kj.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Release/kj.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/MinSizeRel/kj.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/RelWithDebInfo/kj.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/common.h;/kj/units.h;/kj/memory.h;/kj/refcount.h;/kj/array.h;/kj/vector.h;/kj/string.h;/kj/string-tree.h;/kj/hash.h;/kj/table.h;/kj/map.h;/kj/encoding.h;/kj/exception.h;/kj/debug.h;/kj/arena.h;/kj/io.h;/kj/tuple.h;/kj/one-of.h;/kj/function.h;/kj/mutex.h;/kj/thread.h;/kj/threadlocal.h;/kj/filesystem.h;/kj/time.h;/kj/main.h;/kj/windows-sanity.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/common.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/units.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/memory.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/refcount.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/array.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/vector.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/string.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/string-tree.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/hash.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/table.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/map.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/encoding.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/exception.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/debug.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/arena.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/io.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/tuple.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/one-of.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/function.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/mutex.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/thread.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/threadlocal.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/filesystem.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/time.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/main.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/windows-sanity.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/parse/common.h;/kj/parse/char.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj/parse" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/parse/common.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/parse/char.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/std/iostream.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj/std" TYPE FILE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/std/iostream.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Debug/kj-test.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Release/kj-test.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/MinSizeRel/kj-test.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/RelWithDebInfo/kj-test.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/test.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj" TYPE FILE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/test.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/compat/gtest.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj/compat" TYPE FILE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/compat/gtest.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Debug/kj-async.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Release/kj-async.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/MinSizeRel/kj-async.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/RelWithDebInfo/kj-async.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/async-prelude.h;/kj/async.h;/kj/async-inl.h;/kj/async-unix.h;/kj/async-win32.h;/kj/async-io.h;/kj/timer.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async-prelude.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async-inl.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async-unix.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async-win32.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/async-io.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/timer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Debug/kj-http.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Release/kj-http.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/MinSizeRel/kj-http.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/RelWithDebInfo/kj-http.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/compat/url.h;/kj/compat/http.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj/compat" TYPE FILE FILES
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/compat/url.h"
    "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/compat/http.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Debug/kj-gzip.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/Release/kj-gzip.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/MinSizeRel/kj-gzip.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/RelWithDebInfo/kj-gzip.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/kj/compat/gzip.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/kj/compat" TYPE FILE FILES "C:/Users/jnewb/repos/openpilot/panda/drivers/capnp/kj/compat/gzip.h")
endif()

