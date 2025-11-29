import argparse
import os
from pathlib import Path

if os.name == "nt":
    DEFAULT_DOLPHIN_CONFIG_PATH = Path(os.getenv('APPDATA')) / "Dolphin Emulator"
else:
    DEFAULT_DOLPHIN_CONFIG_PATH = Path("~/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu").expanduser()

def expanded_path(path_str: str):
    path = Path(path_str)
    path = path.expanduser()
    return path

parser = argparse.ArgumentParser()
parser.add_argument(
    "vanilla_iso_path",
    type=expanded_path,
    help="Path to a vanilla Twilight Princess ISO to use as a base.",
)
parser.add_argument(
    "output_iso_path",
    type=expanded_path,
    help="Path to put the modified ISO.",
)
parser.add_argument(
    "decomp_repo_path",
    type=expanded_path,
    help="Path to the root of the git repository containing the tp decompilation.",
)
parser.add_argument(
    "--map",
    type=expanded_path,
    default=DEFAULT_DOLPHIN_CONFIG_PATH / "Maps",
    help="Folder to place the symbol map for the modified ISO.",
)

args = parser.parse_args()

decomp_build_path = args.decomp_repo_path / "build/GZ2E01"

from gclib.gcm import GCM
from gclib.rarc import RARC
from gclib.yaz0_yay0 import Yaz0
from io import BytesIO
import shutil

gcm = GCM(args.vanilla_iso_path)
gcm.read_entire_disc()

rels_arc = RARC(gcm.read_file_data("files/RELS.arc"))
rels_arc.read()

for rel_name in os.listdir(decomp_build_path):
    if os.path.isfile(decomp_build_path / rel_name):
        continue
    if not os.path.isfile(decomp_build_path / rel_name / (rel_name + ".rel")):
        continue

    decomp_rel_path = decomp_build_path / rel_name / (rel_name + ".rel")
    with open(decomp_rel_path, "rb") as f:
        decomp_rel_data = BytesIO(f.read())

    rel_file_entry = rels_arc.get_file_entry(rel_name.lower() + ".rel")
    if rel_file_entry:
        rel_file_entry.data = Yaz0.compress(decomp_rel_data)
    else:
        gcm_rel_file_path = f"files/rel/Final/Release/{rel_name}.rel"
        assert gcm_rel_file_path in gcm.files_by_path, f"Invalid REL path: {gcm_rel_file_path}"
        gcm.changed_files[gcm_rel_file_path] = decomp_rel_data

rels_arc.save_changes()
gcm.changed_files["files/RELS.arc"] = rels_arc.data

with open(decomp_build_path / "framework.dol", "rb") as f:
    gcm.changed_files["sys/main.dol"] = BytesIO(f.read())

with open(decomp_build_path / "framework.elf.MAP", "rb") as f:
    gcm.changed_files["files/map/Final/Release/frameworkF.map"] = BytesIO(f.read())

shutil.copy(decomp_build_path / "framework.elf.MAP", args.map)

for _ in gcm.export_disc_to_iso_with_changed_files(args.output_iso_path): pass

print("Done")
