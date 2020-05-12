name = 'python'

version = '2.7.18'

tools = ['python']

build_requires = [
    "gcc-6.3.1"
]

variants = [
    ['platform-linux', 'arch-x86_64', 'os-CentOS-7']
]

uuid = 'python'

def commands():
    if building:
        env.CPATH.append('{root}/include/python2.7')
        env.PKG_CONFIG_PATH.append('{root}/lib/pkgconfig')

    env.PATH.append('{root}/bin')

