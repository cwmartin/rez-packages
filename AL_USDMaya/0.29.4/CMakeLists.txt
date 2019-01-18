CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(al_usd_maya_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_al_usdmaya AL_USDMaya/AL_USDMaya-${al_usd_maya_version}.tar.gz
    https://github.com/AnimalLogic/AL_USDMaya/archive/${al_usd_maya_version}.tar.gz
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    usd
    URL ${url_al_usdmaya}
    PREFIX usd
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
               # -DUSD_ROOT=$ENV{REZ_USD_ROOT}
               -DBOOST_ROOT=$ENV{REZ_BOOST_ROOT}
               -DMAYA_LOCATION='/usr/autodesk/maya2018'
               -DUSD_CONFIG_FILE='$ENV{REZ_USD_ROOT}/pxrConfig.cmake'
               # -DGTEST_ROOT=$ENV{REZ_GOOGLETEST_ROOT}
               -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
               -DSKIP_USDMAYA_TESTS=ON

               -DCMAKE_SKIP_BUILD_RPATH=FALSE
               -DCMAKE_BUILD_WITH_INSTALL_RPATH=FALSE
               -DCMAKE_INSTALL_RPATH=$ENV{REZ_BOOST_ROOT}/lib:$ENV{REZ_GLEW_ROOT}/lib64:$ENV{REZ_USD_ROOT}/lib:$ENV{REZ_OPENSUBDIV_ROOT}/lib:$ENV{REZ_PTEX_ROOT}/lib64:${CMAKE_INSTALL_PREFIX}/lib



               # -DGTEST_ROOT='/path/to/googletest'\
               # -DCMAKE_PREFIX_PATH='/path/to/maya/lib/cmake'

)

install(CODE "message(STATUS Installing...)")
