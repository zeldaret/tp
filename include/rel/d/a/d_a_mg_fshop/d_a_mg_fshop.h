#ifndef D_A_MG_FSHOP_H
#define D_A_MG_FSHOP_H

#include "d/bg/d_bg_s_acch.h"
#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"

class J3DModel;
class J3DModelData;
class dBgW;

struct fs_weed_s {
    /* 8086FED8 */ ~fs_weed_s();
    /* 8086FF38 */ fs_weed_s();

    /* 0x00 */ cXyz field_0x00[15];
    /* 0xB4 */ f32 field_0xb4;
    /* 0xB8 */ f32 field_0xb8;
    /* 0xBC */ s16 field_0xbc;
};

struct fs_tsubo_s {
    /* 8086FE98 */ ~fs_tsubo_s();
    /* 8086FED4 */ fs_tsubo_s();

    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ u8 field_0x0c[0x14 - 0x0c];
    /* 0x14 */ J3DModel* field_0x14;
    /* 0x18 */ u8 field_0x18[0x1C - 0x18];
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ s16 field_0x20;
    /* 0x22 */ s16 field_0x22;
    /* 0x24 */ s16 field_0x24;
};

struct fs_rod_s {
    /* 8086FF84 */ ~fs_rod_s();
    /* 8086FFC0 */ fs_rod_s();

    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ u8 field_0x0C[0x14 - 0x0C];
    /* 0x14 */ J3DModel* field_0x14;
    /* 0x18 */ J3DModel* field_0x18[6];
    /* 0x30 */ mDoExt_3DlineMat0_c line_mat;
    /* 0x4C */ int field_0x4c;
    /* 0x50 */ u8 field_0x50[0x54 - 0x50];
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ u8 field_0x58[0x5C - 0x58];
};

struct fs_lure_s {
    /* 8086FFDC */ ~fs_lure_s();
    /* 80870018 */ fs_lure_s();

    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ s16 field_0x0c;
    /* 0x0E */ s16 field_0x0e;
    /* 0x10 */ s16 field_0x10;
    /* 0x12 */ u8 field_0x12[0x14 - 0x12];
    /* 0x14 */ J3DModel* field_0x14;
    /* 0x18 */ J3DModel* field_0x18[2];
    /* 0x20 */ u8 field_0x20[0x24 - 0x20];
    /* 0x24 */ int field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ s16 field_0x30;
    /* 0x32 */ s16 field_0x32;
    /* 0x34 */ s16 field_0x34;
    /* 0x36 */ s16 field_0x36;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3c;
};

struct fs_koro2_s {
    /* 8086FD78 */ ~fs_koro2_s();
    /* 8086FDB4 */ fs_koro2_s();

    /* 0x00 */ J3DModel* mpModel;
    /* 0x04 */ Mtx field_0x04;
    /* 0x34 */ s8 field_0x34;
    /* 0x35 */ u8 field_0x35[0x38 - 0x35];
    /* 0x38 */ cXyz field_0x38;
    /* 0x44 */ cXyz field_0x44;
    /* 0x50 */ s16 field_0x50;
    /* 0x52 */ u8 field_0x52[0x54 - 0x52];
    /* 0x54 */ cXyz field_0x54;
    /* 0x60 */ u8 field_0x60;
    /* 0x61 */ u8 field_0x61[0x64 - 0x61];
    /* 0x64 */ dBgW* mpBgW;
};

class fshop_class : public fopAc_ac_c {
public:
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ s16 field_0x0570;
    /* 0x0572 */ s16 field_0x0572;
    /* 0x0574 */ fs_lure_s mLure[48];
    /* 0x1174 */ fs_rod_s mRod[3];
    /* 0x1288 */ fs_weed_s mWeed[60];
    /* 0x3F88 */ mDoExt_3DlineMat0_c field_0x3f88;
    /* 0x3FA4 */ fs_tsubo_s mTsubo[2];
    /* 0x3FF4 */ J3DModel* field_0x3ff4;
    /* 0x3FF8 */ s16 field_0x3ff8;
    /* 0x3FFA */ s16 field_0x3ffa;
    /* 0x3FFC */ f32 field_0x3ffc;
    /* 0x4000 */ f32 field_0x4000;
    /* 0x4004 */ J3DModel* field_0x4004;
    /* 0x4008 */ fshop_class* field_0x4008;
    /* 0x400C */ u8 field_0x400c;
    /* 0x400D */ u8 field_0x400d;
    /* 0x400E */ u8 field_0x400e;
    /* 0x4010 */ s16 field_0x4010;
    /* 0x4014 */ cXyz field_0x4014;
    /* 0x4020 */ csXyz field_0x4020;
    /* 0x4028 */ J3DModel* mpA_crwaku_model;
    /* 0x402C */ dBgW* field_0x402c;
    /* 0x4030 */ Mtx field_0x4030;
    /* 0x4060 */ s16 field_0x4060;
    /* 0x4062 */ s16 field_0x4062;
    /* 0x4064 */ cXyz field_0x4064;
    /* 0x4070 */ J3DModel* field_0x4070;
    /* 0x4074 */ dBgS_AcchCir field_0x4074;
    /* 0x40B4 */ dBgS_ObjAcch field_0x40b4;
    /* 0x428C */ u8 field_0x428c;
    /* 0x428D */ u8 field_0x428d;
    /* 0x4290 */ fs_koro2_s mKoro2[100];
    /* 0x6B30 */ J3DModel* field_0x6b30;
    /* 0x6B34 */ s16 field_0x6b34;
    /* 0x6B38 */ Mtx field_0x6b38;
    /* 0x6B68 */ dBgW* field_0x6b68;
    /* 0x6B6C */ u32 field_0x6b6c[2];
    /* 0x6B74 */ u8 field_0x6B74[0x6B7C - 0x6B74];
    /* 0x6B7C */ u8 field_0x6b7c;
};

#endif /* D_A_MG_FSHOP_H */
