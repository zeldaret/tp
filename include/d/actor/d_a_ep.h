#ifndef D_A_EP_H
#define D_A_EP_H

#include "d/d_bg_s_gnd_chk.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"

class ep_hahen_s {
    public:
        /* 0x00 */ J3DModel* mpModel;
        /* 0x04 */ cXyz field_0x4;
        /* 0x10 */ cXyz field_0x10;
        /* 0x1C */ cXyz field_0x1c;
        /* 0x28 */ csXyz field_0x28;
        /* 0x2E */ u8 field_0x2e;
        /* 0x2F */ u8 field_0x2f;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 mGroundY;
        /* 0x3C */ dBgS_ObjGndChk mObjGndCheck;
        /* 0x90 */ s16 field_0x90;
        /* 0x92 */ s16 field_0x92;
        /* 0x94 */ s16 field_0x94;
        /* 0x96 */ s8 field_0x96;
        /* 0x97 */ u8 field_0x97;
        /* 0x98 */ u8 field_0x98;
        /* 0x99 */ u8 field_0x99[0x9c - 0x99];
        /* 0x9C */ u32 mShadow;
        /* 0xA0 */ u32 field_0xa0;
        /* 0xA4 */ u8 field_0xa4;
        /* 0xA7 */ u8 field_0xa7;
};

STATIC_ASSERT(sizeof(ep_hahen_s) == 0xa8);

class ep_class : public fopAc_ac_c {
    public:
        /* 0x0568 */ request_of_phase_process_class mPhase;
        /* 0x0570 */ Mtx field_0x570;
        /* 0x05A0 */ J3DModel* mpModel;
        /* 0x05A4 */ u32 field_0x5a4;
        /* 0x05A8 */ u8 field_0x5a8[0x5b0 - 0x5a8];
        /* 0x05B0 */ f32 field_0x5b0;
        /* 0x05B4 */ f32 field_0x5b4;
        /* 0x05B8 */ f32 field_0x5b8;
        /* 0x05BC */ f32 field_0x5bc;
        /* 0x05C0 */ f32 field_0x5c0;
        /* 0x05C4 */ f32 field_0x5c4;
        /* 0x05C8 */ s16 field_0x5c8[3];
        /* 0x05CE */ s16 field_0x5ce;
        /* 0x05D0 */ u8 field_0x5d0[0x5dc - 0x5d0];
        /* 0x05DC */ cXyz field_0x5dc;
        /* 0x05E8 */ cXyz field_0x5e8;
        /* 0x05F4 */ cXyz field_0x5f4;
        /* 0x0600 */ u8 field_0x600;
        /* 0x0601 */ u8 field_0x601;
        /* 0x0602 */ u8 field_0x602;
        /* 0x0603 */ u8 field_0x603[0x609 - 0x603];
        /* 0x0609 */ u8 field_0x609;
        /* 0x060A */ u8 field_0x60a;
        /* 0x060B */ u8 field_0x60b;
        /* 0x060C */ u8 field_0x60c;
        /* 0x060D */ u8 field_0x60d;
        /* 0x060E */ u8 field_0x60e;
        /* 0x060F */ u8 field_0x60f;
        /* 0x0610 */ JPABaseEmitter* mBaseEmitter;
        /* 0x0614 */ LIGHT_INFLUENCE mLightInf;
        /* 0x0634 */ cXyz field_0x634;
        /* 0x0640 */ s8 field_0x640;
        /* 0x0641 */ u8 field_0x641[0x644 - 0x641];
        /* 0x0644 */ dCcD_Stts mStts;
        /* 0x0680 */ dCcD_Cyl mCyl;
        /* 0x07BC */ dCcD_Sph mSph1;
        /* 0x08F4 */ dCcD_Sph mSph2;
        /* 0x0A2C */ dCcU_AtInfo mAtInfo;
        /* 0x0A50 */ s16 field_0xa50;
        /* 0x0A52 */ u8 field_0xa52[0xa54 - 0xa52];
        /* 0x0A54 */ f32 field_0xa54;
        /* 0x0A58 */ s16 field_0xa58;
        /* 0x0A5A */ s8 field_0xa5a;
        /* 0x0A5B */ u8 field_0xa5b;
        /* 0x0A5C */ int field_0xa5c;
        /* 0x0A60 */ u32 field_0xa60;
        /* 0x0A64 */ u32 field_0xa64;
        /* 0x0A68 */ u32 field_0xa68[4];
        /* 0x0A78 */ s8 field_0xa78;
        /* 0x0A79 */ s8 field_0xa79;
        /* 0x0A7A */ u8 field_0xa7a;
        /* 0x0A7B */ u8 field_0xa7b;
        /* 0x0A7C */ ep_hahen_s mHahen[6];
        /* 0x0E6C */ u8 field_0xe6c;
};

STATIC_ASSERT(sizeof(ep_class) == 0xe70);

#endif /* D_A_EP_H */
