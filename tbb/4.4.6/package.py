name = "tbb"

version = "4.4.6"

authors = [
    "Intel"
]

description = \
    """
    Intel Threading Building Blocks.
    """

build_requires = [
    "gcc-4.8.2+"
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "tbb"

def commands():    
    if building:
        env.LD_LIBRARY_PATH.append("{root}/lib/release")
        env.TBB_INCLUDE_DIR = "{root}/include/"
        env.TBB_LOCATION="{root}"
