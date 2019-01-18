CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)


set(pyside2_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_pyside2 pyside2/pyside2-${pyside2_version}.tar.gz
    https://code.qt.io/pyside/pyside-setup.git
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd python ./setup.py install --build-tests --ignore-git --reuse-build --home=${CMAKE_INSTALL_PREFIX})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    pyside2
    URL ${url_pyside2}
    # GIT_REPOSITORY https://code.qt.io/pyside/pyside-setup.git
    # GIT_TAG ${pyside2_version}
    PREFIX pyside2
    CONFIGURE_COMMAND ""
    INSTALL_COMMAND ${install_cmd}
    BUILD_IN_SOURCE 1
    BUILD_COMMAND python ./setup.py build --build-tests --ignore-git

)

install(CODE "message(STATUS Installing...)")


