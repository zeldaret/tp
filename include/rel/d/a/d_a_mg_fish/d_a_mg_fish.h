#ifndef D_A_MG_FISH_H
#define D_A_MG_FISH_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"

struct mf_ke_s {
    /* 80535F74 */ ~mf_ke_s();
    /* 80535FD4 */ mf_ke_s();

    /* 0x00 */ u8 field_0x0[0x48];
};

class mg_fish_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B6 */ s16 field_0x5b6;
    /* 0x5B8 */ s16 field_0x5b8;
    /* 0x5BC */ f32 field_0x5bc;
    /* 0x5C0 */ cXyz field_0x5c0;
    /* 0x5CC */ u8 field_0x5cc[0xc];
    /* 0x5D8 */ f32 field_0x5d8;
    /* 0x5DC */ f32 field_0x5dc;
    /* 0x5E0 */ cXyz field_0x5e0;
    /* 0x5EC */ f32 field_0x5ec;
    /* 0x5F0 */ f32 field_0x5f0;
    /* 0x5F4 */ u8 field_0x5f4[8];
    /* 0x5FC */ char* mResName;
    /* 0x600 */ mDoExt_McaMorf* mpMorf;
    /* 0x604 */ J3DAnmTransform* field_0x604;
    /* 0x608 */ u8 field_0x608[4];
    /* 0x60C */ int mAnmID;
    /* 0x610 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x614 */ J3DModel* mpModel[3];
    /* 0x620 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x624 */ s16 field_0x624;
    /* 0x626 */ u8 field_0x626[2];
    /* 0x628 */ s16 field_0x628;
    /* 0x62A */ u8 field_0x62a[8];
    /* 0x632 */ u16 field_0x632;
    /* 0x634 */ u8 mGedouKind;
    /* 0x635 */ u8 mKind2;
    /* 0x638 */ cXyz field_0x638;
    /* 0x644 */ u16 field_0x644;
    /* 0x646 */ u8 field_0x646[0x1e];
    /* 0x664 */ cXyz field_0x664[10];
    /* 0x6DC */ csXyz field_0x6dc[10];
    /* 0x718 */ s16 field_0x718[10];
    /* 0x72C */ int field_0x72c;
    /* 0x730 */ s16 field_0x730;
    /* 0x732 */ u8 field_0x732[0xe];
    /* 0x740 */ f32 field_0x740;
    /* 0x744 */ u8 field_0x744[0x10];
    /* 0x754 */ mf_ke_s field_0x754[2];
    /* 0x7E4 */ mDoExt_3DlineMat0_c field_0x7e4;
    /* 0x800 */ Z2Creature mSound;
    /* 0x890 */ dBgS_AcchCir mAcchCir;
    /* 0x8D0 */ dBgS_ObjAcch mAcch;
    /* 0xAA8 */ dCcD_Stts mCcStatus;
    /* 0xAE4 */ dCcD_Cyl mCcCyl;
    /* 0xC20 */ u8 field_0xc20[0x1c];
    /* 0xC3C */ u8 field_0xc3c;
    /* 0xC3D */ u8 field_0xc3d[0xb];
    /* 0xC48 */ J3DJointCallBack mNodeCallBack;
    /* 0xC4C */ u32 field_0xc4c;
};

STATIC_ASSERT(sizeof(mg_fish_class) == 0xC50);

class daMg_Fish_HIO_c {
public:
    /* 80529D2C */ daMg_Fish_HIO_c();
    /* 805360A8 */ ~daMg_Fish_HIO_c();
};


#endif /* D_A_MG_FISH_H */
