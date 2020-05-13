name = "openexr"

version = "2.3.0"

authors = [
    "ILM"
]

description = \
    """
    ILM's high dynamic-range (HDR) image file format library.
    """

requires = [
    # "ilmbase-2.2"
]

build_requires = [
    "cmake-3.12+",
    "gcc-6.3.1",
    "ilmbase-2.3"
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

tools = [
    "exrenvmap",
    "exrheader",
    "exrmakepreview",
    "exrmaketiled",
    "exrmultipart",
    "exrmultiview",
    "exrstdattr"
]

uuid = "repository.openexr"

def commands():
    env.PATH.append("{root}/bin")
    # env.LD_LIBRARY_PATH.append("{root}/lib")

    if building:
        env.LIBRARY_PATH.append("{root}/lib")
        env.PKG_CONFIG_PATH.append("{root}/lib/pkgconfig")
        env.CPATH.append("{root}/include")
        env.M4PATH.append('{root}/aclocal')

