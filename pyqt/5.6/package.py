name = 'pyqt'

version = '5.6'

authors = [
    'Riverbank Computing Limited <https://www.riverbankcomputing.com>'
]

description = \
    '''
    PyQt is a set of Python v2 and v3 bindings for The Qt Company's Qt application
    framework and runs on all platforms supported by Qt including Windows, OS X,
    Linux, iOS and Android.
    '''

requires = [
    'gcc-4.8.2+',
    'qt-5.6',
    'sip-4.18',
    'python-2.7'
]

variants = [
    ['platform-linux', 'arch-x86_64', 'os-CentOS-7']
]

uuid = 'pyqt'

def commands():
    env.PATH.append('{root}/bin')
    env.PYTHONPATH.append('{root}/lib64/python2.7/site-packages')

