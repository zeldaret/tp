#!/usr/bin/env python3

# this command optionally takes -i and -o for input arc files and output enum files, and --debug which prints out the file it's currently working on.
# Iterates over all files in the orig directory, outputs the enum containing IDs and indices for each files contained in the arc.
# Outputs files to the ./assets/VERSION/ folder. Its path will match the path in the ./orig/files directory.
# Currently does not iterate over files on a disk image, all arc files must be present in a directory such that os.walk can see them

from binary_funcs import read_bytes_until_null, read_u32, read_u16, read_u8, skip_bytes
import subprocess
from os import walk, makedirs
from pathlib import Path
from typing import NamedTuple, DefaultDict
import re
from sys import argv
import argparse

debug_print = lambda *args, **kwargs : None

DTK_PATH = str(Path("./build/tools/dtk.exe"))
OUT_PATH = "assets"
INDENT = " " * 4
ADD_EXT_TO_ENUM = False
SKIP_STAGE_ARCS = True
SKIP_DEMO_ARCS = True
SKIP_FILES_WITH_AT_SIGN = True
# get when this file was modified last, used to detect if we should re-extract enums
THIS_MTIME = Path(__file__).stat().st_mtime

class ArcFile(NamedTuple):
    file_name:str
    index:int
    id:int

class ArcNode(NamedTuple):
    node_type:bytes
    name:str
    inds:range

class ArcEnumValue(NamedTuple):
    enum_value_name:str
    value:int

class ArcEnum(NamedTuple):
    enum_name:str
    values:list[ArcEnumValue]

class JointParsedEnums(NamedTuple):
    enums:list[ArcEnum]
    
def ensure_dir(path:str)->None:
    makedirs(path, exist_ok=True)

def bin_make_str(s:bytes)->str:
    s = s.replace(b"\x82\x98", b"x")
    try:
        s = s.decode("ascii")
    except Exception as e:
        raise AssertionError(f"{e}: {s}")
    return s

def sanitize_string(s:str)->str:
    return re.sub(r"[\s@:\.,\-<>*%\"!&()|\+$]", "_", s)

def read_str(binf)->str:
    return bin_make_str(read_bytes_until_null(binf))

def make_enum(e:ArcEnum):
    out = []
    out.append(f"enum {e.enum_name} {{")
    for v in e.values:
        out.append(f"{INDENT}{v.enum_value_name}=0x{v.value:X},")
    out.append("};")

    out_enum = "\n".join(out)

    return out_enum

def parse_bmd(src_path:Path):
    global ADD_EXT_TO_ENUM
    with src_path.open("rb") as binf:
        header_magic = binf.read(4)
        known_J3D_magic = b"J3D2"
        assert(header_magic == b"J3D2"), f"Attempted to parse {src_path} as bmd/bdl, but J3D header type doesn't match {known_J3D_magic} : {header_magic}"
        bmd_magic = binf.read(4)
        known_bmd_magics = (b"bmd3", b"bmd2", b"bdl4")
        assert(bmd_magic in known_bmd_magics),  f"Attempted to parse {src_path} as bmd/bdl, but bmd/bdl header type doesn't match any of {known_bmd_magics} : {bmd_magic}"
        skip_bytes(binf, 4)
        chunk_count = read_u32(binf)
        binf.seek(0x20)
        for _ in range(chunk_count):
            chunk_begin = binf.tell()
            name = bin_make_str(binf.read(4))
            size = read_u32(binf)
            next_chunk = chunk_begin + size
            if name == "JNT1":
                skip_bytes(binf, 12)
                name_table = read_u32(binf) + chunk_begin
                binf.seek(name_table)
                num_strings = read_u16(binf)
                found_enums = []
                if ADD_EXT_TO_ENUM:
                    out_enum_name = sanitize_string(src_path.name.replace(".", "_")).upper() + "_JNT"
                else:
                    out_enum_name = sanitize_string(src_path.name.split(".")[0]).upper() + "_JNT"

                for i in range(num_strings):
                    binf.seek(name_table + 6 + i * 4)
                    string_offset = read_u16(binf)
                    binf.seek(name_table + string_offset)

                    joint_name = f"{out_enum_name}_{read_str(binf).upper()}_e"
                    found_enums.append(ArcEnumValue(joint_name, i))
                    # print(joint_name)
                return ArcEnum(out_enum_name, found_enums)
            binf.seek(next_chunk)
    return None

def extract_joint_enums(src_path:Path):
    if ((SKIP_FILES_WITH_AT_SIGN and "@" in str(src_path)) or 
        (SKIP_STAGE_ARCS and "Stage" in src_path.parts) or
        (SKIP_DEMO_ARCS and any(x.startswith("Demo") for x in src_path.parts))):
        return JointParsedEnums([])

    out_jnt_enums:list[ArcEnum] = []
    internal_files = subprocess.run([DTK_PATH, "vfs", "ls", "-r", f"{src_path}:"], stdout=subprocess.PIPE, text=True).stdout
    output_folder = Path(str(src_path).replace(".", "__"))
    for line in internal_files.split("\n"):
        parts = line.split(" | ")
        if len(parts) != 3: continue
    
        internal_file = parts[1].strip(" ")
        internal_file_parts = internal_file.split(".")
        if len(internal_file_parts) < 2: continue

        extension = internal_file_parts[1]
        if (extension not in ("bmd", "bdl")): continue

        internal_file_path = output_folder / internal_file

        # extract file from archive if either
        # 1. output file doesn't exist
        # 2. the archive file is newer than the output file (modded src)
        if (not internal_file_path.exists() or
            src_path.stat().st_mtime > internal_file_path.stat().st_mode):
            ensure_dir(internal_file_path.parent)
            subprocess.run([DTK_PATH, "vfs", "cp", f"{src_path}:{internal_file}", internal_file_path], stdout=subprocess.PIPE)
        
        out_enums = parse_bmd(internal_file_path)

        out_jnt_enums.append(out_enums)
    
    return JointParsedEnums(out_jnt_enums)

def convert_binary_to_resource_enum(src_path: Path, dest_path: Path) -> None:    
    joint_enums = extract_joint_enums(src_path)

    with src_path.open("rb") as binf:
        opening_bytes = binf.read(4)
        assert(opening_bytes == b"RARC"), f"Not a rarc file: starts with bytes {opening_bytes}"
        skip_bytes(binf, 4)
        data_header_offset = read_u32(binf)
        binf.seek(data_header_offset)
        node_count = read_u32(binf)
        node_offset = read_u32(binf) + data_header_offset
        total_num_file_entries = read_u32(binf)
        file_entries_list_offset = read_u32(binf) + data_header_offset
        skip_bytes(binf, 4)
        string_list_offset = read_u32(binf) + data_header_offset
        skip_bytes(binf, 2)
        sync_flag = read_u8(binf)
        
        found_files:list[ArcFile] = []
        all_file_names = []
        for entry_index in range(total_num_file_entries):
            binf.seek(file_entries_list_offset + entry_index * 0x14)
            file_id = read_u16(binf)
            skip_bytes(binf, 2)
            type_and_name_offset = read_u32(binf)
            entry_type = type_and_name_offset >> 24
            name_offset = type_and_name_offset & 0x00FFFFFF
            binf.seek(string_list_offset + name_offset)
            file_name = read_str(binf)
            if entry_type & 1: # check to make sure its a file
                assert(not sync_flag or file_id == entry_index), \
                    f"Sync flag was set, but ID {file_id} does not match Index {entry_index} for file {file_name}"
                found_files.append(ArcFile(file_name, entry_index, file_id))
                all_file_names.append(file_name)

        index_file_lookup = {x.index : x for x in found_files}
        
        found_nodes:list[tuple[ArcNode, list[ArcFile]]] = []

        for node_index in range(node_count):
            binf.seek(node_offset + node_index * 0x10)
            this_node_type = bin_make_str(binf.read(4))
            this_node_name_offs = read_u32(binf)
            skip_bytes(binf, 2)
            this_node_index_count = read_u16(binf)
            this_node_first_index = read_u32(binf)
            this_node_inds = range(this_node_first_index, this_node_first_index + this_node_index_count)
            binf.seek(string_list_offset + this_node_name_offs)
            this_node_name = read_str(binf)
            this_node = ArcNode(this_node_type, this_node_name, this_node_inds)
            found_nodes.append((this_node, [index_file_lookup.get(x) for x in this_node.inds if x in index_file_lookup]))
        
    out_lines:list[str] = []
    file_stem = src_path.name.split(".")[0]
    file_stem_upper = sanitize_string(file_stem.upper())

    out_lines.append(f"#ifndef RES_{file_stem_upper}_H")
    out_lines.append(f"#define RES_{file_stem_upper}_H\n")

    out_ids:list[str] = []
    out_idxs:list[str] = []
    
    appearance_count = DefaultDict(int)

    for node, files in found_nodes:
        if len(files) == 0: continue
        file_type_break = f"{INDENT}/* {node.node_type} */"
        out_ids.append(file_type_break)
        out_idxs.append(file_type_break)
        for file in files:
            parts = file.file_name.split(".")
            santitized_file_name = sanitize_string(parts[0].upper()) # Sanitize identifier

            ext = ""
            if len(parts) > 1:
                ext = sanitize_string(parts[1].upper())

            file_str = f"{file_stem_upper}_{ext}_{santitized_file_name}"

            idx = f"dRes_INDEX_{file_str}"
            seen_count = appearance_count[idx]
            appearance_count[idx] = seen_count + 1
            if seen_count > 0:
                idx += f"_{seen_count}"

            id  = f"dRes_ID_{file_str}"
            seen_count = appearance_count[id]
            appearance_count[id] = seen_count + 1
            if seen_count > 0:
                id += f"_{seen_count}"

            # tiny optimization to do less string formatting
            out_idxs.append(f"{INDENT}{idx}_e=0x{file.index:X},")
            out_ids.append(f"{INDENT}{id}_e=0x{file.id:X},")
    
    out_lines.append(f"enum dRes_INDEX_{file_stem_upper} {{")
    out_lines.extend(out_idxs)
    out_lines.append("};\n")

    out_lines.append(f"enum dRes_ID_{file_stem_upper} {{")
    out_lines.extend(out_ids)
    out_lines.append("};\n")

    for joint_enum in joint_enums.enums:
        out_lines.append(make_enum(joint_enum) + "\n")

    out_lines.append(f"#endif /* !RES_{file_stem_upper}_H */")

    out = "\n".join(out_lines)
    ensure_dir(dest_path.parent)
    with dest_path.open("w") as f:
        f.write(out)

def decompress_file(input_file:Path, output_file:Path) -> None:
    # use pathlib to allow for unix+windows paths
    subprocess.run([DTK_PATH, "yaz0", "decompress", input_file, "-o", output_file])

def extract_enum_from_file(src_path:Path, dst_path:Path) -> None:
    assert(src_path.exists())

    # we can skip extracting this file if all of the following are true
    # 1. The output file exists
    # 2. The src file is older than the output file (not modded)
    # 3. This python file is older than the output file (no updates to how we extract enums)
    if (dst_path.exists() and 
        src_path.stat().st_mtime < dst_path.stat().st_mtime and
        THIS_MTIME < dst_path.stat().st_mtime):
        return
    
    # check the first bytes of the file
    with src_path.open("rb") as f:
        starting_bytes = f.read(4)
    
    if   starting_bytes == b"Yaz0": is_compressed = True
    elif starting_bytes == b"RARC": is_compressed = False
    # not an arc file although it has the .arc extensions
    else: return
    
    if is_compressed:
        # if our file is compressed, then we should decompress it
        # we only need to decompress if any of these are true
        # 1. We've never decompressed this file before
        # 2. The src file is newer than the output file (modded src)
        new_src_path = src_path.with_suffix(src_path.suffix + ".decompressed")
        if (not new_src_path.exists() or
            new_src_path.stat().st_mtime < src_path.stat().st_mtime):
            decompress_file(src_path, new_src_path)
        src_path = new_src_path

    convert_binary_to_resource_enum(src_path, dst_path)

def main() -> None:
    args = argparse.ArgumentParser()
    args.add_argument("--debug", action="store_true", help="Prints each file as it is converted")
    group = args.add_argument_group("IO", description="optional")
    group.add_argument("-i", "--input", help="input arc file to convert")
    group.add_argument("-o", "--output", help="output enum file path")

    args = args.parse_args()
    global debug_print 
    if args.debug:
        debug_print = print

    if bool(args.input) ^ bool(args.output):
        print("If input or output is provided, both must be present")
        exit(1)

    if bool(args.input) and bool(args.output):
        extract_enum_from_file(Path(args.input), Path(args.output))
        exit()

    for dir, dirnames, filenames in walk("./orig/"):
        dirpath = Path(dir)
        if "res" not in dirpath.parts: continue

        for file in filenames:
            file_path = dirpath / file
            if file_path.suffix == ".arc":
                # the version should be the second part of the path
                # ./orig/ShieldD/...
                version = file_path.parts[1]
                # find the res folder, truncate the path to be the part after the res folder
                out_path = Path("/".join(file_path.parts[file_path.parts.index("res") + 1:]))
                # set the output path to be the designated output + the version + the file's heirarchy
                out_path = OUT_PATH / (version / ("res" / out_path))
                # we're going to output to a header file
                out_path = out_path.with_name(out_path.name).with_suffix(".h")
                debug_print(out_path)

                if (SKIP_STAGE_ARCS and "Stage" in out_path.parts):
                    continue

                try:
                    extract_enum_from_file(file_path, out_path)
                except AssertionError as e:
                    print(f"ERROR: {file_path} -> {out_path}\n{e}\n")

if __name__ == "__main__":
    main()
