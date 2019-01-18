CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(googletest_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_googletest googletest/googletest-release-${googletest_version}.tar.gz
    https://github.com/google/googletest/archive/release-${googletest_version}.tar.gz    
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    usd
    URL ${url_googletest}
    PREFIX usd
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}  
    		   -DCMAKE_POSITION_INDEPENDENT_CODE=ON             
               
)

install(CODE "message(STATUS Installing...)")
