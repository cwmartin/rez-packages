CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(yaml_cpp_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_yaml_cpp yaml_cpp/yaml-cpp-release-${yaml_cpp_version}.tar.gz
    https://codeload.github.com/jbeder/yaml-cpp/tar.gz/yaml-cpp-${yaml_cpp_version}

)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

set(PATCH_COMMAND "patch")

ExternalProject_add(
    yaml_cpp
    URL ${url_yaml_cpp}
    PREFIX yaml_cpp
    CONFIGURE_COMMAND ${CMAKE_COMMAND} -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
    PATCH_COMMAND ${PATCH_COMMAND} -f -p 1 < "$ENV{REZ_REPO_PAYLOAD_DIR}/yaml_cpp/yaml-cpp-${yaml_cpp_version}.patch"
    BUILD_IN_SOURCE 1
)

install(CODE "message(STATUS Installing...)")
