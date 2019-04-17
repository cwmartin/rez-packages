# - Config file for the yaml-cpp package
# It defines the following variables
#  YAML_CPP_INCLUDE_DIR - include directory
#  YAML_CPP_LIBRARIES    - libraries to link against

# Compute paths
get_filename_component(YAML_CPP_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(YAML_CPP_INCLUDE_DIR "/home/cmartin/dev/third_party/rez-packages/yaml_cpp/0.5.3/build/platform-linux/arch-x86_64/os-CentOS-7/yaml_cpp/src/yaml_cpp/include")

# Our library dependencies (contains definitions for IMPORTED targets)
include("${YAML_CPP_CMAKE_DIR}/yaml-cpp-targets.cmake")

# These are IMPORTED targets created by yaml-cpp-targets.cmake
set(YAML_CPP_LIBRARIES "yaml-cpp")
