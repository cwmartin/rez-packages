name = 'python'

version = '2.7.5'

tools = ['python']

variants = [
    ['platform-linux', 'arch-x86_64', 'os-CentOS-7']
]

uuid = 'python'

def commands():
    if building:
        env.CPATH.append('/usr/include/python2.7')
        env.PKG_CONFIG_PATH.append('/usr/lib64/pkgconfig')

