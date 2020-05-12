name = "gcc"

version = "6.3.1"

authors = [
    "GNU"
]

description = \
    """
    GNU project C and C++ compiler.
    """

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

tools = [
    "gcc",
    "g++",
    "c++",
    "cpp",
    "gcc-ar",
    "gcc-ranlib",
    "gfortran",
    "gcc-nm",
    "gcov"
]

uuid = "gcc"

def commands():
    if building:
        env.LD_LIBRARY_PATH.prepend("/opt/rh/devtoolset-6/root/usr/lib")
        env.LD_LIBRARY_PATH.prepend("/opt/rh/devtoolset-6/root/usr/lib64")

        env.CC = "/opt/rh/devtoolset-6/root/usr/bin/gcc"
        env.CXX = "/opt/rh/devtoolset-6/root/usr/bin/g++"

    env.PATH.prepend("/opt/rh/devtoolset-6/root/usr/bin")
