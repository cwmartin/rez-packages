name = "ilmbase"

version = "2.3.0"

authors = [
    "ILM"
]

description = \
    """
    Utility libraries from ILM used by OpenEXR.
    """

build_requires = [
    "cmake-3.11+",
    "gcc-6.3.1"
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "ilmbase"

def commands():
    if building:
        env.PKG_CONFIG_PATH.append("{root}/lib/pkgconfig")
        env.CPATH.append("{root}/include")        
        env.LD_LIBRARY_PATH.append("{root}/lib")
