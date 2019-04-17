# Install script for directory: /home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cmartin/packages/yaml_cpp/0.6.2/platform-linux/arch-x86_64/os-CentOS-7")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/libyaml-cpp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/yaml-cpp" TYPE DIRECTORY FILES "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include/yaml-cpp/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp" TYPE FILE FILES
    "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles/yaml-cpp-config.cmake"
    "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/yaml-cpp-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp/yaml-cpp-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp/yaml-cpp-targets.cmake"
         "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles/Export/lib/cmake/yaml-cpp/yaml-cpp-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp/yaml-cpp-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp/yaml-cpp-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp" TYPE FILE FILES "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles/Export/lib/cmake/yaml-cpp/yaml-cpp-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/yaml-cpp" TYPE FILE FILES "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/CMakeFiles/Export/lib/cmake/yaml-cpp/yaml-cpp-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/yaml-cpp.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/test/cmake_install.cmake")
  include("/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/util/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.6.2/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
