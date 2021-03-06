CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)


set(pyilmbase_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_pyilmbase ilmbase/pyilmbase-${pyilmbase_version}.tar.gz
    http://download.savannah.nongnu.org/releases/openexr/pyilmbase-${pyilmbase_version}.tar.gz
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    pyilmbase
    URL ${url_pyilmbase}
    PREFIX pyilmbase
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ./bootstrap && ./configure --prefix=${CMAKE_INSTALL_PREFIX} --without-numpy --with-boost-include-dir=$ENV{REZ_BOOST_ROOT}/include --with-boost-lib-dir=$ENV{REZ_BOOST_ROOT}/lib --with-boost-python-libname=:libboost_python.a --with-ilmbase-prefix=$ENV{REZ_ILMBASE_ROOT}  --with-pic --disable-debug
    INSTALL_COMMAND "${install_cmd}"
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make ${make_args}
)


install(CODE "message(STATUS Installing...)")
