#ifndef GDBASE_H
#define GDBASE_H

#include "dolphin/types.h"

struct GDLObj {
    /* 0x0 */ u8* start;
    /* 0x4 */ u32 length;
    /* 0x8 */ u8* ptr;
    /* 0xC */ u8* end;
};  // Size: 0x10

extern GDLObj* __GDCurrentDL;

inline void GDSetCurrent(GDLObj* obj) {
    __GDCurrentDL = obj;
}

inline u32 GDGetGDLObjOffset(GDLObj* obj) {
    return (u32)(obj->ptr - obj->start);
}

extern "C" {

void GDInitGDLObj(GDLObj*, u8*, u32);
void GDFlushCurrToMem();
void GDPadCurr32();
}

#endif /* GDBASE_H */
