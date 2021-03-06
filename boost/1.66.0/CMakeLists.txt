CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(boost_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_boost boost/boost_1_66_0.tar.gz
    http://downloads.sourceforge.net/project/boost/boost/1.66.0/boost_1_66_0.tar.gz
)

set(b2_args -s NO_BZIP2=1 --prefix=${CMAKE_INSTALL_PREFIX} variant=release link=static,shared --toolset=gcc cflags=-fPIC cxxflags=-fPIC -j$ENV{REZ_BUILD_THREAD_COUNT})

if(${REZ_BUILD_INSTALL})
    set(install_cmd ./b2 install ${b2_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    boost
    URL ${url_boost}
    PREFIX boost
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./bootstrap.sh
    INSTALL_COMMAND "${install_cmd}"
    BUILD_IN_SOURCE 1
    BUILD_COMMAND ./b2 ${b2_args}
)

install(CODE "message(STATUS Installing...)")
