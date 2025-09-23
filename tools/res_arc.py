#!/usr/bin/env python3

from argparse import ArgumentParser

from binary_funcs import read_bytes_until_null, read_u32, read_u16, read_u8, skip_bytes
import subprocess
from os import walk, makedirs
from os.path import exists, getmtime
from pathlib import Path
from typing import NamedTuple, DefaultDict
import re

class ArcFile(NamedTuple):
    file_name:str
    index:int
    id:int

class ArcNode(NamedTuple):
    node_type:bytes
    name:str
    inds:range

def ensure_dir(path:str):
    makedirs(path, exist_ok=True)

def bin_make_str(s:str):
    s = s.replace(b"\x82\x98", b"x")
    try:
        s = s.decode("ascii")
    except Exception as e:
        raise AssertionError(f"{e}: {s}")
    return s

def read_str(binf):
    return bin_make_str(read_bytes_until_null(binf))

def convert_binary_to_resource_enum(src_path: str, dest_path: str) -> None:    
    with open(src_path, "rb") as binf:
        opening_bytes = binf.read(4)
        assert(opening_bytes == b"RARC"), f"Not a rarc file {opening_bytes}"
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
    file_stem = Path(src_path).name.split(".")[0]
    re_sanitize = r"[\s@:\.,\-<>*%\"!&()|\+$]"
    file_stem_upper = re.sub(re_sanitize, "_", file_stem.upper())
    indent =  "    "

    out_lines.append(f"#ifndef RES_{file_stem_upper}_H")
    out_lines.append(f"#define RES_{file_stem_upper}_H\n")

    out_ids:list[str] = []
    out_idxs:list[str] = []
    
    appearance_count = DefaultDict(int)

    for node, files in found_nodes:
        if len(files) == 0: continue
        file_type_break = f"{indent}/* {node.node_type} */"
        out_ids.append(file_type_break)
        out_idxs.append(file_type_break)
        for file in files:
            parts = file.file_name.split(".")
            santitized_file_name = re.sub(re_sanitize, "_", parts[0].upper()) # Sanitize identifier
                
            seen_count = appearance_count[santitized_file_name]
            appearance_count[santitized_file_name] += 1

            ext = ""
            if len(parts) > 1:
                ext = re.sub(re_sanitize, "_", parts[1].upper())

            duplicate_tag = "_"
            if seen_count > 0:
                duplicate_tag = f"_{seen_count}_"

            # tiny optimization to do less string formatting
            begin_part = f"{indent}dRes_"
            mid_part = f"_{file_stem_upper}_{ext}_{santitized_file_name}{duplicate_tag}e=0x"
            out_idxs.append(f"{begin_part}INDEX{mid_part}{file.index:X},")
            out_ids.append(f"{begin_part}ID{mid_part}{file.id:X},")
    
    out_lines.append(f"enum dRes_INDEX_{file_stem_upper} {{")
    out_lines.extend(out_idxs)
    out_lines.append("};\n")

    out_lines.append(f"enum dRes_ID_{file_stem_upper} {{")
    out_lines.extend(out_ids)
    out_lines.append("};\n")

    out_lines.append(f"#endif /* !RES_{file_stem_upper}_H */")

    out = "\n".join(out_lines)
    ensure_dir(Path(dest_path).parent)
    with open(dest_path, "w") as f:
        f.write(out)
    

def decompress_file(input_file:str, output_file:str) -> None:
    # TODO: fix this path to be more flexible

    # use pathlib to allow for unix+windows paths
    dtk_path = str(Path("./build/tools/dtk.exe"))

    subprocess.run([dtk_path, "yaz0", "decompress", input_file, "-o", output_file])

def extract_enum_from_file(src_path:str, dst_path:str) -> None:
    assert(exists(src_path))

    # if we have already made this file, skip
    # check if the src_file is newer than the output file, means modded arc, worth updating
    if (exists(dst_path)) and (getmtime(dst_path) > getmtime(src_path)):
        return

    with open(src_path, "rb") as f:
        is_compressed = (f.read(4) == b"Yaz0")
    
    if is_compressed:
        # if our file is compressed, then we should decompress it
        # but skip decompressing if it exists
        # check for modded src tho
        new_src_path = src_path + ".decompressed"
        if (not exists(new_src_path)) or (getmtime(new_src_path) < getmtime(src_path)):
            decompress_file(src_path, new_src_path)
        src_path = new_src_path

    convert_binary_to_resource_enum(src_path, dst_path)

def main() -> None:
    for dirpath, dirnames, filenames in walk("./orig/"):
        if "res" not in Path(dirpath).parts: continue

        for file in filenames:
            file_path = Path(dirpath) / file
            if file_path.suffix == ".arc":
                version = file_path.parts[1]
                out_path = Path("/".join(file_path.parts[file_path.parts.index("res") + 1:]))
                out_path = "res" / (version / out_path)
                out_path = out_path.with_name("res_" + out_path.name).with_suffix(".h")
                try:
                    extract_enum_from_file(str(file_path), str(out_path))
                except AssertionError as e:
                    print(f"{file_path} -> {out_path}\n{e}\n")

if __name__ == "__main__":
    main()
