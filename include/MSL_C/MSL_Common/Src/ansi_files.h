#ifndef MSL_COMMON_SRC_ANSI_FILES_H
#define MSL_COMMON_SRC_ANSI_FILES_H

enum __file_kinds {
    /* 0x0 */ CLOSED_FILE, 
    /* 0x1 */ DISK_FILE,
    /* 0x2 */ CONSOLE_FILE,
    /* 0x3 */ UNAVAILABLE_FILE, 
};

enum __file_orientation {
    /* 0x0 */ UNORIENTED,
    /* 0x1 */ CHAR_ORIENTED,
    /* 0x2 */ WIDE_ORIENTED,
};

typedef struct _file_modes {
    unsigned int open_mode : 2;
    unsigned int io_mode : 3;
    unsigned int buffer_mode : 2;
    unsigned int file_kind : 3;
	unsigned int file_orientation : 2;
    unsigned int binary_io : 1;
} file_modes;

typedef struct _file_states {
	unsigned int io_state : 3;
	unsigned int free_buffer : 1;
	unsigned char eof;
	unsigned char error;
} file_states;

typedef struct _FILE {
    /* 0x00 */ unsigned int handle;
    /* 0x04 */ file_modes file_mode;
    /* 0x08 */ file_states file_state;
    /* 0x0C */ unsigned char flag;
    /* 0x0D */ char char_buffer;
    /* 0x0E */ char char_buffer_2;
    /* 0x0F */ char ungetc_buffer[2];
    /* 0x12 */ unsigned short ungetc_wide_buffer[2];
    /* 0x18 */ unsigned int position;
    /* 0x1C */ unsigned char* buffer;
    /* 0x20 */ unsigned int buffer_size;
    /* 0x24 */ unsigned char* buffer_ptr;
    /* 0x28 */ unsigned int buffer_length;
    /* 0x2C */ unsigned int buffer_alignment;
    /* 0x30 */ unsigned int buffer_length2;
    /* 0x34 */ unsigned int buffer_position;
    /* 0x38 */ void* position_fn;
    /* 0x3C */ void* read_fn;
    /* 0x40 */ void* write_fn;
    /* 0x44 */ void* close_fn;
    /* 0x48 */ void* unknown;
    /* 0x4C */ struct _FILE* next_file;
} FILE;

typedef struct _files {
    FILE stdin;
    FILE stdout;
    FILE stderr;
    FILE empty;
} files;

extern files __files;

#endif /* MSL_COMMON_SRC_ANSI_FILES_H */
