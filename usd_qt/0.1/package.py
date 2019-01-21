name = "usd_qt"

version = "0.1"

authors = [
    'Qt Project <www.qt.io>'
]

description = \
    '''    
    '''
build_requires = [    
    'tbb-4'
]

requires = [        
    'pyside2-5.6',
    'python-2.7',
    'usd-18',
    'boost-1.55'
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7"]
]

uuid = "usd_qt"

def commands():
    env.PYTHONPATH.prepend('{root}/lib/python')    
    env.PATH.prepend('{root}/bin')

    if building:
        # env.CPATH.append('{root}/include')
        env.LD_LIBRARY_PATH.append('{root}/lib')
        # env.PKG_CONFIG_PATH.append('{root}/lib/pkgconfig')
        # env.CMAKE_MODULE_PATH.append('{root}/lib/cmake/PySide-{version}')
