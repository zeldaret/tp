#ifndef __SARC_H__
#define __SARC_H__

#include "dolphin/types.h"

struct SArcHeader {
    u32 signature;
    u32 file_length;
    u32 header_length;
    u32 file_data_offset;
    u32 file_data_length;
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
} __attribute__((aligned(32)));

struct SArcDataInfo {
    u32 num_nodes;
    u32 node_offset;
    u32 num_file_entries;
    u32 file_entry_offset;
    u32 string_table_length;
    u32 string_table_offset;
    u16 next_free_file_id;
    bool sync_file_ids_and_indices;
    u8 field_1b[5];
};

struct SDirEntry {
    union {
        u32 type;
        struct {
            u8 flags;
            u8 padding;
            u16 id;
        } other;
    };

    const char* name;
    u16 field_0x8;
    u16 num_entries;
    s32 first_file_index;
};

struct SDIFileEntry {
    u16 file_id;
    u16 name_hash;
    u32 type_flags_and_name_offset;
    u32 data_offset;
    u32 data_size;
    void* data;

    u32 getNameOffset() const { return type_flags_and_name_offset & 0xFFFFFF; }
    u16 getNameHash() const { return name_hash; }
    u32 getFlags() const { return type_flags_and_name_offset >> 24; }
    u32 getAttr() const { return getFlags(); }
    u16 getFileID() const { return file_id; }
    bool isDirectory() const { return (getFlags() & 0x02) != 0; }
    bool isUnknownFlag1() const { return (getFlags() & 0x01) != 0; }
    bool isCompressed() const { return (getFlags() & 0x04) != 0; }
    bool isYAZ0Compressed() const { return (getFlags() & 0x80) != 0; }
};

#endif