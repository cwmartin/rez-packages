
name = "googletest"

version = "1.8.1"

build_requires = [
    'cmake-3.10+',
    'gcc'
]

requires = [
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", 'python-2.7']
]

uuid = "googletest"

def commands():
    env.PATH.append('{root}/bin')

