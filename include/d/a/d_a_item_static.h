#ifndef D_A_D_A_ITEM_STATIC_H
#define D_A_D_A_ITEM_STATIC_H

#include "SSystem/SComponent/c_lib.h"
#include "dolphin/types.h"

class daItem_c {
public:
    u32 startCtrl();
    u32 startControl();
    u32 endControl();

    void setFlag(u8 pFlag) { cLib_onBit(unk2376, pFlag); }

private:
    u8 unk0[0x948];
    u8 unk2376;
    u8 unk2377;
    u8 unk2378;
};

#endif /* D_A_D_A_ITEM_STATIC_H */
