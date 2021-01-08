#ifndef __D_BG_S_H_
#define __D_BG_S_H_

#include "d/d_bg/d_bg_w/d_bg_w_base/d_bg_w_base.h"
#include "global.h"
#pragma pack(push, 1)
class cBgS_ChkElm {
    /* 0x00 */ dBgW_Base* bgw_base_pointer;
    /* 0x04 */ u8 used;
    /* 0x05 */ u8 padding[3];
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ void* actor_pointer;
    /* 0x10 */ u32 field_0x10;
};
#pragma pack(pop)

#pragma pack(push, 1)
class cBgS {
    /* 0x0000 */ cBgS_ChkElm cbgs_elements[256];
};
#pragma pack(pop)

class dBgS_HIO {
    /* 0x00 */ u8 vtable[4];
    /* 0x04 */ u8 field_0x4[2];
    /* 0x06 */ u16 field_0x6;
    /* 0x08 */ u16 field_0x8;
    /* 0x0A */ u8 field_0xa[2];
    /* 0x0C */ cXyz field_0xc;
    /* 0x18 */ cXyz field_0x18;
    /* 0x24 */ cXyz field_0x24;
    /* 0x30 */ u8 field_0x30[4];
};

#pragma pack(push, 1)
class dBgS {
public:
private:
    /* 0x0000 */ cBgS cbgs;
    /* 0x1400 */ u8 vtable[8];
    /* 0x1408 */ dBgS_HIO dbgs_hio;
};
#pragma pack(pop)
#endif