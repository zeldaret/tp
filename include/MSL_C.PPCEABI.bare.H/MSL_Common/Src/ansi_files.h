#ifndef MSL_COMMON_SRC_ANSI_FILES_H
#define MSL_COMMON_SRC_ANSI_FILES_H

#include "dolphin/types.h"

struct FILE {
    /* 0x00 */ u32 handle;
    /* 0x04 */ u32 file_mode;
    /* 0x08 */ u32 file_state;
    /* 0x0C */ u8 flag;
    /* 0x0D */ char char_buffer;
    /* 0x0E */ char char_buffer_2;
    /* 0x0F */ char ungetc_buffer[2];
    /* 0x12 */ u16 ungetc_wide_buffer[2];
    /* 0x18 */ u32 position;
    /* 0x1C */ u8* buffer;
    /* 0x20 */ u32 buffer_size;
    /* 0x24 */ u8* buffer_ptr;
    /* 0x28 */ u32 buffer_length;
    /* 0x2C */ u32 buffer_alignment;
    /* 0x30 */ u32 buffer_length2;
    /* 0x34 */ u32 buffer_position;
    /* 0x38 */ void* position_fn;
    /* 0x3C */ void* read_fn;
    /* 0x40 */ void* write_fn;
    /* 0x44 */ void* close_fn;
    /* 0x48 */ void* unknown;
    /* 0x4C */ struct FILE* next_file;
};

struct files {
    FILE stdin;
    FILE stdout;
    FILE stderr;
    FILE empty;
};

extern files __files;

#endif /* MSL_COMMON_SRC_ANSI_FILES_H */
