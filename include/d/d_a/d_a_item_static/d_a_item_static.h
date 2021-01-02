#include "dolphin/types.h"

class daItem_c {
public:
    u32 startCtrl(void);
    u32 startControl(void);
    u32 endControl(void);

private:
    u8 unk0[0x948];
    u8 unk2376;
    u8 unk2377;
    u8 unk2378;
};