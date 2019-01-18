
name = "AL_USDMaya"

version = "0.29.4"

build_requires = [
    'ptex-2.0.40+',
    'glew-2.0.0+',
    'boost-1.55',
    'usd-18',
    'googletest-1.8',
    'maya'
]

requires = [
    'usd-18'
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", 'python-2.7']
]

uuid = "AL_USDMaya"

def commands():
    env.PYTHONPATH.append('{root}/lib/python')
    # env.PATH.append('{root}/bin')

    if 'maya' in request:
        env.MAYA_PLUG_IN_PATH.append('{root}/plugin')
        env.MAYA_SCRIPT_PATH.append('{root}/third_party/maya/share/usd/plugins/usdMaya/resources')

    # if 'katana' in request:
    #     env.KATANA_RESOURCES.append('{root}/third_party/katana/plugin')
    #     env.KATANA_POST_PYTHONPATH.append('{root}/third_party/katana/lib')

    if building:
        env.USD_INCLUDE_DIR = '{root}/include'
        env.LD_LIBRARY_PATH.append('{root}/lib')


