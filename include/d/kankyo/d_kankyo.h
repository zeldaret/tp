#ifndef D_KANKYO_D_KANKYO_H
#define D_KANKYO_D_KANKYO_H

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

struct LIGHT_INFLUENCE {
    /* 800CFC7C */ ~LIGHT_INFLUENCE();
    /* 8019F4F8 */ LIGHT_INFLUENCE();

    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ _GXColorS10 mColor;
    /* 0x14 */ float field_0x14;
    /* 0x18 */ float field_0x18;
    /* 0x1C */ int field_0x1c;
};

#endif /* D_KANKYO_D_KANKYO_H */
