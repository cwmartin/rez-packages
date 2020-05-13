name = "pyilmbase"

version = "2.3.0"

authors = [
    "ILM"
]

description = \
    """
    Utility libraries from ILM used by OpenEXR.
    """
requires = [
    "python-2.7.9+",
    "ilmbase-2.3.0"
]

build_requires = [
    "cmake-3.11+",
    "gcc-6.3.1",
    "python-2.7.9+",
    "boost-1.66",
    "ilmbase-2.3.0"
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", "python-2.7"]
]

uuid = "pyilmbase"

def commands():
    env.PYTHONPATH.append("{root}/lib/python2.7/site-packages")
    
    # env.LD_LIBRARY_PATH.append('{root}/lib')
    
    if building:
        env.CPATH.append('{root}/include')
        env.M4PATH.append('{root}/share/aclocal')

