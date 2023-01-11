#ifndef D_A_OBJ_WEB1_H
#define D_A_OBJ_WEB1_H

#include "d/com/d_com_inf_game.h"

class obj_web1_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ u8 mPrm0;
    /* 0x571 */ u8 mScaleX;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ mDoExt_brkAnm* mpBrk;
    /* 0x57C */ Z2SoundObjSimple mZ2SoundObj;
    /* 0x59C */ s16 field_0x59c;
    /* 0x59E */ s16 mActionMode;
    /* 0x5A0 */ u8 field_0x5a0[2];
    /* 0x5A2 */ s16 field_0x5a2[2];
    /* 0x5A6 */ s16 mHitTimer;
    /* 0x5A8 */ s16 mReboundTimer;
    /* 0x5AA */ s16 field_0x5aa;
    /* 0x5AC */ f32 mDistToActor;
    /* 0x5B0 */ f32 field_0x5b0;
    /* 0x5B4 */ s8 mDeleteTimer;
    /* 0x5B5 */ u8 field_0x5b5[0x5C0 - 0x5B5];
    /* 0x5C0 */ Mtx mMtx;
    /* 0x5F0 */ dBgW* mpBgW;
    /* 0x5F4 */ dCcD_Stts mStts;
    /* 0x630 */ dCcD_Cyl mCylCc;
    /* 0x76C */ u8 field_0x76c;
};  // Size: 0x770

class daObj_Web1_HIO_c {
public:
    /* 80D353AC */ daObj_Web1_HIO_c();
    /* 80D36028 */ virtual ~daObj_Web1_HIO_c() {}

    /* 0x4 */ s8 field_0x4;
};

#endif /* D_A_OBJ_WEB1_H */
