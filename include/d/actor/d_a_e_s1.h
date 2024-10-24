#ifndef D_A_E_S1_H
#define D_A_E_S1_H

#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_jnt_col.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

struct dPath;

struct s1_ke_s {
    /* 0x000 */ cXyz field_0x0[16];
    /* 0x0C0 */ cXyz field_0xc0[16];
    /* 0x180 */ cXyz field_0x180;
};

/**
 * @ingroup actors-enemies
 * @class e_s1_class
 * @brief Shadow Beast
 * 
 * @details 
 * 
 */
class e_s1_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ u8 field_0x5b4;
    /* 0x05B5 */ u8 field_0x5b5;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ u8 field_0x5B8[0x05BC - 0x05B8];
    /* 0x05BC */ dPath* mpPath;
    /* 0x05C0 */ s8 field_0x5c0;
    /* 0x05C1 */ s8 field_0x5c1;
    /* 0x05C2 */ u8 field_0x5C2[0x05C4 - 0x05C2];
    /* 0x05C4 */ cXyz field_0x5c4;
    /* 0x05D0 */ s16 field_0x5d0;
    /* 0x05D2 */ u8 field_0x5D2[0x05D4 - 0x05D2];
    /* 0x05D4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x05D8 */ int mAnm;
    /* 0x05DC */ u8 field_0x5DC[0x05E0 - 0x05DC];
    /* 0x05E0 */ Z2CreatureEnemy mSound;
    /* 0x0684 */ dJntCol_c mJntCol;
    /* 0x0694 */ s16 field_0x694;
    /* 0x0696 */ s16 mAction;
    /* 0x0698 */ s16 mMode;
    /* 0x069A */ s8 field_0x69a;
    /* 0x069B */ u8 field_0x69B[0x069C - 0x069B];
    /* 0x069C */ u32 mShadowKey;
    /* 0x06A0 */ s16 field_0x6a0[4];
    /* 0x06A8 */ s16 field_0x6a8;
    /* 0x06AA */ s16 field_0x6aa;
    /* 0x06AC */ f32 field_0x6ac;
    /* 0x06B0 */ s16 field_0x6b0;
    /* 0x06B2 */ s16 field_0x6b2;
    /* 0x06B4 */ u8 field_0x6B4[0x06B6 - 0x06B4];
    /* 0x06B6 */ s16 field_0x6b6;
    /* 0x06B8 */ s8 field_0x6b8;
    /* 0x06B9 */ s8 field_0x6b9;
    /* 0x06BA */ s8 field_0x6ba;
    /* 0x06BB */ s8 field_0x6bb;
    /* 0x06BC */ dBgS_AcchCir mAcchCir;
    /* 0x06FC */ dBgS_ObjAcch mAcch;
    /* 0x08D4 */ dCcD_Stts mCcStts;
    /* 0x0910 */ dCcD_Sph mCcSph[3];
    /* 0x0CB8 */ dCcD_Sph mCcAtSph;
    /* 0x0DF0 */ dCcU_AtInfo mAtInfo;
    /* 0x0E14 */ s1_ke_s field_0xe14[22];
    /* 0x301C */ mDoExt_3DlineMat0_c mLineMat;
    /* 0x3038 */ s16 mDemoMode;
    /* 0x303A */ s16 field_0x303a;
    /* 0x303C */ cXyz field_0x303c;
    /* 0x3048 */ cXyz field_0x3048;
    /* 0x3054 */ f32 field_0x3054;
    /* 0x3058 */ f32 field_0x3058;
    /* 0x305C */ f32 field_0x305c;
    /* 0x3060 */ f32 field_0x3060;
    /* 0x3064 */ f32 field_0x3064;
    /* 0x3068 */ f32 field_0x3068;
    /* 0x306C */ s8 field_0x306c;
    /* 0x306D */ u8 field_0x306D[0x307C - 0x306D];
    /* 0x307C */ u32 field_0x307c;
    /* 0x3080 */ u8 field_0x3080;
};

STATIC_ASSERT(sizeof(e_s1_class) == 0x3084);

class daE_S1_HIO_c {
public:
    /* 8077AB8C */ daE_S1_HIO_c();
    /* 80780840 */ virtual ~daE_S1_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mBaseSize;
    /* 0x0C */ f32 mMoveSpeed;
    /* 0x10 */ u8 field_0x10[0x14 - 0x10];
    /* 0x14 */ f32 mDashSpeed;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 mFallSEWaitTime;
    /* 0x1E */ s16 mAllDeadWaitTime;
    /* 0x20 */ f32 mReactionDist;
    /* 0x24 */ f32 mReactionAngle;
    /* 0x28 */ s16 mReactionTime;
    /* 0x2A */ u8 mInvincible;
};

#endif /* D_A_E_S1_H */
