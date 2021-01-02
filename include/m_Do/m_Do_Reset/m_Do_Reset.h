#ifndef __M_DO_RESET_H__
#define __M_DO_RESET_H__

#include "JSystem/JUtility/JUTXfb/JUTXfb.h"
#include "dolphin/types.h"

extern "C" {
// void my_OSCancelAlarmAll(void);
}

struct ResetData {
    s32 field_0x0;
    u32 field_0x4;
    s32 field_0x8;
    s32 pad_index;
    u8 field_0x10;
    u8 field_0x11;
    u8 field_0x12;
    u8 field_0x13;
    u8 field_0x14;
    u8 field_0x15;
    u8 field_0x16;
    u8 field_0x17;
};

struct mDoRst {
    ResetData* getResetData();
    static void reset(s32 p1, u32 p2, s32 p3);
    static void resetCallBack(int p1, void* p2);
};

#endif