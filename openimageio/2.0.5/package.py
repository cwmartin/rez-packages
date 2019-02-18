name = "openimageio"

version = "2.0.5"

authors = [
    "Larry Gitz"
]

description = \
    """
    OpenImageIO Library.
    """

build_requires = [
    'cmake-3.2+',
    "boost-1.55",
    "gcc-4.8.2+",
    "ilmbase-2.2",
    "openexr-2.2",
    "opencolorio-1",
    "python-2.7",
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", "python-2.7"]
]

tools = [
    "iconvert",
    "idiff",
    "igrep",
    "iinfo",
    "maketx",
    "oiiotool"
]

uuid = "openimageio"

def commands():
    env.PATH.append("{root}/bin")
    env.PYTHONPATH.append("{root}/lib/python/site-packages")

    if building:
        env.OIIO_INCLUDE_DIR = "{root}/include"
        env.LD_LIBRARY_PATH.append("{root}/lib")
