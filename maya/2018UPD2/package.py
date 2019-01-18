name = 'maya'

version = '2018UPD2'

description = 'Maya'

build_requires = []

variants = [
    ['platform-linux']
]

uuid = 'maya'

tools = ['maya',
         'Render',
         'mayapy']

def commands():
    env.MAYA_VERSION = '{version}'
    env.MAYA_LOCATION = '/opt/autodesk/maya/maya${MAYA_VERSION}-x64'
    env.MAYA_DEVKIT_LOCATION = '/Volumes/af/tools/thirdparty/linux/maya_devkit/2018'

    env.PATH.prepend('${MAYA_LOCATION}/bin')

    if building:
        env.MAYA_INCLUDE = '${MAYA_DEVKIT_LOCATION}/include'
        env.CPATH.append('${MAYA_DEVKIT_LOCATION}/include')
