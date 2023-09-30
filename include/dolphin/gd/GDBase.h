#ifndef GDBASE_H
#define GDBASE_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct GDLObj {
    /* 0x0 */ u8* start;
    /* 0x4 */ u32 length;
    /* 0x8 */ u8* ptr;
    /* 0xC */ u8* end;
} GDLObj;  // Size: 0x10

extern GDLObj* __GDCurrentDL;

typedef void (*GDOverflowCallback)(void);

void GDInitGDLObj(GDLObj*, u8*, u32);
void GDFlushCurrToMem();
void GDPadCurr32();
void GDOverflowed(void);

inline void __GDWrite(u8 data) {
    *__GDCurrentDL->ptr++ = data;
}

inline void GDSetCurrent(GDLObj* obj) {
    __GDCurrentDL = obj;
}

inline u32 GDGetGDLObjOffset(GDLObj* obj) {
    return (u32)(obj->ptr - obj->start);
}

inline u8* GDGetCurrPointer() {
    return __GDCurrentDL->ptr;
}

inline s32 GDGetCurrOffset() {
    return __GDCurrentDL->ptr - __GDCurrentDL->start;
}

inline void GDSetCurrOffset(s32 offs) {
    __GDCurrentDL->ptr = __GDCurrentDL->start + offs;
}

inline void GDAdvCurrOffset(s32 offs) {
    __GDCurrentDL->ptr += offs;
}

inline void GDOverflowCheck(u32 len) {
    if (__GDCurrentDL->ptr + len > __GDCurrentDL->end) {
        GDOverflowed();
    }
}

inline void GDWrite_u32(u32 v) {
    GDOverflowCheck(4);
    __GDWrite((v >> 24) & 0xff);
    __GDWrite((v >> 16) & 0xff);
    __GDWrite((v >> 8) & 0xff);
    __GDWrite((v >> 0) & 0xff);
}

inline void GDWrite_u16(u16 v) {
    GDOverflowCheck(2);
    __GDWrite(v >> 8);
    __GDWrite(v & 0xff);
}

inline void GDWrite_u8(u8 v) {
    GDOverflowCheck(1);
    __GDWrite(v);
}

#ifdef __cplusplus
};
#endif

#endif /* GDBASE_H */
