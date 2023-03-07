#ifndef JSUPPORT_H
#define JSUPPORT_H

#include "dolphin/types.h"

template <typename T>
T* JSUConvertOffsetToPtr(const void* ptr, const void* offset) {
    if (offset == NULL) {
        return NULL;
    } else {
        return (T*)((s32)ptr + (s32)offset);
    }
}

inline u8 JSULoByte(u16 in) {
    return in & 0xff;
}

inline u8 JSUHiByte(u16 in) {
    return in >> 8;
}

#endif
