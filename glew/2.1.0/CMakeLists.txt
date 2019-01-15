CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include(RezBuild)
include(RezRepository)
include(ExternalProject)

set(glew_version $ENV{REZ_BUILD_PROJECT_VERSION})

rez_set_archive(
    url_glew glew/glew-${glew_version}.tgz
    https://phoenixnap.dl.sourceforge.net/project/glew/glew/${glew_version}/glew-${glew_version}.tgz
    
)

set(make_args -j$ENV{REZ_BUILD_THREAD_COUNT} VERBOSE=1)

if(${REZ_BUILD_INSTALL})
    set(install_cmd make install ${make_args})
else()
    set(install_cmd "")
endif()

ExternalProject_add(
    glew
    URL ${url_glew}
    PREFIX glew        
    CONFIGURE_COMMAND ${CMAKE_COMMAND} -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} <SOURCE_DIR>/build/cmake 
)

install(CODE "message(STATUS Installing...)")
