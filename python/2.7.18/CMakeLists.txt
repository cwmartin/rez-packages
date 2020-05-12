CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)


set(python_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_python python/Python-${python_version}.tgz
    https://www.python.org/ftp/python/${python_version}/Python-${python_version}.tgz
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make altinstall ${make_args})
else()
    set(install_cmd "")
endif()

set(configure_LDFLAGS "-Wl,-rpath=${CMAKE_INSTALL_PREFIX}/lib")

ExternalProject_add(
    python
    URL ${url_python}
    PREFIX python
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./configure --prefix=${CMAKE_INSTALL_PREFIX} --enable-unicode=ucs4 --enable-shared LDFLAGS=${configure_LDFLAGS}
    INSTALL_COMMAND "${install_cmd}"
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make ${make_args}
)

INSTALL(CODE "execute_process( \
    COMMAND ${CMAKE_COMMAND} -E create_symlink \
    ${CMAKE_INSTALL_PREFIX}/bin/python2.7 \
    ${CMAKE_INSTALL_PREFIX}/bin/python \
    )"
)
