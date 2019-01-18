
name = "googletest"

version = "1.8.1"

build_requires = [        
    'gcc'
]

requires = [        
]

variants = [
    ["platform-linux", "arch-x86_64", "os-CentOS-7", 'python-2.7']
]

uuid = "googletest"

def commands():    
    env.PATH.append('{root}/bin')

