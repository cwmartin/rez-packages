name = "pyside2"

version = "5.6"

authors = [
    'Qt Project <www.qt.io>'
]

description = \
    '''
    This repository contains the CPython Qt bindings generated using the
    Shiboken generator. 
    '''

requires = [    
    'qt-5.6',
    'python-2.7'
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "pyside2"

def commands():
    env.PYTHONPATH.append('{root}/lib64/python')    
    env.PATH.prepend('{root}/bin')

    if building:
        # env.CPATH.append('{root}/include')
        env.LD_LIBRARY_PATH.append('{root}/lib')
        # env.PKG_CONFIG_PATH.append('{root}/lib/pkgconfig')
        # env.CMAKE_MODULE_PATH.append('{root}/lib/cmake/PySide-{version}')
