CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)


set(usd_qt_version $ENV{REZ_BUILD_PROJECT_VERSION})
# set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    usd_qt
    GIT_REPOSITORY https://github.com/LumaPictures/usd-qt.git
    GIT_TAG master
    PREFIX usd_qt
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
    		   -DBOOST_ROOT=$ENV{REZ_BOOST_ROOT}        
    		   -DUSD_ROOT=$ENV{REZ_USD_ROOT}
    		   -DTBB_ROOT_DIR=$ENV{REZ_TBB_ROOT}
    		   -DTBB_LIBRARY=$ENV{REZ_TBB_ROOT}/lib
    
)

install(CODE "message(STATUS Installing...)")


