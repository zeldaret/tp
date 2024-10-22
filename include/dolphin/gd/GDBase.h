#ifndef GDBASE_H
#define GDBASE_H

#include "dolphin/gx.h"

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

static inline void __GDWrite(u8 data) {
    *__GDCurrentDL->ptr++ = data;
}

static inline void GDSetCurrent(GDLObj* obj) {
    __GDCurrentDL = obj;
}

static inline u32 GDGetGDLObjOffset(GDLObj* obj) {
    return (u32)(obj->ptr - obj->start);
}

static inline u8* GDGetCurrPointer() {
    return __GDCurrentDL->ptr;
}

static inline s32 GDGetCurrOffset() {
    return __GDCurrentDL->ptr - __GDCurrentDL->start;
}

static inline void GDSetCurrOffset(s32 offs) {
    __GDCurrentDL->ptr = __GDCurrentDL->start + offs;
}

static inline void GDAdvCurrOffset(s32 offs) {
    __GDCurrentDL->ptr += offs;
}

static inline void GDOverflowCheck(u32 len) {
    if (__GDCurrentDL->ptr + len > __GDCurrentDL->end) {
        GDOverflowed();
    }
}

static inline void GDWrite_u32(u32 v) {
    GDOverflowCheck(4);
    __GDWrite((v >> 24) & 0xff);
    __GDWrite((v >> 16) & 0xff);
    __GDWrite((v >> 8) & 0xff);
    __GDWrite((v >> 0) & 0xff);
}

static inline void GDWrite_u16(u16 v) {
    GDOverflowCheck(2);
    __GDWrite(v >> 8);
    __GDWrite(v & 0xff);
}

static inline void GDWrite_u8(u8 v) {
    GDOverflowCheck(1);
    __GDWrite(v);
}

static inline void GDWriteCPCmd(u8 addr, u32 v) {
    GDWrite_u8(8);
    GDWrite_u8(addr);
    GDWrite_u32(v);
}

static inline void GDWriteXFCmd(u16 addr, u32 v) {
    GDWrite_u8(0x10);
    GDWrite_u16(0);
    GDWrite_u16(addr);
    GDWrite_u32(v);
}

#ifdef __cplusplus
};
#endif

#endif /* GDBASE_H */
