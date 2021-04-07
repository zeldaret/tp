"""

rel.py - Tool for displaying information in .rel files

"""

import click
import sys
import rich
import logging
import glob
import librel
import struct
import dataclasses
import hexdump
from libdol2asm import settings

from pathlib import Path
from collections import defaultdict
from rich.logging import RichHandler
from rich.console import Console

VERSION = "1.0"
CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)]
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)

@click.group()
@click.version_option(VERSION)
def rel():
    pass

@rel.command(name="info")
@click.option('--debug/--no-debug')
@click.option('--header', '-t', 'dump_header', is_flag=True, default=False)
@click.option('--sections', '-s', 'dump_sections', is_flag=True, default=False)
@click.option('--data', '-d', 'dump_data', is_flag=True, default=False)
@click.option('--relocations', '-r', 'dump_relocation', is_flag=True, default=False)
@click.option('--imp', '-i', 'dump_imp', is_flag=True, default=False)
@click.argument("rel_path", metavar='<REL>', nargs=1, type=click.Path(exists=True,file_okay=True,dir_okay=False))
def rel_info(debug, rel_path, dump_header, dump_sections, dump_data, dump_relocation, dump_imp):
    if debug:
        LOG.setLevel(logging.DEBUG)

    path = Path(rel_path)
    if not path.exists():
        LOG.error(f"File not found: '{path}'")
        sys.exit(1)

    with open(path, 'rb') as file:
        buffer = file.read()
        rel = librel.read(buffer)

    if dump_header:
        CONSOLE.print(f"Header:")
        CONSOLE.print(f"\tindex:   {rel.index}")
        CONSOLE.print(f"\tversion: {rel.version}")
        CONSOLE.print(f"\tsection count: {rel.numSections}")
        CONSOLE.print(f"\tsection offset: 0x{rel.sectionInfoOffset:04X}")
        CONSOLE.print(f"")
        CONSOLE.print(f"\tname offset: 0x{rel.nameOffset:04X}")
        CONSOLE.print(f"\tname size:   {rel.nameSize}")
        CONSOLE.print(f"\talign:       0x{rel.align:02X}")
        CONSOLE.print(f"\tfix size:    0x{rel.fixSize:04X}")
        CONSOLE.print(f"\tbss size:    0x{rel.bssSection:X}")
        CONSOLE.print(f"\tbss align:   0x{rel.bssAlign:02X}")
        CONSOLE.print(f"\tbss section: 0x{rel.bssSize:04X}")
        CONSOLE.print(f"\trel offset:  0x{rel.relOffset:04X}")
        CONSOLE.print(f"\timp offset:  0x{rel.impOffset:04X}")
        CONSOLE.print(f"\timp size:    0x{rel.impSize:04X}")
        CONSOLE.print(f"\t_prolog:     0x{rel.prolog:04X} (section: 0x{rel.prologSection:X})")
        CONSOLE.print(f"\t_epilog:     0x{rel.epilog:04X} (section: 0x{rel.epilogSection:X})")
        CONSOLE.print(f"\t_unresolved: 0x{rel.unresolved:04X} (section: 0x{rel.unresolvedSection:X})")

    if dump_sections:
        CONSOLE.print(f"Sections:")

        for i,section in enumerate(rel.sections):
            CONSOLE.print(f"\t#{i:<2} offset: 0x{section.offset:08X}, length: 0x{section.length:04X}, unknown flag: {section.unknown_flag}, executable flag: {section.executable_flag}")

    if dump_imp:
        CONSOLE.print(f"Imp Table:")

        imp_buffer = rel.data[rel.impOffset:]
        for i in range(rel.impSize // 8):
            imp_offset = 0x8 * i
            module_id, rel_offset = struct.unpack('>II', imp_buffer[imp_offset:][:0x8])
            CONSOLE.print(f"\t#{i:<2} module: {module_id:>4}, offset: 0x{rel_offset:04X}")

    if dump_relocation:
        CONSOLE.print(f"Relocations:")
        
        imp_buffer = rel.data[rel.impOffset:]
        for i in range(rel.impSize // 8):
            imp_offset = 0x8 * i
            module_id, rel_offset = struct.unpack('>II', imp_buffer[imp_offset:][:0x8])

            CONSOLE.print(f"\t[ module: {module_id:>4} ]")
            section = None
            offset = 0
            rel_index = 0
            while True:
                relocation = librel.read_relocation(module_id, rel.data[rel_offset:])
                rel_offset += 0x8
                rel_index += 1

                extra = ""
                if section and path.name in settings.REL_TEMP_LOCATION:
                    base = settings.REL_TEMP_LOCATION[path.name]
                    base += section.offset - rel.sections[1].offset
                    extra = f" | {base:08X} {base+relocation.offset + offset:08X}"

                CONSOLE.print(f"\t#{rel_index:<3} {librel.RELOCATION_NAMES[relocation.type]:<20} {relocation.section:>4} 0x{relocation.offset+offset:08X} 0x{relocation.addend:08X}{extra}")

                if relocation.type == librel.R_PPC_NONE:
                    continue
                if relocation.type == librel.R_DOLPHIN_NOP:
                    # NOP is used to simulate have long offset values, this is because 
                    # the offset field is limited to 2^16-1 values. Thus, any offsets 
                    # above 2^16 will be divided into a NOP + original relocation type.
                    offset += relocation.offset
                    continue
                if relocation.type == librel.R_DOLPHIN_SECTION:
                    section = rel.sections[relocation.section]
                    offset = 0
                    continue

                assert section
                relocation.parent = section
                relocation.relative_offset = relocation.offset
                relocation.offset += offset
                offset = relocation.offset

                assert relocation.type != librel.R_DOLPHIN_MRKREF
                if relocation.type == librel.R_DOLPHIN_END:
                    break

    if dump_data:
        CONSOLE.print(f"Sections:")
        
        for i,section in enumerate(rel.sections):
            if section.data:
                CONSOLE.print(f"\t#{i:<2}")
                hexdata = hexdump.hexdump(section.data, result='return')
                CONSOLE.print(hexdata)

if __name__ == "__main__":
    rel()
