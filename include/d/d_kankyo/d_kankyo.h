#ifndef D_KANKYO_H_
#define D_KANKYO_H_
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "gx/GX.h"
#include "SComponent/c_xyz.h"
#include "d/d_kankyo/d_kankyo_wether/d_kankyo_wether.h"

class kankyo_class {};

extern Z2EnvSeMgr lbl_8042DD70;  // g_mEnvSeMgr

struct env_light {  // Most likely not actual struct name
    // u8 unk_1[0x131C];
    u8 unk_1[0xE48];
    f32 field_0xe48;
    f32 field_0xe4c;
    f32 field_0xe50;
    u8 unk_2[0x4];
    f32 field_0xe58;
    u8 unk_3[0x3E8];
    f32 field_0x1244;
    u8 unk_4[0xD8];
};

struct LIGHT_INFLUENCE {
    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ GXColorS10 mColor;
    /* 0x14 */ float field_0x14;
    /* 0x18 */ float field_0x18;
    /* 0x1C */ int field_0x1c;
};

extern env_light lbl_8042CA54;  // g_env_light

void dKy_FiveSenses_fullthrottle_dark();

#endif