CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_setuptools setuptools/setuptools-${version}.tar.gz
    https://github.com/pypa/setuptools/archive/v${version}.tar.gz
)

set(stagingpath "${CMAKE_BINARY_DIR}/staging")

set(PYTHON_VERSION "$ENV{REZ_PYTHON_MAJOR_VERSION}.$ENV{REZ_PYTHON_MINOR_VERSION}")
set(SETUPTOOLS_PYTHONPATH $ENV{PYTHONPATH}:${stagingpath}/lib/python${PYTHON_VERSION}/site-packages)

if(${REZ_BUILD_INSTALL})
    set(install_cmd ${CMAKE_COMMAND} -E copy_directory ${stagingpath} ${CMAKE_INSTALL_PREFIX} )
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    setuptools
    URL ${url_setuptools}
    PREFIX setuptools
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND python bootstrap.py
    BUILD_IN_SOURCE 1
    BUILD_COMMAND 
        COMMAND ${CMAKE_COMMAND} -E make_directory ${stagingpath}
        COMMAND export PYTHONPATH=${SETUPTOOLS_PYTHONPATH} && python setup.py install --root=/ --prefix=${stagingpath}
    INSTALL_COMMAND ${install_cmd}
)

INSTALL(CODE "MESSAGE(STATUS Installing.)")
