
name = "glew"

version = "2.1.0"

build_requires = [
    'gcc',
    'cmake-3.0+'
]

requires = [
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "glew"

def commands():

    if building:
        env.CPATH.append('{root}/include')
        env.GLEW_INCLUDE_DIR = '{root}/include'
        env.LD_LIBRARY_PATH.append('{root}/lib')

