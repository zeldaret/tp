#ifndef __JKRCOMPREESION_H__
#define __JKRCOMPREESION_H__

#include "JSystem/JKernel/SArc.h"
#include "dolphin/types.h"

inline u32 read_big_endian_u32(void* ptr) {
    u8* uptr = (u8*)ptr;
    return ((u32)uptr[0] << 0x18) | ((u32)uptr[1] << 0x10) | ((u32)uptr[2] << 8) | (u32)uptr[3];
}

inline u16 read_big_endian_u16(void* ptr) {
    u8* uptr = (u8*)ptr;
    return ((u16)uptr[0] << 8) | ((u16)uptr[1]);
}

typedef int JKRCompression;
const JKRCompression COMPRESSION_NONE = 0;
const JKRCompression COMPRESSION_YAY0 = 1;
const JKRCompression COMPRESSION_YAZ0 = 2;
const JKRCompression COMPRESSION_ASR = 3;

inline u32 JKRDecompExpandSize(SArcHeader* header) {
    u8* fileLength = (u8*)&header->file_length;
    return read_big_endian_u32(fileLength);
}

#endif