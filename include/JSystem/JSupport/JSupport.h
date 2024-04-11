#ifndef JSUPPORT_H
#define JSUPPORT_H

/**
* @ingroup jsystem-jsupport
* 
*/
template <typename T>
T* JSUConvertOffsetToPtr(const void* ptr, u32 offset) {
    if (offset == 0) {
        return NULL;
    } else {
        return (T*)((s32)ptr + (s32)offset);
    }
}

/**
* @ingroup jsystem-jsupport
* 
*/
template <typename T>
T* JSUConvertOffsetToPtr(const void* ptr, const void* offset) {
    if (offset == NULL) {
        return NULL;
    } else {
        return (T*)((s32)ptr + (s32)offset);
    }
}

inline u8 JSULoNibble(u8 param_0) { return param_0 & 0x0f; }
inline u8 JSUHiNibble(u8 param_0) {return param_0 >> 4; }

inline u8 JSULoByte(u16 in) {
    return in & 0xff;
}

inline u8 JSUHiByte(u16 in) {
    return in >> 8;
}

inline u16 JSULoHalf(u32 param_0) {return param_0; }

#endif
