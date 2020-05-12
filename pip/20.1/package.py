name = 'pip'

version = '20.1'

tools = [
    'pip',
]

variants = [
    ['platform-linux', 'arch-x86_64', 'os-CentOS-7', 'python-2.7'],
]

requires = [
    'setuptools',
    'python-2.7'
]


def commands():
    env.PATH.append('{root}/bin')
    env.PYTHONPATH.append('{root}/python')


uuid = 'pip'
