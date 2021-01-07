#ifndef __JKRCOMPREESION_H__
#define __JKRCOMPREESION_H__

#include "dolphin/types.h"

#define READ_BIG_ENDIAN_U32(P)                                                                     \
    (((u32)(((u8*)(P))[0]) << 0x18) | ((u32)(((u8*)(P))[1]) << 0x10) |                             \
     ((u32)(((u8*)(P))[2]) << 8) | ((u32)(((u8*)(P))[3])))

#define READ_BIG_ENDIAN_U16(P) (((u32)(((u8*)(P))[0]) << 8) | ((u32)(((u8*)(P))[1])))

enum JKRCompression {
    COMPRESSION_NONE = 0,
    COMPRESSION_YAY0 = 1,
    COMPRESSION_YAZ0 = 2,
    COMPRESSION_ASR = 3,
};

#endif