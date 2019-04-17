
name = "yaml_cpp"

version = "0.3.0"

build_requires = [
    'gcc',
    'cmake-3.0+'
]

requires = [
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "yaml_cpp"

def commands():

    if building:
        env.LD_LIBRARY_PATH.append('{root}/lib')
        env.PKG_CONFIG_PATH.append("{root}/lib/pkgconfig")

