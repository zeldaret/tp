#!/usr/bin/env python3

import os

def apply(config, args):
    config['mapfile'] = 'build/dolzel2/dolzel2.map'
    config['expected_mapfile'] = 'expected/build/dolzel2/dolzel2.map'
    config['map_format'] = 'mw'
    config['build_dir'] = "build/" # only needed for mw map format
    config['expected_build_dir'] = 'expected/build/'
    config['myimg'] = 'build/dolzel2/main.elf'
    config['baseimg'] = 'expected/build/dolzel2/main.elf'
    config['makeflags'] = []
    if args.source:
        config['makeflags'].append('DEBUG=1')
    config['source_directories'] = ['src', 'libs', 'include']
    config['arch'] = 'ppc'
    config['objdump_executable'] = f"{os.environ['DEVKITPPC']}/bin/powerpc-eabi-objdump"
