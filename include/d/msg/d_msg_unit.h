#ifndef D_MSG_D_MSG_UNIT_H
#define D_MSG_D_MSG_UNIT_H

#include "global.h"

// Struct definitions might be wrong
typedef struct bmg_section_t {
    u32 msgType;   // sectionType
    u32 size;    // total size of the section
    u8 data[0];  // section data
} bmg_section_t;

typedef struct bmg_header_t {
    /* 0x00 */ char magic[8];             // = BMG_MAGIC
    /* 0x08 */ u32 size;                  // total size of file
    /* 0x0c */ u32 n_sections;            // number of sections
    /* 0x10 */ u32 encoding;              // text encoding
    /* 0x11 */ u8 unknown[12];            // unknown data
    /* 0x20 */ bmg_section_t section[0];  // first section header
} bmg_header_t;

typedef struct inf1_entry_t {
    u32 dat1EntryOffset;
    u16 startFrame;
    u16 endFrame;
} inf1_entry_t;

typedef struct inf1_section_t {
    /* 0x00 */ u32 msgType;   // sectionType
    /* 0x04 */ u32 size;    // total size of the section
    /* 0x08 */ u16 entryCount;
    /* 0x0A */ u16 entryLength;
    /* 0x0C */ u16 msgArchiveId;
    /* 0x0E */ inf1_entry_t entries[0];
} inf1_section_t;

typedef struct str1_entry_t {
    char str[0];
} str1_entry_t;

typedef struct str1_section_t {
    /* 0x00 */ u32 msgType;   // sectionType
    /* 0x04 */ u32 size;    // total size of the section
    /* 0x08 */ str1_entry_t entries[0];
} str1_section_t;

class dMsgUnit_c {
public:
    /* 80238C94 */ dMsgUnit_c();
    /* 80238CEC */ void setTag(int, int, char*, bool);

    /* 80238CA4 */ virtual ~dMsgUnit_c();
};

extern dMsgUnit_c g_msg_unit;

inline void dMsgUnit_setTag(int param_0, int param_1, char* param_2) {
    g_msg_unit.setTag(param_0, param_1, param_2, true);
}

#endif /* D_MSG_D_MSG_UNIT_H */
