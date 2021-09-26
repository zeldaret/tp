#ifndef OSLINK_H
#define OSLINK_H

#include "dolphin/types.h"

struct OSModuleInfo {
    u32 id;             
    OSModuleInfo* next; 
    OSModuleInfo* prev;
    u32 num_sections;        
    u32 section_info_offset; 
    u32 name_offset;          
    u32 name_size;            
    u32 version;             
    u32 bss_size;
    u32 rel_offset;
    u32 imp_offset;
    u32 imp_size;
    u8 prolog_section;
    u8 epilog_section;
    u8 unresolved_section;
    u8 bss_section;
    u32 prolog;
    u32 epilog;
    u32 unresolved;
    u32 align;
    u32 bss_align;
    u32 fix_size; 
};

struct OSSectionInfo {
    u32 offset;
    u32 size;
};

#endif /* OSLINK_H */
