#ifndef D_KANKYO_H_
#define D_KANKYO_H_
#include "d/d_kankyo/d_kankyo_wether/d_kankyo_wether.h"
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"

class kankyo_class {

};

extern Z2EnvSeMgr lbl_8042DD70; //g_mEnvSeMgr

struct env_light { //Most likely not actual struct name
    //u8 unk_1[0x131C];
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

extern env_light lbl_8042CA54; //g_env_light

void dKy_FiveSenses_fullthrottle_dark();


#endif