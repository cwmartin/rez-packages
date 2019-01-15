name = "pyilmbase"

version = "2.2.0"

authors = [
    "ILM"
]

description = \
    """
    Utility libraries from ILM used by OpenEXR.
    """
requires = [
    "python-2.7",
    "ilmbase-2.2.0"
]

build_requires = [
    "gcc-4.8.2+",
    "python-2.7",
    "boost-1.55",
    "ilmbase-2.2.0"
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", "python-2.7"]
]

uuid = "pyilmbase"

def commands():
    env.PYTHONPATH.append("{root}/lib64/python2.7/site-packages")
    
    # env.LD_LIBRARY_PATH.append('{root}/lib')
    
    if building:
        env.CPATH.append('{root}/include')
        env.M4PATH.append('{root}/share/aclocal')

