name = 'sip'

version = '4.19.13'

authors = [
    'Riverbank Computing Limited <https://www.riverbankcomputing.com>'
]

description = \
    '''
    SIP is a tool that makes it very easy to create Python bindings for C and
    C++ libraries.
    '''

build_requires = [
    'python-2.7',
]

variants = [
    ['platform-linux', 'arch-x86_64', 'os-CentOS-7']
]

uuid = 'sip'

def commands():
    env.PATH.append('{root}/bin')
    env.PYTHONPATH.append('{root}/lib64/python2.7/site-packages')

    if building:
        env.SIP_INCLUDE_DIR = '{root}/include/python2.7'
        env.CPATH.append('{root}/include/python2.7')



