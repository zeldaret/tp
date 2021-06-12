#ifndef D_KANKYO_D_KANKYO_H
#define D_KANKYO_D_KANKYO_H

#include "JSystem/J3DGraphBase/J3DStruct.h"
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

struct WIND_INFLUENCE {
    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ cXyz field_0x0c;
    /* 0x18 */ u8 field_0x18[0xC];
    /* 0x24 */ int field_0x24;
    /* 0x28 */ u8 field_0x28;
    /* 0x29 */ u8 field_0x29;
};

class dKy_tevstr_c {
public:
private:
    /* 0x000 */ J3DLightObj field_0x000;
    /* 0x074 */ J3DLightObj field_0x074[6];
    /* 0x32C */ cXyz field_0x32c;
    /* 0x338 */ cXyz field_0x338;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ int field_0x348;
    /* 0x34C */ int field_0x34c;
    /* 0x350 */ int field_0x350;
    /* 0x354 */ int field_0x354;
    /* 0x358 */ int field_0x358;
    /* 0x35C */ int field_0x35c;
    /* 0x360 */ int field_0x360;
    /* 0x364 */ int field_0x364;
    /* 0x368 */ f32 field_0x368;
    /* 0x36C */ f32 field_0x36c;
    /* 0x370 */ f32 field_0x370;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u16 field_0x378;
    /* 0x37A */ u8 field_0x37a;
    /* 0x37B */ u8 field_0x37b;
    /* 0x37C */ u8 field_0x37c;
    /* 0x37D */ u8 field_0x37d;
    /* 0x37E */ u8 field_0x37e;
    /* 0x37F */ u8 field_0x37f;
    /* 0x380 */ u8 field_0x380;
    /* 0x381 */ u8 field_0x381;
    /* 0x382 */ u8 field_0x382;
    /* 0x383 */ u8 field_0x383;
    /* 0x384 */ u8 field_0x384;
    /* 0x385 */ u8 field_0x385;
};  // Size = 0x388?

#endif /* D_KANKYO_D_KANKYO_H */
