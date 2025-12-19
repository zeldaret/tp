#ifndef M_DO_EXT2_H
#define M_DO_EXT2_H

#include "JSystem/JKernel/JKRHeap.h"

class FixedMemoryCheck {
public:
    FixedMemoryCheck(u32*, u32, JKRHeap*);

    void alloc();
    void save();
    void check();
    void diff();

    static FixedMemoryCheck* easyCreate(void* param_1, s32 param_2) { return easyCreate(param_1, u32(param_2)); }
    static FixedMemoryCheck* easyCreate(void*, u32);
    static void checkAll();
    static void diffAll();
    static void saveAll();

    /* 0x00 */ u32* field_0x00;
    /* 0x04 */ u32 field_0x04;
    /* 0x08 */ u32* field_0x08;
    /* 0x0C */ JKRHeap* mpHeap;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ u8 field_0x14;
    /* 0x18 */ FixedMemoryCheck* field_0x18;
};

#endif
