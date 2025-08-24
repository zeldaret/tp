#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import argparse
import json
import sys
from pathlib import Path
from typing import Any, Dict, List

from tools.project import (
    Object,
    ProgressCategory,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

# Game versions
DEFAULT_VERSION = 0
VERSIONS = [
    "GZ2E01",    # GCN USA
    "GZ2P01",    # GCN PAL
    "GZ2J01",    # GCN JPN
    "RZDE01_00", # Wii USA Rev 0
    "RZDE01_02", # Wii USA Rev 2
    "RZDP01",    # Wii PAL
    "RZDJ01",    # Wii JPN
    "RZDK01",    # Wii KOR
    "DZDE01",    # Wii USA Kiosk Demo
    "DZDP01",    # Wii PAL Kiosk Demo
    "Shield",    # Shield
    "ShieldP",   # Shield Production
    "ShieldD",   # Shield Debug
]

# Versions to disable until properly configured
DISABLED_VERSIONS = [
    4,  # Wii USA Rev 2
    5,  # Wii PAL
    6,  # Wii JPN
    7,  # Wii KOR
    8,  # Wii USA Kiosk Demo
    9,  # Wii PAL Kiosk Demo
    10, # Shield
    11, # Shield Production
]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    choices=["configure", "progress"],
    default="configure",
    help="script mode (default: configure)",
    nargs="?",
)
parser.add_argument(
    "-v",
    "--version",
    choices=VERSIONS,
    type=str,
    default=VERSIONS[DEFAULT_VERSION],
    help="version to build",
)
parser.add_argument(
    "--build-dir",
    metavar="DIR",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--binutils",
    metavar="BINARY",
    type=Path,
    help="path to binutils (optional)",
)
parser.add_argument(
    "--compilers",
    metavar="DIR",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        metavar="BINARY",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--dtk",
    metavar="BINARY | DIR",
    type=Path,
    help="path to decomp-toolkit binary or source (optional)",
)
parser.add_argument(
    "--objdiff",
    metavar="BINARY | DIR",
    type=Path,
    help="path to objdiff-cli binary or source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    metavar="EXE",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--verbose",
    action="store_true",
    help="print verbose output",
)
parser.add_argument(
    "--non-matching",
    dest="non_matching",
    action="store_true",
    help="builds equivalent (but non-matching) or modded objects",
)
parser.add_argument(
    "--warn",
    dest="warn",
    type=str,
    choices=["all", "off", "error"],
    help="how to handle warnings",
)
parser.add_argument(
    "--no-progress",
    dest="progress",
    action="store_false",
    help="disable progress calculation",
)
args = parser.parse_args()

config = ProjectConfig()
config.version = str(args.version)
version_num = VERSIONS.index(config.version)

if version_num in DISABLED_VERSIONS:
    print(f"Version {VERSIONS[version_num]} is disabled. Using default")
    version_num = DEFAULT_VERSION
    config.version = VERSIONS[DEFAULT_VERSION]

# Apply arguments
config.build_dir = args.build_dir
config.dtk_path = args.dtk
config.objdiff_path = args.objdiff
config.binutils_path = args.binutils
config.compilers_path = args.compilers
config.generate_map = args.map
config.non_matching = args.non_matching
config.sjiswrap_path = args.sjiswrap
config.progress = args.progress
if not is_windows():
    config.wrapper = args.wrapper
# Don't build asm unless we're --non-matching
if not config.non_matching:
    config.asm_dir = None

# Tool versions
config.binutils_tag = "2.42-1"
config.compilers_tag = "20250520"
config.dtk_tag = "v1.5.1"
config.objdiff_tag = "v3.0.0-beta.8"
config.sjiswrap_tag = "v1.2.1"
config.wibo_tag = "0.6.16"

# Project
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("config") / config.version / "build.sha1"
config.asflags = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym version={version_num}",
]
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
]
if args.debug:
    config.ldflags.append("-g")  # Or -gdwarf-2 for Wii linkers
if args.map:
    config.ldflags.append("-mapunused")
    # config.ldflags.append("-listclosure") # For Wii linkers

# Use for any additional files that should cause a re-configure when modified
config.reconfig_deps = []

# Optional numeric ID for decomp.me preset
# Can be overridden in libraries or objects
config.scratch_preset_id = 69 # Twilight Princess (DOL)

# Base flags, common to most GC/Wii games.
# Generally leave untouched, with overrides added below.
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    # "-W all",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-fp_contract on",
    "-i include",
    f"-i build/{config.version}/include",
    "-i src",
    "-ir src/dolphin",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/PPC_EABI/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C++/MSL_Common/Include",
    "-i src/PowerPC_EABI_Support/Runtime/Inc",
    "-i src/PowerPC_EABI_Support/MetroTRK",
    "-i include/dolphin",
    f"-DVERSION={version_num}",
    "-D__GEKKO__",
]

if config.version == "ShieldD":
    cflags_base.extend(["-O0", "-inline off", "-RTTI on", "-str reuse", "-enc SJIS", "-DDEBUG=1"])
elif config.version == "RZDE01_00":
    cflags_base.extend(["-O4,p", "-inline auto", "-ipa file", "-RTTI on", "-str reuse", "-enc SJIS"])
else:
    cflags_base.extend(["-O4,p", "-inline auto", "-RTTI off", "-str reuse", "-multibyte"])

# Debug flags
if args.debug:
    # Or -sym dwarf-2 for Wii compilers
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")
if args.warn == "all":
    cflags_base.append("-W all")
elif args.warn == "off":
    cflags_base.append("-W off")
elif args.warn == "error":
    cflags_base.append("-W error")

cflags_noopt = cflags_base[:]

if config.version != "ShieldD":
    cflags_noopt.remove("-O4,p")

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-common off",
    "-char signed",
]

if config.version != "ShieldD":
    cflags_runtime.extend(["-inline deferred,auto"])

cflags_trk = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-rostr",
    "-str reuse",
    "-gccinc",
    "-common off",
    "-inline deferred,auto",
    "-char signed",
    "-sdata 0",
    "-sdata2 0",
]

# Dolphin library flags
cflags_dolphin = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-char unsigned",
    "-O4,p",
    "-sym on",
    "-inline auto",
    "-i include",
    f"-i build/{config.version}/include",
    "-ir src/dolphin",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C/PPC_EABI/Include",
    "-i src/PowerPC_EABI_Support/MSL/MSL_C++/MSL_Common/Include",
    "-i src/PowerPC_EABI_Support/Runtime/Inc",
    "-i src/PowerPC_EABI_Support/MetroTRK",
    "-i include/dolphin",
    f"-DVERSION={version_num}",
    "-D__GEKKO__",
    "-DSDK_REVISION=2",
]

# Framework flags
cflags_framework = [
    *cflags_base,
    "-use_lmw_stmw off",
    "-schedule off",
    "-sym on",
    "-fp_contract off",
]

if config.version != "ShieldD":
    if config.version == "RZDE01_00":
        # TODO: whats the correct inlining flag? deferred looks better in some places, others not. something else wrong?
        cflags_framework.extend(["-inline noauto", "-O4,s", "-sym on"])
    else:
        cflags_framework.extend(["-inline noauto", "-O3,s", "-sym on", "-str reuse,pool,readonly"])

# REL flags
cflags_rel = [
    *cflags_framework,
    "-sdata 0",
    "-sdata2 0",
]

cflags_dolzel_framework = [
    *cflags_framework,
]

cflags_dolzel_rel = [
    *cflags_rel,
]

def MWVersion(cfg_version: str | None) -> str:
    match cfg_version:
        case "GZ2E01":
            return "GC/2.7"
        case "GZ2P01":
            return "GC/2.7"
        case "GZ2J01":
            return "GC/2.7"
        case "RZDE01_00":
            return "GC/3.0a5.2t"
        case "ShieldD":
            return "Wii/1.0"
        case _:
            return "GC/2.7"

config.linker_version = MWVersion(config.version)


# Helper function for Dolphin libraries
def DolphinLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_dolphin,
        "progress_category": "sdk",
        "objects": objects,
    }


# Helper function for REL script objects
def Rel(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": MWVersion(config.version),
        "cflags": [*cflags_rel],
        "progress_category": "game",
        "objects": objects,
    }

# Helper function for actor RELs
def ActorRel(status: bool, rel_name: str, extra_cflags: List[str]=[]) -> Dict[str, Any]:
    return Rel(rel_name, [Object(status, f"d/actor/{rel_name}.cpp", extra_cflags=extra_cflags, scratch_preset_id=70)])


# Helper function for JSystem libraries
def JSystemLib(lib_name: str, objects: List[Object], progress_category: str="third_party") -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": MWVersion(config.version),
        "cflags": [*cflags_framework],
        "progress_category": progress_category,
        "objects": objects,
    }


Matching = True                   # Object matches and should be linked
NonMatching = False               # Object does not match and should not be linked
Equivalent = config.non_matching  # Object should be linked when configured with --non-matching


# Object is only matching for specific versions
def MatchingFor(*versions) -> bool:
    return config.version in versions


# For whatever reason, daNpcF_c::daNpcF_c gets inlined.
#  Using the following prevents that from happening:
# TODO: This is just a temporary hack and should be looked into more extensively in the future
DANPCF_C_HACK = '-pragma "inline_max_size(494)"'

config.warn_missing_config = True
config.warn_missing_source = False
config.precompiled_headers = [
    {
        "source": "d/dolzel.pch",
        "mw_version": MWVersion(config.version),
        "cflags": ["-lang=c++", *cflags_dolzel_framework],
    },
    {
        "source": "d/dolzel_rel.pch",
        "mw_version": MWVersion(config.version),
        "cflags": ["-lang=c++", *cflags_dolzel_rel],
    },
]
config.libs = [
    {
        "lib": "machine",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "core",
        "host": True,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_main.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_printf.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_audio.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_controller_pad.cpp"),
            Object(NonMatching, "m_Do/m_Re_controller_pad.cpp"),
            Object(MatchingFor("GZ2E01"), "m_Do/m_Do_graphic.cpp"),
            Object(NonMatching, "m_Do/m_Do_machine.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_mtx.cpp"),
            Object(NonMatching, "m_Do/m_Do_ext.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_lib.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_Reset.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_dvd_thread.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_DVDError.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_MemCard.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_MemCardRWmng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "m_Do/m_Do_machine_exception.cpp"),
            Object(NonMatching, "m_Do/m_Do_hostIO.cpp"),
        ],
    },
    {
        "lib": "c",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "game",
        "host": True,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "c/c_damagereaction.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "c/c_dylink.cpp"),
        ],
    },
    {
        "lib": "framework",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "core",
        "host": True,
        "objects": [
            # f_ap
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_ap/f_ap_game.cpp"),

            # f_op
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_actor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_actor_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_actor_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_camera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_actor_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_camera_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_overlap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_overlap_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_overlap_req.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene_req.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_view.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_kankyo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_msg.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_kankyo_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_msg_mng.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_draw_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_draw_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_op/f_op_scene_pause.cpp"),

            # f_pc
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_base.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_create_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_create_req.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_create_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_creator.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_delete_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_deletor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_draw_priority.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_executor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_layer.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_leaf.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_layer_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_layer_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_line.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_load.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_manager.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_method.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_node.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_node_req.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_priority.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_profile.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_searcher.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_line_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_line_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_method_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_method_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_pause.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_draw.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_fstcreate_req.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "f_pc/f_pc_stdcreate_req.cpp"),
            Object(NonMatching, "f_pc/f_pc_debug_sv.cpp"),
        ],
    },
    {
        "lib": "dolzel2",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "game",
        "host": True,
        "objects": [
            Object(NonMatching, "d/d_home_button.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_stage.cpp"),
            Object(Equivalent, "d/d_map.cpp"), # weak func order
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_com_inf_game.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_com_static.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_com_inf_actor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bomb.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_lib.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_save.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_save_init.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_jnt_col.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_a_obj.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_a_itembase_static.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_a_item_static.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_a_shop_item_static.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_a_horse_static.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_demo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_door_param2.cpp"),
            Object(NonMatching, "d/d_resorce.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_map_path.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_map_path_fmap.cpp"),
            Object(NonMatching, "d/d_map_path_dmap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_event.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_event_data.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_event_manager.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_event_lib.cpp"),
            Object(Equivalent, "d/d_event_debug.cpp"), # RTTI & vtable padding
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_simple_model.cpp"),
            Object(NonMatching, "d/d_particle.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_particle_name.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_particle_copoly.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_path.cpp"),
            Object(Equivalent, "d/d_drawlist.cpp"), # missing vtable
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_kankyo_data.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_kankyo_wether.cpp"),
            Object(NonMatching, "d/d_kankyo_rain.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_vibration.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_vib_pattern.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_attention.cpp"),
            Object(NonMatching, "d/d_bg_parts.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_pc.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_att_dist.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_plc.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_acch.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_gnd_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_grp_pass_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_lin_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_movebg_actor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_sph_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_spl_grp_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_poly_pass_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_roof_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_s_wtr_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_w.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_w_base.cpp"),
            Object(NonMatching, "d/d_bg_w_kcol.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bg_w_sv.cpp"),
            Object(Equivalent, "d/d_cc_d.cpp"), # weak func order
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_cc_mass_s.cpp"),
            Object(NonMatching, "d/d_cc_s.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_cc_uty.cpp"),
            Object(Equivalent, "d/d_cam_param.cpp"), # weak func order
            Object(NonMatching, "d/d_ev_camera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_spline_path.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_item_data.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_item.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_tresure.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_model.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_eye_hl.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_error_msg.cpp"),
            Object(NonMatching, "d/d_debug_viewer.cpp"),
            Object(NonMatching, "d/actor/d_a_alink.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/actor/d_a_itembase.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/actor/d_a_no_chg_room.cpp"),
            Object(NonMatching, "d/actor/d_a_npc.cpp"),
            Object(MatchingFor("GZ2E01"), "d/actor/d_a_npc_cd.cpp"),
            Object(NonMatching, "d/actor/d_a_npc_cd2.cpp"),
            Object(NonMatching, "d/actor/d_a_obj_item.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_insect.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/actor/d_a_obj_ss_base.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/actor/d_a_player.cpp"),
            Object(NonMatching, "d/d_camera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_envse.cpp"),
            Object(NonMatching, "d/d_file_select.cpp"),
            Object(NonMatching, "d/d_file_sel_warning.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_file_sel_info.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_bright_check.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_scope.cpp"),
            Object(Equivalent, "d/d_select_cursor.cpp"), # vtable padding
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_select_icon.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_shop_camera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_shop_item_ctrl.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_shop_system.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_gameover.cpp"),
            Object(NonMatching, "d/d_kankyo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_kyeff.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_kyeff2.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_ky_thunder.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_kantera_icon_meter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_menu_calibration.cpp"),
            Object(NonMatching, "d/d_menu_collect.cpp"),
            Object(NonMatching, "d/d_menu_dmap.cpp"),
            Object(Equivalent, "d/d_menu_dmap_map.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_menu_map_common.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_menu_fishing.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_menu_fmap.cpp"),
            Object(NonMatching, "d/d_menu_fmap_map.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_fmap2D.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_insect.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_item_explain.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_letter.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_option.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_ring.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_save.cpp"), # missing 0x24 bytes of padding between vtables, likely some abstract base class vtable that gets stripped out
            Object(MatchingFor("GZ2E01"), "d/d_menu_skill.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_menu_window_HIO.cpp"),
            Object(Equivalent, "d/d_menu_window.cpp"), # weak func order
            Object(MatchingFor("GZ2E01"), "d/d_meter_HIO.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_meter_button.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_meter_haihai.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_meter_hakusha.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_meter_map.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_meter_string.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_meter2_draw.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_meter2_info.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_meter2.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_out_font.cpp"),
            Object(NonMatching, "d/d_msg_class.cpp"),
            Object(NonMatching, "d/d_msg_object.cpp"),
            Object(NonMatching, "d/d_msg_unit.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_3select.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_arrow.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_msg_scrn_base.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_boss.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_explain.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_item.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_howl.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_jimaku.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_kanban.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_light.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_place.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_staff.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_talk.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_scrn_tree.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_msg_string_base.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_msg_string.cpp"),
            Object(NonMatching, "d/d_msg_flow.cpp"),
            Object(Equivalent, "d/d_name.cpp"), # missing vtable padding
            Object(NonMatching, "d/d_npc_lib.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_ovlp_fade.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_ovlp_fade2.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_ovlp_fade3.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_pane_class.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_pane_class_alpha.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_pane_class_ex.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_logo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_menu.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_name.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_play.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_room.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_s_title.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_save_HIO.cpp"),
            Object(MatchingFor("GZ2E01"), "d/d_timer.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_k_wmark.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "d/d_k_wpillar.cpp"),
        ],
    },
    {
        "lib": "DynamicLink",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "core",
        "host": True,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "DynamicLink.cpp"),
        ],
    },
    {
        "lib": "SSystem",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "third_party",
        "host": True,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_malloc.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_API.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_API_controller_pad.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_API_graphic.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_cc_d.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_cc_s.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_counter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_list.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_list_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_node.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_node_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_tree.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_tree_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_phase.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_request.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_tag.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_tag_iter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_xyz.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_sxyz.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_math.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_s_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_s_gnd_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_s_lin_chk.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_s_shdw_draw.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_s_poly_info.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_bg_w.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m2d.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_aab.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_cir.cpp", extra_cflags=['-pragma "nosyminline on"']), # PCH fixes need for nosyminline - maybe SSystem has one?
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_cps.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_cyl.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_lin.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_pla.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_sph.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_m3d_g_tri.cpp"),
            Object(NonMatching, "SSystem/SComponent/c_m3d_g_vtx.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_lib.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SComponent/c_angle.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "SSystem/SStandard/s_basic.cpp"),
        ],
    },
    JSystemLib(
        "JFramework",
        [
            Object(Equivalent, "JSystem/JFramework/JFWSystem.cpp"), # regalloc
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JFramework/JFWDisplay.cpp"),
        ],
    ),
    JSystemLib(
        "J3DU",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DU/J3DUClipper.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DU/J3DUDL.cpp"),
        ],
    ),
    JSystemLib(
        "JParticle",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAResourceManager.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAResource.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPABaseShape.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAExtraShape.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAChildShape.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAExTexShape.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPADynamicsBlock.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAFieldBlock.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAKeyBlock.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPATexture.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAResourceLoader.cpp"),
            Object(Equivalent, "JSystem/JParticle/JPAEmitterManager.cpp"), # weak func order
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAEmitter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAParticle.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JParticle/JPAMath.cpp"),
        ],
    ),
    JSystemLib(
        "JStage",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGActor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGAmbientLight.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGCamera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGFog.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGLight.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGObject.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStage/JSGSystem.cpp"),
        ],
    ),
    JSystemLib(
        "JStudio",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/ctb.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/ctb-data.cpp"),
            Object(Equivalent, "JSystem/JStudio/JStudio/functionvalue.cpp"), # weak func order
            Object(NonMatching, "JSystem/JStudio/JStudio/fvb.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/fvb-data.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/fvb-data-parse.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/jstudio-control.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/jstudio-data.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/jstudio-math.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/jstudio-object.cpp", extra_cflags=['-pragma "sym off"']),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/object-id.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/stb.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/stb-data-parse.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio/stb-data.cpp"),
        ],
    ),
    JSystemLib(
        "JStudio_JStage",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/control.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/object.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/object-actor.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/object-ambientlight.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/object-camera.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JStage/object-fog.cpp"),
            Object(NonMatching, "JSystem/JStudio/JStudio_JStage/object-light.cpp"),
        ],
    ),
    JSystemLib(
        "JStudio_JAudio2",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JAudio2/control.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JAudio2/object-sound.cpp"),
        ],
    ),
    JSystemLib(
        "JStudio_JParticle",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JParticle/control.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JStudio/JStudio_JParticle/object-particle.cpp", extra_cflags=['-pragma "nosyminline on"']),
        ],
    ),
    JSystemLib(
        "JAudio2",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASCalc.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(NonMatching, "JSystem/JAudio2/JASTaskThread.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASDvdThread.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASCallback.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASHeapCtrl.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASResArcLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASProbe.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JASReport.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASCmdStack.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASTrack.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASTrackPort.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASRegisterParam.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASSeqCtrl.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASSeqParser.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASSeqReader.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASAramStream.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASBank.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASBasicBank.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASVoiceBank.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASBasicInst.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASDrumSet.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASBasicWaveBank.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASSimpleWaveBank.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASWSParser.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASBNKParser.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASWaveArcLoader.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JASChannel.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASLfo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASOscillator.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASAiCtrl.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JASAudioThread.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASAudioReseter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JASDSPChannel.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JASDSPInterface.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JASDriverIF.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JASSoundParams.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/dspproc.cpp", extra_cflags=["-O4", "-func_align 32"]),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/dsptask.cpp", extra_cflags=["-O4", "-func_align 32"]),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/osdsp.cpp", extra_cflags=["-O4", "-func_align 32", "-str nopool"]),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/osdsp_task.cpp", extra_cflags=["-O4", "-func_align 32"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAIAudible.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAIAudience.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISe.cpp"),
            Object(Equivalent, "JSystem/JAudio2/JAISeMgr.cpp"), # weak function order
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JAISeq.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISeqDataMgr.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JAISeqMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISound.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISoundChild.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISoundHandles.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISoundInfo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISoundParams.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAISoundStarter.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JAIStream.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAIStreamDataMgr.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JAIStreamMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUAudioArcInterpreter.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUAudioArcLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUAudioMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUBankTable.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUClusterSound.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/JAudio2/JAUInitializer.cpp"),
            Object(NonMatching, "JSystem/JAudio2/JAUSectionHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUSeqCollection.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUSeqDataBlockMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUSoundAnimator.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUSoundTable.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JAudio2/JAUStreamFileTable.cpp"),
        ],
    ),
    JSystemLib(
        "JMessage",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMessage/control.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMessage/data.cpp"),
            Object(NonMatching, "JSystem/JMessage/processor.cpp"),
            Object(NonMatching, "JSystem/JMessage/resource.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMessage/locale.cpp"),
        ],
    ),
    {
        "lib": "Z2AudioLib",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_framework,
        "progress_category": "core",
        "host": True,
        "objects": [
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2Calc.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2AudioArcLoader.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2Param.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2SoundMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2SoundStarter.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2SoundHandles.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2SeMgr.cpp"),
            Object(Equivalent, "Z2AudioLib/Z2SeqMgr.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2StatusMgr.cpp"),
            Object(NonMatching, "Z2AudioLib/Z2SceneMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2FxLineMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2SoundInfo.cpp"),
            Object(Equivalent, "Z2AudioLib/Z2Audience.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2SoundObject.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2SoundObjMgr.cpp"),
            Object(MatchingFor("GZ2E01"), "Z2AudioLib/Z2Creature.cpp"),
            Object(NonMatching, "Z2AudioLib/Z2LinkMgr.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(NonMatching, "Z2AudioLib/Z2EnvSeMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2WolfHowlMgr.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "Z2AudioLib/Z2SpeechMgr2.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(NonMatching, "Z2AudioLib/Z2AudioMgr.cpp"),
        ],
    },
    {
        "lib": "gf",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_noopt,
        "progress_category": "sdk",
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gf/GFGeometry.cpp", extra_cflags=["-O3"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gf/GFLight.cpp", extra_cflags=["-O3"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gf/GFPixel.cpp", extra_cflags=["-O3"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gf/GFTev.cpp", extra_cflags=["-O3"]),
        ],
    },
    JSystemLib(
        "JKernel",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRExpHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRSolidHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAssertHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDisposer.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRThread.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAram.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAramHeap.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAramBlock.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAramPiece.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAramStream.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRFileLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRFileFinder.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRFileCache.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRArchivePub.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRArchivePri.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRMemArchive.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRAramArchive.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDvdArchive.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRCompArchive.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRFile.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDvdFile.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDvdRipper.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDvdAramRipper.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JKernel/JKRDecomp.cpp"),
        ],
    ),
    JSystemLib(
        "JSupport",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JSupport/JSUList.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JSupport/JSUInputStream.cpp"),
            Object(NonMatching, "JSystem/JSupport/JSUOutputStream.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JSupport/JSUMemoryStream.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JSupport/JSUFileStream.cpp"),
        ],
    ),
    JSystemLib(
        "JGadget",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JGadget/binary.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JGadget/linklist.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JGadget/std-vector.cpp"),
        ],
    ),
    JSystemLib(
        "JUtility",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTCacheFont.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTResource.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTTexture.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTPalette.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTNameTab.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTGraphFifo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTFont.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTResFont.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTDbPrint.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTGamePad.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTException.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTDirectPrint.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTAssert.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTVideo.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTXfb.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTFader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTProcBar.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTConsole.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTDirectFile.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JUtility/JUTFontData_Ascfont_fix12.cpp"),
        ],
    ),
    JSystemLib(
        "J2DGraph",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DGrafContext.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DOrthoGraph.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DTevs.cpp"),
            Object(Equivalent, "JSystem/J2DGraph/J2DMaterial.cpp"), # weak func order
            Object(NonMatching, "JSystem/J2DGraph/J2DMatBlock.cpp"),
            Object(NonMatching, "JSystem/J2DGraph/J2DMaterialFactory.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DPrint.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DPane.cpp"),
            Object(NonMatching, "JSystem/J2DGraph/J2DScreen.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DWindow.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DPicture.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DTextBox.cpp"),
            Object(NonMatching, "JSystem/J2DGraph/J2DWindowEx.cpp"),
            Object(NonMatching, "JSystem/J2DGraph/J2DPictureEx.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DTextBoxEx.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DAnmLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DAnimation.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J2DGraph/J2DManage.cpp"),
        ],
    ),
    JSystemLib(
        "J3DGraphBase",
        [
            Object(MatchingFor("GZ2E01"), "JSystem/J3DGraphBase/J3DGD.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DSys.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DVertex.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DTransform.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DTexture.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DPacket.cpp"),
            Object(MatchingFor("GZ2E01"), "JSystem/J3DGraphBase/J3DShapeMtx.cpp", extra_cflags=['-pragma "nosyminline on"']),
            Object(NonMatching, "JSystem/J3DGraphBase/J3DShapeDraw.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DShape.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DMaterial.cpp"),
            Object(Equivalent, "JSystem/J3DGraphBase/J3DMatBlock.cpp"), # virtual function order
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DTevs.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DDrawBuffer.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphBase/J3DStruct.cpp"),
        ],
    ),
    JSystemLib(
        "J3DGraphAnimator",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DShapeTable.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DJointTree.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DModelData.cpp"),
            Object(NonMatching, "JSystem/J3DGraphAnimator/J3DMtxBuffer.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DModel.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DAnimation.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DMaterialAnm.cpp"),
            Object(NonMatching, "JSystem/J3DGraphAnimator/J3DSkinDeform.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DCluster.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DJoint.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphAnimator/J3DMaterialAttach.cpp"),
        ],
    ),
    JSystemLib(
        "J3DGraphLoader",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DMaterialFactory.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DMaterialFactory_v21.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DClusterLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DModelLoader.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DModelLoaderCalcSize.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DJointFactory.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DShapeFactory.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/J3DGraphLoader/J3DAnmLoader.cpp"),
        ],
    ),
    JSystemLib(
        "JMath",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMath/JMath.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMath/random.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "JSystem/JMath/JMATrigonometric.cpp"),
        ],
    ),
    JSystemLib(
        "JHostIO",
        [
            Object(NonMatching, "JSystem/JHostIO/JHIComm.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JHICommonMem.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JORServer.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JOREntry.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JORFile.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JORMessageBox.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JORHostInfo.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JORShellExecute.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JHIMemBuf.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JHIhioASync.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JHIMccBuf.cpp"),
            Object(NonMatching, "JSystem/JHostIO/JHIRMcc.cpp"),
        ],
    ),
    DolphinLib(
        "base",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/base/PPCArch.c"),
        ],
    ),
    DolphinLib(
        "os",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/__start.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OS.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSAlarm.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSAlloc.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSArena.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSAudioSystem.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSCache.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSContext.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSError.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSExec.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSFont.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSInterrupt.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSLink.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSMessage.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSMemory.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSMutex.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSReboot.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSReset.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSResetSW.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSRtc.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSSync.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSThread.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/OSTime.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/os/__ppc_eabi_init.cpp"),
        ],
    ),
    {
        "lib": "exi",
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_noopt,
        "progress_category": "sdk",
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/exi/EXIBios.c", extra_cflags=["-O3,p"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/exi/EXIUart.c", extra_cflags=["-O4,p"]),
        ],
    },
    DolphinLib(
        "si",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/si/SIBios.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/si/SISamplingRate.c"),
        ],
    ),
    DolphinLib(
        "db",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/db/db.c"),
        ],
    ),
    DolphinLib(
        "mtx",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/mtx/mtx.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/mtx/mtxvec.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/mtx/mtx44.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/mtx/vec.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/mtx/quat.c"),
        ],
    ),
    DolphinLib(
        "dvd",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvdlow.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvdfs.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvd.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvdqueue.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvderror.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvdidutils.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/dvdFatal.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dvd/fstload.c", extra_cflags=["-char signed"]),
        ],
    ),
    DolphinLib(
        "vi",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/vi/vi.c"),
        ],
    ),
    DolphinLib(
        "pad",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/pad/Padclamp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/pad/Pad.c"),
        ],
    ),
    DolphinLib(
        "ai",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/ai/ai.c"),
        ],
    ),
    DolphinLib(
        "ar",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/ar/ar.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/ar/arq.c"),
        ],
    ),
    DolphinLib(
        "dsp",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dsp/dsp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dsp/dsp_debug.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/dsp/dsp_task.c"),
        ],
    ),
    DolphinLib(
        "card",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDBios.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDUnlock.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDRdwr.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDBlock.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDDir.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDCheck.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDMount.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDFormat.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDOpen.c", extra_cflags=["-char signed"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDCreate.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDRead.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDWrite.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDStat.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/card/CARDNet.c"),
        ],
    ),
    DolphinLib(
        "gx",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXInit.c", extra_cflags=["-opt nopeephole"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXFifo.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXAttr.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXMisc.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXGeometry.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXFrameBuf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXLight.c", extra_cflags=["-fp_contract off"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXTexture.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXBump.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXTev.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXPixel.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXDisplayList.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXTransform.c", extra_cflags=["-fp_contract off"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gx/GXPerf.c"),
        ],
    ),
    DolphinLib(
        "gd",
        [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gd/GDBase.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "dolphin/gd/GDGeometry.c"),
        ],
    ),
    {
        "lib": "Runtime.PPCEABI.H",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_runtime,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/__mem.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/__va_arg.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/global_destructor_chain.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/CPlusLibPPC.cp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/NMWException.cp", extra_cflags=["-Cpp_exceptions on"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/ptmf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/runtime.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/__init_cpp_exceptions.cpp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/Gecko_ExceptionPPC.cp"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/Runtime/Src/GCN_Mem_Alloc.c", extra_cflags=["-str reuse,nopool,readonly"]),
        ],
    },
    {
        "lib": "MSL_C",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_runtime,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/abort_exit.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/alloc.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/errno.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/ansi_files.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Src/ansi_fp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/arith.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/buffer_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/char_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/PPC_EABI/Src/critical_regions.gamecube.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/ctype.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/direct_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/file_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/FILE_POS.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/mbstring.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/mem.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/mem_funcs.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/misc_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/printf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/scanf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/float.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/signal.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/string.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/strtoul.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/wchar_io.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/PPC_EABI/Src/uart_console_io_gcn.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_acos.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_asin.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_atan2.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_exp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_fmod.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_pow.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_cos.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_sin.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_tan.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_atan.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ceil.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_copysign.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_cos.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_floor.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_frexp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ldexp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_modf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_sin.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_tan.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_acos.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_asin.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_atan2.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_exp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_fmod.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_pow.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_sqrt.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/PPC_EABI/Src/math_ppc.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_sqrt.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "PowerPC_EABI_Support/MSL/MSL_C/MSL_Common/Src/extras.c"),
        ],
    },
    {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_trk,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            # debugger
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/mainloop.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/nubevent.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/nubinit.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/msg.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/msgbuf.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/serpoll.c", extra_cflags=["-sdata 8"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/usr_put.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/dispatch.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/msghndlr.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/support.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/mutex_TRK.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/notify.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Processor/ppc/Generic/flush_cache.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/mem_TRK.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Processor/ppc/Generic/targimpl.c"),
            Object(MatchingFor("GZ2E01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Processor/ppc/Export/targsupp.s"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Processor/ppc/Generic/mpc_7xx_603e.c"),
            Object(MatchingFor("GZ2E01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Processor/ppc/Generic/exception.s"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/dolphin_trk.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Portable/main_TRK.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/dolphin_trk_glue.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/targcont.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/target_options.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Export/mslsupp.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/debugger/embedded/MetroTRK/Os/dolphin/UDP_Stubs.c"),

            # gamedev
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/gamedev/cust_connection/cc/exi2/GCN/EXI2_DDH_GCN/main.c", extra_cflags=["-sdata 8"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/gamedev/cust_connection/utils/common/CircleBuffer.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/gamedev/cust_connection/cc/exi2/GCN/EXI2_GDEV_GCN/main.c", extra_cflags=["-sdata 8"]),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/gamedev/cust_connection/utils/common/MWTrace.c"),
            Object(MatchingFor("GZ2E01", "GZ2J01"), "TRK_MINNOW_DOLPHIN/gamedev/cust_connection/utils/gc/MWCriticalSection_gc.c"),
        ],
    },
    {
        "lib": "amcstubs",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_dolphin,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "amcstubs/AmcExi2Stubs.c"),
        ],
    },
    {
        "lib": "odemuexi2",
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_runtime,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "odemuexi2/DebuggerDriver.c"),
        ],
    },
    {
        "lib": "odenotstub",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_dolphin,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "odenotstub/odenotstub.c"),
        ],
    },

    # Begin RELs
    {
        "lib": "REL",
        "mw_version": MWVersion(config.version),
        "cflags": cflags_rel,
        "progress_category": "sdk",
        "host": False,
        "objects": [
            Object(MatchingFor("GZ2E01", "GZ2J01"), "REL/executor.c"),
            Object(
                MatchingFor("GZ2E01"),
                "REL/global_destructor_chain.c",
                source="PowerPC_EABI_Support/Runtime/Src/global_destructor_chain.c",
            ),
        ],
    },
    Rel("f_pc_profile_lst", [Object(Matching, "f_pc/f_pc_profile_lst.cpp")]),
    ActorRel(MatchingFor("GZ2E01"), "d_a_andsw"),
    ActorRel(NonMatching, "d_a_bg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_bg_obj"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_dmidna"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_dbdoor00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_knob00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_shutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_spiral"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_dshutter"),
    ActorRel(NonMatching, "d_a_ep"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_hitobj"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag04"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag17"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_brakeeff"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_burnbox"),
    ActorRel(NonMatching, "d_a_obj_carry"),
    ActorRel(NonMatching, "d_a_obj_ito"),
    ActorRel(NonMatching, "d_a_obj_movebox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_swpush"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_timer"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_path_line"),
    ActorRel(NonMatching, "d_a_scene_exit"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_set_bgobj"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_swhit0"),
    ActorRel(NonMatching, "d_a_tag_allmato"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_camera"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_chkpoint"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_event"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_evt"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_evtarea"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_evtmsg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_howl"),
    ActorRel(NonMatching, "d_a_tag_kmsg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_lantern"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_mist"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_msg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_push"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_telop"),
    ActorRel(NonMatching, "d_a_tbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tbox2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_vrbox"),
    ActorRel(NonMatching, "d_a_vrbox2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_arrow"),
    ActorRel(NonMatching, "d_a_boomerang"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_crod"),
    ActorRel(NonMatching, "d_a_demo00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_disappear"),
    ActorRel(NonMatching, "d_a_mg_rod"),
    ActorRel(NonMatching, "d_a_midna"),
    ActorRel(Equivalent, "d_a_nbomb"), # weak func order
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_life_container"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_yousei"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_spinner"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_suspend"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_attention"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_alldie"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_andsw2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_bd"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_canoe"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_cstaF"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_demo_item"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_bossL1"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_dn"),
    ActorRel(Equivalent, "d_a_e_fm"), # regalloc
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ga"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_hb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_nest"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_rd"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_econt"),
    ActorRel(NonMatching, "d_a_fr"),
    ActorRel(NonMatching, "d_a_grass"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag05"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag10"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag11"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag14"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_mg_fish"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_besu"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_fairy_seirei"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_fish"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_henna"),
    ActorRel(NonMatching, "d_a_npc_kakashi"),
    ActorRel(NonMatching, "d_a_npc_kkri"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_kolin"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_maro"),
    ActorRel(NonMatching, "d_a_npc_taro"),
    ActorRel(NonMatching, "d_a_npc_tkj"),
    ActorRel(NonMatching, "d_a_obj_bhashi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bkdoor"),
    ActorRel(NonMatching, "d_a_obj_bosswarp"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cboard"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_digplace"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_eff"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fmobj"),
    ActorRel(NonMatching, "d_a_obj_gpTaru"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hhashi"),
    ActorRel(NonMatching, "d_a_obj_kanban2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kbacket"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kgate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_klift00"),
    ActorRel(NonMatching, "d_a_obj_ktOnFire"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ladder"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv2Candle"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_magne_arm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_metalbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mgate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_nameplate"),
    ActorRel(NonMatching, "d_a_obj_ornament_cloth"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rope_bridge"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sWallShutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_stick"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_stoneMark"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_swpropeller"),
    ActorRel(NonMatching, "d_a_obj_swpush5"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_yobikusa"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_scene_exit2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_shop_item"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_sq"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_swc00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_CstaSw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_ajnot"),
    ActorRel(NonMatching, "d_a_tag_attack_item"),
    ActorRel(NonMatching, "d_a_tag_gstart"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_hinit"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_hjump"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_hstop"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_lv2prchk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_magne"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_mhint"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_mstop"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_spring"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_statue_evt"),
    ActorRel(NonMatching, "d_a_ykgr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_L7demo_dr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_L7low_dr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_L7op_demo_dr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_bh"),
    ActorRel(NonMatching, "d_a_b_bq"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_dr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_dre"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_ds"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_gg"),
    ActorRel(NonMatching, "d_a_b_gm"),
    ActorRel(NonMatching, "d_a_b_gnd"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_go"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_gos"),
    ActorRel(Equivalent, "d_a_b_mgn"), # extra mr/regalloc
    ActorRel(NonMatching, "d_a_b_ob"),
    ActorRel(NonMatching, "d_a_b_oh"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_oh2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_tn"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_yo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_yo_ice"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_zant"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_zant_magic"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_zant_mobile"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_b_zant_sima"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_balloon_2D"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_bullet"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_coach_2D"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_coach_fire"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_cow"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_cstatue"),
    ActorRel(Equivalent, "d_a_do"), # Z2SoundObjSimple dtor
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_boss"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_bossL5"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_mbossL1"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_door_push"),
    ActorRel(NonMatching, "d_a_e_ai"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_arrow"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ba"),
    ActorRel(NonMatching, "d_a_e_bee"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bi_leaf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bu"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_bug"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_cr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_cr_egg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_db"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_db_leaf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_dd"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_df"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_dk"),
    ActorRel(Equivalent, "d_a_e_dt"), # weak func order
    ActorRel(NonMatching, "d_a_e_fb"),
    ActorRel(NonMatching, "d_a_e_fk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_fs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_fz"),
    ActorRel(NonMatching, "d_a_e_gb"),
    ActorRel(NonMatching, "d_a_e_ge"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_gi"),
    ActorRel(NonMatching, "d_a_e_gm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_gob"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_gs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_hb_leaf"),
    ActorRel(NonMatching, "d_a_e_hm"),
    ActorRel(NonMatching, "d_a_e_hp"),
    ActorRel(NonMatching, "d_a_e_hz"),
    ActorRel(NonMatching, "d_a_e_hzelda"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_is"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_kg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_kk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_kr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_mb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_md"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_mf"),
    ActorRel(NonMatching, "d_a_e_mk"),
    ActorRel(NonMatching, "d_a_e_mk_bo"),
    ActorRel(NonMatching, "d_a_e_mm"),
    ActorRel(NonMatching, "d_a_e_mm_mt"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ms"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_nz"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_oc"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_oct_bg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ot"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ph"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_pm"),
    ActorRel(NonMatching, "d_a_e_po"),
    ActorRel(Equivalent, "d_a_e_pz"), # inline issue
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_rb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_rdb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_rdy"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_s1"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_sb"),
    ActorRel(NonMatching, "d_a_e_sf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_sg"),
    ActorRel(NonMatching, "d_a_e_sh"),
    ActorRel(NonMatching, "d_a_e_sm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_sm2"),
    ActorRel(NonMatching, "d_a_e_st"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_st_line"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_sw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_th"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_th_ball"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_tk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_tk2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_tk_ball"),
    ActorRel(NonMatching, "d_a_e_tt"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_vt"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_warpappear"),
    ActorRel(NonMatching, "d_a_e_wb"),
    ActorRel(NonMatching, "d_a_e_ws"),
    ActorRel(NonMatching, "d_a_e_ww"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_yc"),
    ActorRel(NonMatching, "d_a_e_yd"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_yd_leaf"),
    ActorRel(NonMatching, "d_a_e_yg"),
    ActorRel(NonMatching, "d_a_e_yh"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_yk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ym"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ym_tag"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_ymb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_yr"),
    ActorRel(NonMatching, "d_a_e_zh"),
    ActorRel(NonMatching, "d_a_e_zm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_e_zs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_formation_mng"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_guard_mng"),
    ActorRel(NonMatching, "d_a_horse"),
    ActorRel(NonMatching, "d_a_hozelda"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_izumi_gate"),
    ActorRel(NonMatching, "d_a_kago"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag01"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag02"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag03"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag06"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag07"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag08"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag09"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag12"),
    ActorRel(NonMatching, "d_a_kytag13"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag15"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_kytag16"),
    ActorRel(NonMatching, "d_a_mant"),
    ActorRel(NonMatching, "d_a_mg_fshop"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_mirror"),
    ActorRel(NonMatching, "d_a_movie_player", extra_cflags=["-O3,p"]),
    ActorRel(Equivalent, "d_a_myna"), # weird missing function issue
    ActorRel(NonMatching, "d_a_ni"),
    ActorRel(NonMatching, "d_a_npc_aru"),
    ActorRel(NonMatching, "d_a_npc_ash", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_ashB", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_bans"),
    ActorRel(NonMatching, "d_a_npc_blue_ns"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_bou"),
    ActorRel(NonMatching, "d_a_npc_bouS"),
    ActorRel(NonMatching, "d_a_npc_cdn3"),
    ActorRel(NonMatching, "d_a_npc_chat"),
    ActorRel(NonMatching, "d_a_npc_chin"),
    ActorRel(NonMatching, "d_a_npc_clerka"),
    ActorRel(NonMatching, "d_a_npc_clerkb"),
    ActorRel(NonMatching, "d_a_npc_clerkt"),
    ActorRel(NonMatching, "d_a_npc_coach"),
    ActorRel(NonMatching, "d_a_npc_df"),
    ActorRel(NonMatching, "d_a_npc_doc"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_doorboy", extra_cflags=[DANPCF_C_HACK]), # weak func order
    ActorRel(NonMatching, "d_a_npc_drainSol"),
    ActorRel(NonMatching, "d_a_npc_du"),
    ActorRel(NonMatching, "d_a_npc_fairy"),
    ActorRel(Equivalent, "d_a_npc_fguard"), # vtable order
    ActorRel(NonMatching, "d_a_npc_gnd"),
    ActorRel(NonMatching, "d_a_npc_gra"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_grc", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_grd"),
    ActorRel(NonMatching, "d_a_npc_grm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_grmc"),
    ActorRel(NonMatching, "d_a_npc_gro"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_grr", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_grs"),
    ActorRel(NonMatching, "d_a_npc_grz"),
    ActorRel(NonMatching, "d_a_npc_guard"),
    ActorRel(NonMatching, "d_a_npc_gwolf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_hanjo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_henna0"),
    ActorRel(NonMatching, "d_a_npc_hoz"),
    ActorRel(NonMatching, "d_a_npc_impal", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_inko"),
    ActorRel(NonMatching, "d_a_npc_ins"),
    ActorRel(NonMatching, "d_a_npc_jagar"),
    ActorRel(NonMatching, "d_a_npc_kasi_hana"),
    ActorRel(NonMatching, "d_a_npc_kasi_kyu"),
    ActorRel(NonMatching, "d_a_npc_kasi_mich"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_kdk"),
    ActorRel(NonMatching, "d_a_npc_kn"),
    ActorRel(NonMatching, "d_a_npc_knj"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_kolinb"),
    ActorRel(Equivalent, "d_a_npc_ks"), # weak func order
    ActorRel(NonMatching, "d_a_npc_kyury"),
    ActorRel(NonMatching, "d_a_npc_len"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_lf"),
    ActorRel(NonMatching, "d_a_npc_lud"),
    ActorRel(NonMatching, "d_a_npc_midp"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_mk"),
    ActorRel(NonMatching, "d_a_npc_moi"),
    ActorRel(NonMatching, "d_a_npc_moir", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_myna2"),
    ActorRel(NonMatching, "d_a_npc_ne"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_p2"),
    ActorRel(NonMatching, "d_a_npc_pachi_besu"),
    ActorRel(NonMatching, "d_a_npc_pachi_maro"),
    ActorRel(NonMatching, "d_a_npc_pachi_taro"),
    ActorRel(NonMatching, "d_a_npc_passer"),
    ActorRel(NonMatching, "d_a_npc_passer2"),
    ActorRel(NonMatching, "d_a_npc_post"),
    ActorRel(NonMatching, "d_a_npc_pouya"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_prayer", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_raca"),
    ActorRel(NonMatching, "d_a_npc_rafrel"),
    ActorRel(NonMatching, "d_a_npc_saru"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_seib"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_seic"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_seid"),
    ActorRel(NonMatching, "d_a_npc_seira"),
    ActorRel(NonMatching, "d_a_npc_seira2"),
    ActorRel(NonMatching, "d_a_npc_seirei"),
    ActorRel(Equivalent, "d_a_npc_shad", extra_cflags=[DANPCF_C_HACK]), # weak func order
    ActorRel(NonMatching, "d_a_npc_shaman"),
    ActorRel(NonMatching, "d_a_npc_shoe", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_shop0"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_shop_maro"),
    ActorRel(NonMatching, "d_a_npc_sola"),
    ActorRel(NonMatching, "d_a_npc_soldierA"),
    ActorRel(NonMatching, "d_a_npc_soldierB"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_sq"),
    ActorRel(NonMatching, "d_a_npc_the", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_theB"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_tk"),
    ActorRel(NonMatching, "d_a_npc_tkc"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_tkj2"),
    ActorRel(NonMatching, "d_a_npc_tks"),
    ActorRel(NonMatching, "d_a_npc_toby"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_tr"),
    ActorRel(NonMatching, "d_a_npc_uri"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_worm"),
    ActorRel(NonMatching, "d_a_npc_wrestler", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_yamid"),
    ActorRel(NonMatching, "d_a_npc_yamis"),
    ActorRel(NonMatching, "d_a_npc_yamit"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_yelia"),
    ActorRel(NonMatching, "d_a_npc_ykm"),
    ActorRel(NonMatching, "d_a_npc_ykw"),
    ActorRel(NonMatching, "d_a_npc_zanb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_zant"),
    ActorRel(NonMatching, "d_a_npc_zelR"),
    ActorRel(NonMatching, "d_a_npc_zelRo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_npc_zelda"),
    ActorRel(NonMatching, "d_a_npc_zra", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_zrc", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(NonMatching, "d_a_npc_zrz", extra_cflags=[DANPCF_C_HACK]),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_Lv5Key"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_Turara"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_TvCdlst"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_Y_taihou"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_amiShutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ari"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_automata"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_avalanche"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_balloon"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_barDesk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_batta"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bed"),
    ActorRel(NonMatching, "d_a_obj_bemos"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bhbridge"), # vtable order
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bk_leaf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bky_rock"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bmWindow"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bmshutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bombf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_boumato"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_brg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bsGate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_bubblePilar"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_catdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cb"),
    ActorRel(Equivalent, "d_a_obj_cblock"), # weird weak data issue
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_chandelier"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_chest"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cho"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cowdoor"),
    ActorRel(NonMatching, "d_a_obj_crope"),
    ActorRel(NonMatching, "d_a_obj_crvfence"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_crvgate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_crvhahen"),
    ActorRel(NonMatching, "d_a_obj_crvlh_down"),
    ActorRel(NonMatching, "d_a_obj_crvlh_up"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_crvsteel"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_crystal"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_cwall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_damCps"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_dan"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_digholl"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_digsnow"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_dmelevator"),
    ActorRel(NonMatching, "d_a_obj_drop"),
    ActorRel(NonMatching, "d_a_obj_dust"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_enemy_create"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fallobj"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fan"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fchain"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fireWood"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fireWood2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_firepillar"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_firepillar2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_flag"),
    ActorRel(Equivalent, "d_a_obj_flag2"), # weak function order
    ActorRel(NonMatching, "d_a_obj_flag3"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_food"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_fw"),
    ActorRel(NonMatching, "d_a_obj_gadget"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ganonwall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ganonwall2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_gb"),
    ActorRel(NonMatching, "d_a_obj_geyser"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_glowSphere"),
    ActorRel(NonMatching, "d_a_obj_gm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_goGate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_gomikabe"),
    ActorRel(Equivalent, "d_a_obj_gra2"),  # weak function order
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_graWall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_gra_rock"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_grave_stone"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_groundwater"),
    ActorRel(NonMatching, "d_a_obj_grz_rock"),
    ActorRel(NonMatching, "d_a_obj_h_saku"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hakai_brl"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hakai_ftr"),
    ActorRel(NonMatching, "d_a_obj_hasu2"),
    ActorRel(NonMatching, "d_a_obj_hata"),
    ActorRel(NonMatching, "d_a_obj_hb"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hbombkoya"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_heavySw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hfuta"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_hsTarget"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ice_l"),
    ActorRel(NonMatching, "d_a_obj_ice_s"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_iceblock"),
    ActorRel(NonMatching, "d_a_obj_iceleaf"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ihasi"),
    ActorRel(NonMatching, "d_a_obj_ikada"),
    ActorRel(NonMatching, "d_a_obj_inobone"),
    ActorRel(NonMatching, "d_a_obj_ita"),
    ActorRel(NonMatching, "d_a_obj_itamato"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kabuto"),
    ActorRel(NonMatching, "d_a_obj_kag"),
    ActorRel(NonMatching, "d_a_obj_kage"),
    ActorRel(NonMatching, "d_a_obj_kago"),
    ActorRel(NonMatching, "d_a_obj_kaisou"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kamakiri"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kantera"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_katatsumuri"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kazeneko"),
    ActorRel(NonMatching, "d_a_obj_kbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_key"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_keyhole"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ki"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kiPot"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kita"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kjgjs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kkanban"),
    ActorRel(NonMatching, "d_a_obj_knBullet"),
    ActorRel(NonMatching, "d_a_obj_kshutter"),
    ActorRel(NonMatching, "d_a_obj_kuwagata"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kwheel00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_kwheel01"),
    ActorRel(NonMatching, "d_a_obj_kznkarm"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_laundry"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_laundry_rope"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lp"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv1Candle00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv1Candle01"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3Candle"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3Water"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3Water2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3WaterB"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3saka00"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv3waterEff"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4CandleDemoTag"),
    ActorRel(NonMatching, "d_a_obj_lv4CandleTag"),
    ActorRel(NonMatching, "d_a_obj_lv4EdShutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4Gate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4HsTarget"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4PoGate"),
    ActorRel(NonMatching, "d_a_obj_lv4RailWall"),
    ActorRel(NonMatching, "d_a_obj_lv4SlideWall"),
    ActorRel(NonMatching, "d_a_obj_lv4bridge"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4chandelier"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4digsand"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4floor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4gear"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv4prelvtr"),
    ActorRel(NonMatching, "d_a_obj_lv4prwall"),
    ActorRel(NonMatching, "d_a_obj_lv4sand"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv5FloorBoard"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv5IceWall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv5SwIce"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv5ychndlr"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv5yiblltray"),
    ActorRel(NonMatching, "d_a_obj_lv6ChangeGate"),
    ActorRel(NonMatching, "d_a_obj_lv6FurikoTrap"),
    ActorRel(NonMatching, "d_a_obj_lv6Lblock"),
    ActorRel(NonMatching, "d_a_obj_lv6SwGate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv6SzGate"),
    ActorRel(NonMatching, "d_a_obj_lv6Tenbin"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv6TogeRoll"),
    ActorRel(NonMatching, "d_a_obj_lv6TogeTrap"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_lv6bemos"),
    ActorRel(NonMatching, "d_a_obj_lv6bemos2"),
    ActorRel(NonMatching, "d_a_obj_lv6egate"),
    ActorRel(NonMatching, "d_a_obj_lv6elevta"),
    ActorRel(NonMatching, "d_a_obj_lv6swturn"),
    ActorRel(NonMatching, "d_a_obj_lv7BsGate"),
    ActorRel(NonMatching, "d_a_obj_lv7PropellerY"),
    ActorRel(NonMatching, "d_a_obj_lv7bridge"),
    ActorRel(NonMatching, "d_a_obj_lv8KekkaiTrap"),
    ActorRel(NonMatching, "d_a_obj_lv8Lift"),
    ActorRel(NonMatching, "d_a_obj_lv8OptiLift"),
    ActorRel(NonMatching, "d_a_obj_lv8UdFloor"),
    ActorRel(NonMatching, "d_a_obj_lv9SwShutter"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_magLift"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_magLiftRot"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_maki"),
    ActorRel(Equivalent, "d_a_obj_master_sword"), #weak function and vtable order
    ActorRel(NonMatching, "d_a_obj_mato"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mhole"),
    ActorRel(NonMatching, "d_a_obj_mie"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mirror_6pole"),
    ActorRel(NonMatching, "d_a_obj_mirror_chain"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mirror_sand"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mirror_screw"),
    ActorRel(NonMatching, "d_a_obj_mirror_table"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_msima"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_mvstair"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_myogan"),
    ActorRel(NonMatching, "d_a_obj_nagaisu"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_nan"),
    ActorRel(NonMatching, "d_a_obj_ndoor"),
    ActorRel(NonMatching, "d_a_obj_nougu"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_octhashi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_oiltubo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_onsen"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_onsenFire"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_onsenTaru"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_pdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_pdtile"),
    ActorRel(NonMatching, "d_a_obj_pdwall"),
    ActorRel(NonMatching, "d_a_obj_picture"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_pillar"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_pleaf"),
    ActorRel(NonMatching, "d_a_obj_poCandle"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_poFire"),
    ActorRel(NonMatching, "d_a_obj_poTbox"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_prop"),
    ActorRel(NonMatching, "d_a_obj_pumpkin"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rcircle"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rfHole"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rgate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_riverrock"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rock"),
    ActorRel(NonMatching, "d_a_obj_rotBridge"),
    ActorRel(NonMatching, "d_a_obj_rotTrap"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_roten"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_rstair"),
    ActorRel(NonMatching, "d_a_obj_rw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_saidan"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sakuita"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sakuita_rope"),
    ActorRel(NonMatching, "d_a_obj_scannon"),
    ActorRel(NonMatching, "d_a_obj_scannon_crs"),
    ActorRel(NonMatching, "d_a_obj_scannon_ten"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sekidoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sekizo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sekizoa"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_shield"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sm_door"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_smallkey"),
    ActorRel(NonMatching, "d_a_obj_smgdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_smoke"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_smtile"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_smw_stone"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_snowEffTag"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_snow_soup"),
    ActorRel(NonMatching, "d_a_obj_so"),
    ActorRel(NonMatching, "d_a_obj_spinLift"),
    ActorRel(NonMatching, "d_a_obj_ss_drink"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ss_item"),
    ActorRel(NonMatching, "d_a_obj_stairBlock"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_stone"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_stopper"),
    ActorRel(NonMatching, "d_a_obj_stopper2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_suisya"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sw"),
    ActorRel(NonMatching, "d_a_obj_swBallA"),
    ActorRel(NonMatching, "d_a_obj_swBallB"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_swBallC"),
    ActorRel(NonMatching, "d_a_obj_swLight"),
    ActorRel(NonMatching, "d_a_obj_swchain"),
    ActorRel(Equivalent, "d_a_obj_swhang"), # vtable order
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_sword"),
    ActorRel(NonMatching, "d_a_obj_swpush2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_swspinner"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_swturn"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_syRock"),
    ActorRel(NonMatching, "d_a_obj_szbridge"),
    ActorRel(NonMatching, "d_a_obj_taFence"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_table"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_takaraDai"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tatigi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ten"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_testcube"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tgake"),
    ActorRel(NonMatching, "d_a_obj_thashi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_thdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_timeFire"),
    ActorRel(Equivalent, "d_a_obj_tks", extra_cflags=[DANPCF_C_HACK]), # weak function order, sinShort inline issue
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tmoon"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_toaru_maki"),
    ActorRel(NonMatching, "d_a_obj_toby"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tobyhouse"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_togeTrap"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tombo"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tornado"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tornado2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_tp"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_treesh"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_twGate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_udoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_usaku"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_vground"),
    ActorRel(NonMatching, "d_a_obj_volcball"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_volcbom"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_warp_kbrg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_warp_obrg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_waterGate"),
    ActorRel(Equivalent, "d_a_obj_waterPillar"), # weak func order
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_waterfall"),
    ActorRel(NonMatching, "d_a_obj_wchain"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wdStick"),
    ActorRel(NonMatching, "d_a_obj_web0"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_web1"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_well_cover"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wflag"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wind_stone"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_window"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wood_pendulum"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wood_statue"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_wsword"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_yel_bag"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_ystone"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zcloth"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zdoor"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zrTurara"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zrTuraraRock"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zraMark"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zra_freeze"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_obj_zra_rock"),
    ActorRel(NonMatching, "d_a_passer_mng"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_peru"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_ppolamp"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_skip_2D"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_startAndGoal"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_swBall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_swLBall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_swTime"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_Lv6Gate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_Lv7Gate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_Lv8Gate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_TWgate"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_arena"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_assistance"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_bottle_item"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_chgrestart"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_csw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_escape"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_firewall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_gra"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_guard"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_instruction"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_kago_fall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_lightball"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_lv5soup"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_lv6CstaSw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_mmsg"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_mwait"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_myna2"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_myna_light"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_pachi"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_poFire"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_qs"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_ret_room"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_river_back"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_rmbit_sw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_schedule"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_setBall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_setrestart"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_shop_camera"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_shop_item"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_smk_emt"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_spinner"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_sppath"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_ss_drink"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_stream"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_theB_hint"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_wara_howl"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_watchge"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_waterfall"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_wljump"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tag_yami"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_talk"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_tboxSw"),
    ActorRel(MatchingFor("GZ2E01"), "d_a_title"), # weak func order
    ActorRel(MatchingFor("GZ2E01"), "d_a_warp_bug"),
]


# Define our custom asset processing scripts
config.custom_build_rules = [
    {
        "name": "convert_matDL",
        "command": "$python tools/converters/matDL_dis.py $in $out --symbol $symbol --scope $scope",
        "description": "CONVERT $symbol",
    },
]
config.custom_build_steps = {}

# Grab the specific GameID so we can format our strings properly
version = VERSIONS[version_num]
out_dir = config.build_dir / version


# This generates the build steps needed for preprocessing
def emit_build_rule(asset: Dict[str, Any]) -> None:
    assert config.custom_build_steps is not None
    steps = config.custom_build_steps.setdefault("pre-compile", [])
    custom_data = asset.get("custom_data") or {}

    match asset.get("custom_type"):
        case None:
            return

        case "matDL":
            steps.append(
                {
                    "rule": "convert_matDL",
                    "inputs": out_dir / "bin" / asset["binary"],
                    "outputs": out_dir / "include" / asset["header"],
                    "variables": {
                        "symbol": asset["symbol"],
                        "scope": custom_data.get("scope", "local")
                    },
                    "implicit": Path("tools/converters/matDL_dis.py"),
                }
            )

        case _:
            print("Unknown asset type: " + asset["custom_type"])


# Parse the config and create the build rules for all our assets
config_path = out_dir / "config.json"
if config_path.exists():
    config_data = json.load(open(config_path))
    for asset in config_data.get("extract", []):
        emit_build_rule(asset)
    for module in config_data.get("modules", []):
        for asset in module.get("extract", []):
            emit_build_rule(asset)

# Optional callback to adjust link order. This can be used to add, remove, or reorder objects.
# This is called once per module, with the module ID and the current link order.
#
# For example, this adds "dummy.c" to the end of the DOL link order if configured with --non-matching.
# "dummy.c" *must* be configured as a Matching (or Equivalent) object in order to be linked.
def link_order_callback(module_id: int, objects: List[str]) -> List[str]:
    # Don't modify the link order for matching builds
    if not config.non_matching:
        return objects
    if module_id == 0:  # DOL
        return objects + ["dummy.c"]
    return objects

# Uncomment to enable the link order callback.
# config.link_order_callback = link_order_callback

# Optional extra categories for progress tracking
config.progress_categories = [
    ProgressCategory("game", "TP Game Code"),
    ProgressCategory("core", "Core Engine"),
    ProgressCategory("sdk", "SDK"),
    ProgressCategory("third_party", "Third Party"),
]
config.progress_each_module = args.verbose
# Optional extra arguments to `objdiff-cli report generate`
config.progress_report_args = [
    # Marks relocations as mismatching if the target value is different
    # Default is "functionRelocDiffs=none", which is most lenient
    "--config functionRelocDiffs=data_value",
]

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)
elif args.mode == "progress":
    # Print progress information
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)
