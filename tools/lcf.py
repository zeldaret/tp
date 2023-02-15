"""

lcf.py

Generates the .lcf file used for the linker. This will auto force actives missing functions and data
and apply some fixes which makes it easier to decompile.

"""

import importlib
import io
import sys

from pathlib import Path

try:
    import click
    import libelf
    import libar
    import dol2asm_settings
except ImportError as e:
    MISSING_PREREQUISITES = (
        f"Missing prerequisite python module {e}.\n"
        f"Run `python3 -m pip install --user -r tools/requirements.txt` to install prerequisites."
    )

    print(MISSING_PREREQUISITES, file=sys.stderr)
    sys.exit(1)

VERSION = "1.0"

# load the symbol definition file for main.dol
sys.path.append("defs")

FUNCITON_SYMBOLS = """func_802A3C3C
func_802E9368
func_802FAED0
func_802A2474
func_80339CB0
func_802F5DD0
func_802E9260
func_8001505C
func_8027EEB0
func_802A4A80
func_8007914C
func_802BF660
func_802A2328
func_80280588
func_8027833C
func_802D2DF0
func_80078B78
func_802A0A8C
func_802F5E88
func_802D1F50
func_80282200
func_80048970
func_802C0074
func_80078B80
func_802E9488
func_802F7264
func_802F6D18
func_802BF890
func_80271BA8
func_802E90C0
func_802E1D08
func_80267F80
func_8028421C
func_80284204
func_802A9EE8
func_80273724
func_80078D5C
func_80278320
func_80078B70
func_802E9564
func_802BD338
func_8027936C
func_802E1C54
func_8029F03C
func_80267D54
func_802C4928
func_802BDCB0
func_802FFBC4
func_803012CC
func_802AABF4
func_802E90E4
func_802BBCDC
func_80301FC8
func_80304EF0
func_802A2FEC
func_80070018
func_802BBD18
func_802A69D8
func_802D45E4
func_802A69F8
func_802BF898
func_802E4194
func_802BBD94
func_802FDF88
func_802841F8
func_80279364
func_80078D54
func_802807E0
func_8029F650
func_80264A5C
func_802D9B44
func_80015084
func_80077574
func_802AB538
func_8028202C
func_80281E5C
func_802FED84
func_802E980C
func_802DCCD0
func_80079154
func_80281EC8
func_8027DEBC
func_802C0190
func_802E9B0C
func_802FB338
func_802F5D40
func_80041488
func_802841EC
func_802D32B0
func_802A1B48
func_802FA928
func_802AAC3C
func_80078D4C
func_802E9BE8
func_802C5284
func_802A319C
func_80282094
func_802D1EFC
func_802585A4
func_80078B88
func_80264A54
func_80264A64
func_802F5F08
func_802E987C
func_802A0768
func_80284234
func_802CCFF8
func_80302164
func_80282118
func_80264A4C
func_802782B4
func_80284210
func_802782EC
func_80284228
func_80280808
func_80041480
func_802A0B64
func_8007915C
func_802A3104
func_802FC800
func_802FAA5C
func_802782D0
func_80301994
func_80282284"""

def lcf_generate(output_path,shiftable,map_file):
    """Script for generating .lcf files"""

    import module0

    if shiftable == True:
        print("Generating LCF for shiftability")
        map_file = open(map_file,'r')
        map_file = map_file.read()
        map_file = map_file.splitlines()
    else:
        print("Generating LCF")

    # load symbols from compiled files
    symbols = []
    for archive in ARCHIVES:
        symbols.extend(load_archive(archive))

    # load object files from the 'build/o_files', this way we need no list of
    # object files in the python code.
    with open("build/o_files", "r") as content_file:
        o_files = content_file.read().strip().split(" ")

    for o_file in o_files:
        with open(o_file, "rb") as file:
            obj = libelf.load_object_from_file(None, o_file, file)
            symbols.extend(get_symbols_from_object_file(obj))

    # write the file
    with output_path.open("w") as file:
        file.write("MEMORY {\n")
        file.write("\ttext: origin = 0x80003100\n")
        file.write("}\n")
        file.write("\n")

        file.write("SECTIONS {\n")
        file.write("\tGROUP:{\n")

        for name, align in SECTIONS:
            file.write("\t\t%s ALIGN(0x%X):{}\n" % (name, align))

        # strip .dead section
        file.write("\t\t/DISCARD/ : { *(.dead) }\n")

        file.write("\t} > text\n")
        file.write(
            "\t_stack_addr = (_f_sbss2 + SIZEOF(.sbss2) + 65536 + 0x7) & ~0x7;\n"
        )
        file.write("\t_stack_end = _f_sbss2 + SIZEOF(.sbss2);\n")
        file.write("\t_db_stack_addr = (_stack_addr + 0x2000);\n")
        file.write("\t_db_stack_end = _stack_addr;\n")
        file.write("\t__ArenaLo = (_db_stack_addr + 0x1f) & ~0x1f;\n")
        file.write("\t__ArenaHi = 0x81700000;\n")
        file.write("\n")
        file.write("\t/* missing symbols */\n")

        # improve decompilation workflow by making so that function
        # which, for what ever reason, cannot be named the same as
        # the expected name to work. This will happen for all symbols
        # with weird characters.
        base_names = set(module0.SYMBOL_NAMES.keys())
        main_names = set([sym.name for sym in symbols])
        names = base_names - main_names
        if shiftable == False:
            for name in names:
                symbol = module0.SYMBOLS[module0.SYMBOL_NAMES[name]]
                if symbol["type"] == "StringBase":  # @stringBase0 is handled below
                    continue
                if symbol["type"] == "LinkerGenerated":  # linker handles these symbols
                    continue

                addr = symbol['addr']
                file.write(f"\t\"{symbol['label']}\" = 0x{addr:08X};\n")
        elif shiftable == True:
            realNames = []
            symInfo = []
            for func in FUNCITON_SYMBOLS.splitlines():
                symbol = module0.SYMBOLS[module0.SYMBOL_NAMES[func]]
                realNames.append(symbol['name'])
                symInfo.append({'func': func, 'symbol': symbol['name']})
            for line in map_file:
                split = line.split()
                if len(split) >5 and split[2] != 'NOT':
                    sym = split[5]
                    if sym in realNames:
                        #print(line)
                        file.write(f"\t\"{symInfo[realNames.index(sym)]['func']}\" = 0x{int(split[2],16):08X};\n")
                
        
        file.write("\n")

        # @stringBase0 is generated by the compiler. The dol2asm is using a trick to
        # simulate the stringBase0 by creating another symbol (at the same location)
        # that is used instead, as it is impossible to reference the "@stringBase0" (because of the @).
        # So all references will be to the new symbol, thus the linker will think
        # that the @stringBase0 symbol is never used and strip it.
        file.write("\t/* @stringBase0 */\n")
        if shiftable == False:
            for x in module0.SYMBOLS:
                if x["type"] == "StringBase":
                    addr = x['addr']
                    file.write("\t\"%s\" = 0x%08X;\n" % (x['label'], addr))
        elif shiftable == True:
            stringBaseObjs = []
            stringBaseSyms = []
            for x in module0.SYMBOLS:
                if x['type'] == 'StringBase':
                    #print(x)
                    stringBaseObjs.append((module0.TRANSLATION_UNITS[x['tu']].split('/')[-1])+'.o')
                    stringBaseSyms.append(x['label'])
            for line in map_file:
                split = line.split()
                if len(split) > 6 and split[2] != 'NOT':
                    sym = split[5]
                    tu = split[6]
                    if tu[-2:] == '.a':
                        tu = split[7]
                    if sym == '@stringBase0' and tu in stringBaseObjs:
                        addr = int(split[2],16)
                        #print(tu)
                        file.write("\t\"%s\" = 0x%08X;\n" % (stringBaseSyms[stringBaseObjs.index(tu)], addr))

                    

        file.write("}\n")
        file.write("\n")

        file.write("FORCEACTIVE {\n")
        for f in FORCE_ACTIVE:
            file.write('\t"%s"\n' % f)
        file.write("\n")

        file.write("\t/* unreferenced symbols */\n")
        for x in module0.SYMBOLS:
            k = x["label"]
            if x["type"] == "StringBase":
                continue

            require_force_active = False

            # if the symbol is not reachable from the __start add it as forceactive
            if not x["is_reachable"] or sum(x["r"]) == 0:
                require_force_active = True

            if require_force_active:
                file.write(f"\t\"{x['label']}\"\n")
                if not x["label"] in main_names:
                    file.write(f"\t\"{x['name']}\"\n")

        for x in module0.SYMBOLS:
            if x["type"] == "StringBase":
                continue

            if x["is_reachable"]:
                if x["label"] != x["name"]:
                    file.write(f"\t\"{x['name']}\"\n")

        for symbol in symbols:
            if not symbol.name:
                continue

            if "__template" in symbol.name:
                file.write('\t"%s"\n' % (symbol.name))

        file.write("\n")
        file.write("}\n")
        file.write("\n")


def rel_lcf_generate(module_index, output_path):

    module = importlib.import_module(f"module{module_index}")
    base = dol2asm_settings.REL_TEMP_LOCATION[
        module.LIBRARIES[0].split("/")[-1] + ".rel"
    ]

    # load object files from the 'build/o_files', this way we need no list of
    # object files in the python code.
    with open(f"build/M{module_index}_ofiles", "r") as content_file:
        all_files = content_file.read().strip().split(" ")

    path = f"build/dolzel2/rel/{module.LIBRARIES[0]}"

    archives = [path for path in all_files if path.endswith(".a")]

    o_files = [path for path in all_files if path.endswith(".o")]

    # load symbols from compiled files
    symbols = []
    for archive in archives:
        symbols.extend(load_archive(archive))

    for o_file in o_files:
        with open(o_file, "rb") as file:
            obj = libelf.load_object_from_file(None, o_file, file)
            symbols.extend(get_symbols_from_object_file(obj))

    # write rel ldscript file
    with output_path.open("w") as file:
        file.write("SECTIONS {\n")
        file.write(f"\t__rel_base = .;\n")
        file.write("\tGROUP:{\n")
        for name, align in REL_SECTIONS:
            file.write(f"\t\t{name} :{{}}\n")

        # file.write("\t\t/DISCARD/ : { *(.dead) }\n")

        file.write("\t}\n")

        file.write("\n")
        file.write("\t/* missing symbols */\n")

        # improve decompilation workflow by making so that function
        # which, for what ever reason, cannot be named the same as
        # the expected name to work. This will happen for all symbols
        # with weird characters.
        base_names = set(module.SYMBOL_NAMES.keys())
        main_names = set([sym.name for sym in symbols])
        names = base_names - main_names
        for name in names:
            symbol = module.SYMBOLS[module.SYMBOL_NAMES[name]]
            if symbol["type"] == "StringBase":  # @stringBase0 is handled below
                continue
            if symbol["type"] == "LinkerGenerated":  # linker handles these symbols
                continue

            file.write(
                f"\t\"{symbol['label']}\" = __rel_base + 0x{symbol['addr'] - base:08X}; /* 0x{symbol['addr']:08X} */\n"
            )
        file.write("\n")

        file.write("}\n")
        file.write("\n")

        file.write("FORCEACTIVE {\n")
        file.write("\t_prolog\n")
        file.write("\t_epilog\n")
        file.write("\t_unresolved\n")
        file.write("\n")

        file.write("\t/* unreferenced symbols */\n")
        for x in module.SYMBOLS:
            k = x["label"]
            if x["type"] == "StringBase":
                continue

            require_force_active = False

            # if the symbol is not reachable from the __start add it as forceactive
            if not x["is_reachable"] and not x["static"]:
                require_force_active = True

            if require_force_active:
                file.write(f"\t\"{x['label']}\"\n")
                if not x["label"] in main_names:
                    file.write(f"\t\"{x['name']}\"\n")

        for x in module.SYMBOLS:
            if x["type"] == "StringBase":
                continue

            if x["is_reachable"]:
                if x["label"] != x["name"] and x["name"]:
                    file.write(f"\t\"{x['name']}\"\n")

        for symbol in symbols:
            if not symbol.name:
                continue

            if "__template" in symbol.name:
                file.write('\t"%s"\n' % (symbol.name))

        file.write("\n")
        file.write("}\n")
        file.write("\n")


def get_symbols_from_object_file(obj):
    symbols = []
    for sym in obj.symbols:
        if not isinstance(sym, libelf.OffsetSymbol):
            continue
        symbols.append(sym)
    return symbols


def load_archive(ar_path):
    symbols = []

    #print(ar_path)
    archive = libar.read(ar_path)
    for path, data in archive.files:
        obj = libelf.load_object_from_file(None, path, io.BytesIO(data))
        symbols.extend(get_symbols_from_object_file(obj))

    return symbols


SECTIONS = [
    (".init", 0x20),
    ("extab_", 0x20),
    ("extabindex_", 0x20),
    (".text", 0x20),
    (".ctors", 0x20),
    (".dtors", 0x20),
    (".rodata", 0x20),
    (".data", 0x20),
    (".bss", 0x20),
    (".sdata", 0x20),
    (".sbss", 0x20),
    (".sdata2", 0x20),
    (".sbss2", 0x20),
    (".stack", 0x100),
    # (".dead", 0x100),
]

REL_SECTIONS = [
    (".init", 0x4),
    (".text", 0x4),
    (".ctors", 0x4),
    (".dtors", 0x4),
    (".rodata", 0x4),
    (".data", 0x8),
    (".bss", 0x8),
    (".dead", 0x8),
]


# custom force actives
FORCE_ACTIVE = []

ARCHIVES = [
    "build/dolzel2/libSComponent.a",
    "build/dolzel2/libSStandard.a",
    "build/dolzel2/libJFramework.a",
    "build/dolzel2/libJ3DU.a",
    "build/dolzel2/libJParticle.a",
    "build/dolzel2/libJStage.a",
    "build/dolzel2/libJStudio.a",
    "build/dolzel2/libJStudio_JStage.a",
    "build/dolzel2/libJStudio_JAudio2.a",
    "build/dolzel2/libJStudio_JParticle.a",
    "build/dolzel2/libJAudio2.a",
    "build/dolzel2/libJMessage.a",
    "build/dolzel2/libZ2AudioLib.a",
    "build/dolzel2/libgf.a",
    "build/dolzel2/libJKernel.a",
    "build/dolzel2/libJSupport.a",
    "build/dolzel2/libJGadget.a",
    "build/dolzel2/libJUtility.a",
    "build/dolzel2/libJ2DGraph.a",
    "build/dolzel2/libJ3DGraphBase.a",
    "build/dolzel2/libJ3DGraphAnimator.a",
    "build/dolzel2/libJ3DGraphLoader.a",
    "build/dolzel2/libJMath.a",
    "build/dolzel2/libbase.a",
    "build/dolzel2/libos.a",
    "build/dolzel2/libexi.a",
    "build/dolzel2/libsi.a",
    "build/dolzel2/libdb.a",
    "build/dolzel2/libmtx.a",
    "build/dolzel2/libdvd.a",
    "build/dolzel2/libvi.a",
    "build/dolzel2/libpad.a",
    "build/dolzel2/libai.a",
    "build/dolzel2/libar.a",
    "build/dolzel2/libdsp.a",
    "build/dolzel2/libcard.a",
    "build/dolzel2/libgx.a",
    "build/dolzel2/libgd.a",
    "build/dolzel2/libRuntime.PPCEABI.H.a",
    "build/dolzel2/libMSL_C.a",
    "build/dolzel2/libTRK_MINNOW_DOLPHIN.a",
    "build/dolzel2/libamcstubs.a",
    "build/dolzel2/libodemuexi2.a",
    "build/dolzel2/libodenotstub.a",
]


class PathPath(click.Path):
    def convert(self, value, param, ctx):
        return Path(super().convert(value, param, ctx))


@click.group()
@click.version_option(VERSION)
def lcf():
    pass


@lcf.command(name="dol")
@click.option(
    "--output",
    "-o",
    "output_path",
    required=False,
    type=PathPath(file_okay=True, dir_okay=False),
    default="build/dolzel2/ldscript.lcf",
)
def dol(output_path):
    lcf_generate(output_path,False,None)

@lcf.command(name="dol_shift")
@click.option(
    "--output",
    "-o",
    "output_path",
    required=False,
    type=PathPath(file_okay=True, dir_okay=False),
    default="build/dolzel2/ldscript.lcf",
)
@click.option('--map','-m','map_file',required=False,type=PathPath(file_okay=True, dir_okay=False), default="build/dolzel2/dolzel2.map")
def dol_shift(output_path,map_file):
    lcf_generate(output_path,True,map_file)


@lcf.command(name="rel")
@click.option(
    "--output",
    "-o",
    "output_path",
    required=False,
    type=PathPath(file_okay=True, dir_okay=False),
    default="build/dolzel2/ldscript.lcf",
)
@click.argument("module", metavar="<MODULE>", nargs=1)
def rel(output_path, module):
    rel_lcf_generate(module, output_path)


if __name__ == "__main__":
    lcf()
