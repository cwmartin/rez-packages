CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(usd_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_usd usd/USD-${usd_version}.tar.gz
    https://github.com/PixarAnimationStudios/OpenSubdiv/archive/v${usd_version}.tar.gz
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    usd
    URL ${url_usd}
    PREFIX usd
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}
               -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON
               -DPXR_ENABLE_GL_SUPPORT=TRUE
               -DPXR_BUILD_IMAGING=TRUE
               -DPXR_ENABLE_PTEX_SUPPORT=TRUE
               -DPXR_BUILD_USD_IMAGING=TRUE
               -DPXR_BUILD_USDVIEW=TRUE

               -DTBB_ROOT_DIR=$ENV{REZ_TBB_ROOT}
               -DTBB_tbb_LIBRARY=$ENV{REZ_TBB_ROOT}/lib/libtbb.so

               -DOPENEXR_LOCATION=$ENV{REZ_OPENEXR_ROOT}
               -DOPENEXR_INCLUDE_DIR=$ENV{REZ_OPENEXR_ROOT}/include:$ENV{REZ_ILMBASE_ROOT}/include

               -DOPENEXR_Half_LIBRARY=$ENV{REZ_ILMBASE_ROOT}/lib/libHalf.a
               -DOPENEXR_Iex_LIBRARY=$ENV{REZ_ILMBASE_ROOT}/lib/libIex.a

               # -DPXR_BUILD_ALEMBIC_PLUGIN=TRUE
               # -DALEMBIC_DIR=$ENV{REZ_ALEMBIC_ROOT}
               # -DPXR_ENABLE_HDF5_SUPPORT=FALSE

               -DOIIO_LOCATION=$ENV{REZ_OPENIMAGEIO_ROOT}
               -DPTEX_LOCATION=$ENV{PTEX_INCLUDE_DIR}

               -OPENSUBDIV_ROOT_DIR=$ENV{REZ_OPENSUBDIV_ROOT}
               -DBOOST_ROOT=$ENV{REZ_BOOST_ROOT}

               -DGLEW_LOCATION=$ENV{REZ_GLEW_ROOT}

               # -DBoost_USE_STATIC_LIBS=ON

               -DPYSIDE_BIN_DIR=$ENV{REZ_PYSIDE_ROOT}/bin



               -DPXR_BUILD_MAYA_PLUGIN=TRUE
               -DMAYA_LOCATION=$ENV{REZ_MAYA_ROOT}
               -DMAYA_tbb_LIBRARY=$ENV{REZ_TBB_ROOT}/lib/libtbb.so
               # -DPXR_BUILD_KATANA_PLUGIN=TRUE
               # -DKATANA_API_LOCATION=/opt/thefoundry/katana/katana2.5v4

               -DPXR_ENABLE_NAMESPACES=ON

               -DCMAKE_SKIP_BUILD_RPATH=FALSE
               -DCMAKE_BUILD_WITH_INSTALL_RPATH=FALSE
               -DCMAKE_INSTALL_RPATH=$ENV{REZ_BOOST_ROOT}/lib
)

install(CODE "message(STATUS Installing...)")
