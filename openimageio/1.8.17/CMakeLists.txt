CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)


set(openimageio_version $ENV{REZ_BUILD_PROJECT_VERSION})
set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

rez_set_archive(
    url_openimageio openimageio/oiio-Release-${openimageio_version}.tar.gz
    https://github.com/OpenImageIO/oiio/archive/Release-${openimageio_version}.tar.gz
)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()


ExternalProject_add(
    openimageio
    URL ${url_openimageio}
    PREFIX openimageio
    CMAKE_ARGS
               -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
               -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
               -DLINKSTATIC=ON
               -DBUILDSTATIC=ON
               -DUSE_PYTHON=ON
               -DUSE_fPIC=ON
               -DOIIO_BUILD_TESTS=OFF
               -DBOOST_ROOT=$ENV{REZ_BOOST_ROOT}
               -DILMBASE_INCLUDE_PATH=$ENV{REZ_ILMBASE_ROOT}/include
               -DOPENEXR_INCLUDE_PATH=$ENV{REZ_OPENEXR_ROOT}/include
               -DILMBASE_HOME=$ENV{REZ_ILMBASE_ROOT}
               -DOPENEXR_HOME=$ENV{REZ_OPENEXR_ROOT}
               -DCMAKE_SKIP_BUILD_RPATH=FALSE
               -DCMAKE_BUILD_WITH_INSTALL_RPATH=FALSE
               -DCMAKE_INSTALL_RPATH=$ENV{REZ_BOOST_ROOT}/lib:${CMAKE_INSTALL_PREFIX}/lib
    
    
)

INSTALL(CODE "MESSAGE(STATUS Installing.)")