#ifndef D_A_E_ST_H
#define D_A_E_ST_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_st_class
 * @brief Skulltula
 * 
 * @details 
 * 
*/

struct st_foot {
    /* 807A5F5C */ ~st_foot();
    /* 807A5F98 */ st_foot();

    /* 0x0 */ f32 field_0x0;
    /* 0x4 */ s16 field_0x4[3];
    // /* 0xA */ u8 field_0xa[0xc - 0xa];
    /* 0xC */ cXyz field_0xc;
};

class e_st_class {
public:
    /* 807A5CF4 */ e_st_class();

    /* 0x0000 */ fopEn_enemy_c actor;
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ u8 arg0;
    /* 0x05B5 */ u8 arg1;
    /* 0x05B6 */ u8 arg2;
    /* 0x05B7 */ u8 arg3;
    /* 0x05B8 */ u8 mSwBit;
    /* 0x05B9 */ u8 field_0x5b9[0x5bc - 0x5b9];
    /* 0x05BC */ cXyz field_0x5bc;
    /* 0x05C8 */ s16 mPlAngle;
    /* 0x05CA */ u8 field_0x5ca[0x5cc - 0x5ca];
    /* 0x05CC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D0 */ Z2CreatureEnemy mSound;
    /* 0x0674 */ int mAnm;
    /* 0x0678 */ u32 mShadowKey;
    /* 0x067C */ s16 field_0x67c;
    /* 0x067E */ s16 mAction;
    /* 0x0680 */ s16 mMode;
    /* 0x0682 */ s16 mTimers[4];
    /* 0x068A */ s16 field_0x68a;
    /* 0x068C */ s16 field_0x68c;
    /* 0x068E */ u8 field_0x68e[0x690 - 0x68e];
    /* 0x0690 */ cXyz mBgPos;
    /* 0x069C */ csXyz field_0x69c;
    /* 0x06A2 */ s16 field_0x6a2;
    /* 0x06A4 */ s16 field_0x6a4;
    /* 0x06A6 */ csXyz field_0x6a6;
    /* 0x06AC */ s16 field_0x6ac;
    /* 0x06AE */ s16 field_0x6ae;
    /* 0x06B0 */ cXyz field_0x6b0;
    /* 0x06BC */ cXyz field_0x6bc;
    /* 0x06C8 */ cXyz field_0x6c8;
    /* 0x06D4 */ cXyz field_0x6d4;
    /* 0x06E0 */ cXyz field_0x6e0[3];
    /* 0x0704 */ cXyz field_0x704;
    /* 0x0710 */ cXyz field_0x710;
    /* 0x071C */ f32 field_0x71c;
    /* 0x0720 */ s8 field_0x720;
    /* 0x0721 */ u8 field_0x721[0x724 - 0x721];
    /* 0x0724 */ f32 field_0x724;
    /* 0x0728 */ mDoExt_3DlineMat0_c mLineMat1;
    /* 0x0744 */ cXyz field_0x744;
    /* 0x0750 */ cXyz field_0x750;
    /* 0x075C */ f32 field_0x75c;
    /* 0x0760 */ s8 field_0x760;
    /* 0x0761 */ u8 field_0x761[0x764 - 0x761];
    /* 0x0764 */ f32 field_0x764;
    /* 0x0768 */ mDoExt_3DlineMat0_c mLineMat2;
    /* 0x0784 */ u8 field_0x784[0x788 - 0x784];
    /* 0x0788 */ f32 field_0x788;
    /* 0x078C */ u8 field_0x78c[0x7d4 - 0x78c];
    /* 0x07D4 */ s16 field_0x7d4;
    /* 0x07D6 */ u8 field_0x7d6[0x7d8 - 0x7d6];
    /* 0x07D8 */ f32 field_0x7d8;
    /* 0x07DC */ u8 field_0x7dc;
    /* 0x07DD */ u8 field_0x7dd;
    /* 0x07DE */ s16 field_0x7de;
    /* 0x07E0 */ f32 field_0x7e0;
    /* 0x07E4 */ s8 field_0x7e4;
    /* 0x07E5 */ u8 field_0x7e5[0x7e8 - 0x7e5];
    /* 0x07E8 */ f32 field_0x7e8;
    /* 0x07EC */ f32 field_0x7ec;
    /* 0x07F0 */ s16 field_0x7f0;
    /* 0x07F2 */ s16 field_0x7f2;
    /* 0x07F4 */ f32 field_0x7f4;
    /* 0x07F8 */ f32 field_0x7f8;
    /* 0x07FC */ u8 field_0x7fc[0x800 - 0x7fc];
    /* 0x0800 */ dBgS_AcchCir mAcchCir;
    /* 0x0840 */ dBgS_ObjAcch mBgc;
    /* 0x0A18 */ f32 mGroundCross;
    /* 0x0A1C */ dCcD_Stts mStts;
    /* 0x0A58 */ s8 field_0xa58;
    /* 0x0A59 */ u8 field_0xa59[0xa5c - 0xa59];
    /* 0x0A5C */ dCcD_Sph mSph1;
    /* 0x0B94 */ u8 field_0xb94;
    /* 0x0B95 */ u8 field_0xb95[0xb98 - 0xb95];
    /* 0x0B98 */ dCcD_Sph mSph2;
    /* 0x0CD0 */ dCcU_AtInfo mAtInfo;
    /* 0x0CF4 */ u8 field_0xcf4;
    /* 0x0CF5 */ u8 field_0xcf5[0xcf8 - 0xcf5];
    /* 0x0CF8 */ dCcD_Sph mSph3;
    /* 0x0E30 */ dCcD_Cyl mCyl;
    /* 0x0F6C */ u32 field_0xf6c;
    /* 0x0F70 */ u32 field_0xf70;
    /* 0x0F74 */ u32 mPrtcls[2];
    /* 0x0F7C */ u32 field_0xf7c;
    /* 0x0F80 */ u8 field_0xf80[0xf84 - 0xf80];
    /* 0x0F84 */ u8 field_0xf84;
    /* 0x0F85 */ s8 field_0xf85;
    /* 0x0F86 */ u8 field_0xf86[0xf88 - 0xf86];
    /* 0x0F88 */ cXyz field_0xf88;
    /* 0x0F94 */ st_foot mStFeet[8];
    /* 0x1054 */ u8 field_0x1054[0x1064 - 0x1054];
    /* 0x1064 */ u8 field_0x1064;
};

STATIC_ASSERT(sizeof(e_st_class) == 0x1068);

#endif /* D_A_E_ST_H */
