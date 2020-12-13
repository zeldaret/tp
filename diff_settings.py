#!/usr/bin/env python3

import os

def apply(config, args):
    config['mapfile'] = 'build/dolzel2/dolzel2.map'
    config['map_format'] = 'mw'
    config["mw_build_dir"] = "build/" # only needed for mw map format
    config['myimg'] = 'build/dolzel2/main.elf'
    config['baseimg'] = 'baserom.elf'
    config['makeflags'] = []
    config['source_directories'] = ['src', 'libs', 'include']
    config['arch'] = 'ppc'
    config['objdump_executable'] = f"{os.environ['DEVKITPPC']}/bin/powerpc-eabi-objdump"
