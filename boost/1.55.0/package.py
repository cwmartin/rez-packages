name = "boost"

version = "1.55.0"

authors = [
    "boost.org"
]

description = \
    """
    Peer-reviewed portable C++ source libraries.
    """

build_requires = [
    "gcc-4.8.2+",
    'python-2.7'
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", "python-2.7"]
]

uuid = "boost"

def commands():
    if building:
        env.CPATH.append("{root}/include")
        env.LD_LIBRARY_PATH.append("{root}/lib")
        env.LIBRARY_PATH.append("{root}/lib")
