#ifndef UTILS_COMMON_CIRCLEBUFFER_H
#define UTILS_COMMON_CIRCLEBUFFER_H

#include "dolphin/types.h"

typedef struct CircleBuffer {
    u8* field_0x0;
    u8* field_0x4;
    u8* field_0x8;
    u32 field_0xc;
    s32 mBytesToRead;
    u32 mBytesToWrite;
    u32 mCriticalSection;
} CircleBuffer;

s32 CircleBufferReadBytes(CircleBuffer*, u8*, u32);
s32 CircleBufferWriteBytes(CircleBuffer*, u8*, u32);
void CircleBufferInitialize(CircleBuffer*, u8*, s32);
u32 CBGetBytesAvailableForRead(CircleBuffer*);

#endif /* UTILS_COMMON_CIRCLEBUFFER_H */
