#ifndef __JKRCOMPREESION_H__
#define __JKRCOMPREESION_H__

#include "JSystem/JKernel/SArc.h"
#include "dolphin/types.h"

#define READ_BIG_ENDIAN_U32(P)                                                                     \
    (((u32)(((u8*)(P))[0]) << 0x18) | ((u32)(((u8*)(P))[1]) << 0x10) |                             \
     ((u32)(((u8*)(P))[2]) << 8) | ((u32)(((u8*)(P))[3])))

#define READ_BIG_ENDIAN_U16(P) (((u32)(((u8*)(P))[0]) << 8) | ((u32)(((u8*)(P))[1])))

typedef int JKRCompression;
#define COMPRESSION_NONE 0
#define COMPRESSION_YAY0 1
#define COMPRESSION_YAZ0 2
#define COMPRESSION_ASR 3

inline u32 JKRDecompExpandSize(SArcHeader* header) {
    u8* fileLength = (u8*)&header->file_length;
    return READ_BIG_ENDIAN_U32(fileLength);
}

#endif