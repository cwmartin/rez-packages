name = "pyside"

version = "1.2.4"

authors = [
    'Qt Project <www.qt.io>'
]

description = \
    '''
    This repository contains the CPython Qt bindings generated using the
    Shiboken generator. 
    '''

requires = [
    'shiboken-1.2.4',
    'qt-4.8',
    'python-2.7'
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "repository.pyside"

def commands():
    env.PYTHONPATH.append('{root}/lib64/python2.7/site-packages')    

    if building:
        # env.CPATH.append('{root}/include')
        env.LD_LIBRARY_PATH.append('{root}/lib')
        # env.PKG_CONFIG_PATH.append('{root}/lib/pkgconfig')
        # env.CMAKE_MODULE_PATH.append('{root}/lib/cmake/PySide-{version}')
