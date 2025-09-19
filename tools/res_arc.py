#!/usr/bin/env python3

from argparse import ArgumentParser

from binary_funcs import read_bytes_until_null, read_u32, read_u16, read_u8, skip_bytes

import subprocess
from os.path import exists, getmtime
from pathlib import Path
from typing import NamedTuple

class ArcFile(NamedTuple):
    file_name:str
    index:int
    id:int

class ArcNode(NamedTuple):
    node_type:bytes
    name:str
    inds:range

def convert_binary_to_resource_enum(src_path: str, dest_path: str) -> None:    
    with open(src_path, "rb") as binf:
        assert(binf.read(4) == b"RARC"), "Not a rarc file"
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
        
        for entry_index in range(total_num_file_entries):
            binf.seek(file_entries_list_offset + entry_index * 0x14)
            file_id = read_u16(binf)
            skip_bytes(binf, 2)
            type_and_name_offset = read_u32(binf)
            entry_type = type_and_name_offset >> 24
            name_offset = type_and_name_offset & 0x00FFFFFF
            binf.seek(string_list_offset + name_offset)
            file_name = read_bytes_until_null(binf).decode("ascii")
            if entry_type & 1: # check to make sure its a file
                assert(not sync_flag or file_id == entry_index), \
                    f"Sync flag was set, but ID {file_id} does not match Index {entry_index} for file {file_name}"
                found_files.append(ArcFile(file_name, entry_index, file_id))
        assert(len(set([x.file_name for x in found_files])) == len(found_files)), "duplicate file names found, unsupported"

        index_file_lookup = {x.index : x for x in found_files}
        
        found_nodes:list[tuple[ArcNode, list[ArcFile]]] = []

        for node_index in range(node_count):
            binf.seek(node_offset + node_index * 0x10)
            this_node_type = binf.read(4).decode("ascii").strip(" ")
            this_node_name_offs = read_u32(binf)
            skip_bytes(binf, 2)
            this_node_index_count = read_u16(binf)
            this_node_first_index = read_u32(binf)
            this_node_inds = range(this_node_first_index, this_node_first_index + this_node_index_count)
            binf.seek(string_list_offset + this_node_name_offs)
            this_node_name = read_bytes_until_null(binf).decode("ascii")
            this_node = ArcNode(this_node_type, this_node_name, this_node_inds)
            found_nodes.append((this_node, [index_file_lookup.get(x) for x in this_node.inds if x in index_file_lookup]))
        
    out_lines:list[str] = []
    file_stem = Path(src_path).name.split(".")[0]
    file_stem_upper = file_stem.upper()
    indent =  "    "

    out_lines.append(f"#ifndef RES_{file_stem_upper}_H")
    out_lines.append(f"#define RES_{file_stem_upper}_H\n")

    out_ids:list[str] = []
    out_idxs:list[str] = []

    for node, files in found_nodes:
        if len(files) == 0: continue
        file_type_break = f"{indent}/* {node.node_type} */"
        out_ids.append(file_type_break)
        out_idxs.append(file_type_break)
        for file in files:
            parts = file.file_name.split(".")
            santitized_file_name = parts[0].upper()
            ext = parts[1].upper()
            # tiny optimization to do less string formatting
            begin_part = f"{indent}dRes_"
            mid_part = f"_{file_stem_upper}_{ext}_{santitized_file_name}_e=0x"
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

    with open(dest_path, "w") as f:
        f.write(out)
    

def decompress_file(input_file:str, output_file:str) -> None:
    # TODO: fix this path to be more flexible

    # use pathlib to allow for unix+windows paths
    dtk_path = str(Path("./build/tools/dtk.exe"))

    subprocess.run([dtk_path, "yaz0", "decompress", input_file, "-o", output_file])

def main() -> None:
    parser = ArgumentParser(
        description="TODO"
    )
    parser.add_argument("src_path", type=str, help="Binary source file path")
    parser.add_argument("dest_path", type=str, help="Destination C include file path")
    args = parser.parse_args()

    src_path = args.src_path
    dst_path = args.dest_path

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


if __name__ == "__main__":
    main()
