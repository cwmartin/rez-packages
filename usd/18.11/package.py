
name = "usd"

version = "18.11"

build_requires = [
    'alembic-1.5.2+',
    'hdf5-1.8.9+',
    'python-2.7',
    'boost-1.55',
    'tbb-4.4.6',
    'openexr-2.2.0',
    'opensubdiv-3.0.5+',
    'openimageio-1.5.11+',
    'ptex-2.0.30+',
    'glew-2.0.0+',
    'pyside-1.2',
    # 'pyside2-5.6',
    'PyOpenGL-3.1.0',
    # 'Jinja2',
    'argparse',
    'maya'
]


requires = [
    'python-2.7',
    'boost-1.55',
    # 'pyside-1.2',
    # 'pyside2-5.6',
    'PyOpenGL',
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", 'python-2.7']
]

uuid = "usd"

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    env.PATH.append('{root}/bin')

    if 'maya' in request:
        env.MAYA_PLUG_IN_PATH.append('{root}/third_party/maya/plugin')
        env.MAYA_SCRIPT_PATH.append('{root}/third_party/maya/lib/usd/usdMaya/resources')
        env.XBMLANGPATH.append('{root}/third_party/maya/ lib/usd/usdMaya/resources/')

    # if 'katana' in request:
    #     env.KATANA_RESOURCES.append('{root}/third_party/katana/plugin')
    #     env.KATANA_POST_PYTHONPATH.append('{root}/third_party/katana/lib')

    if building:
        env.USD_INCLUDE_DIR = '{root}/include'
        env.LD_LIBRARY_PATH.append('{root}/lib')


