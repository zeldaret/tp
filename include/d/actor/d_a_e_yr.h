#ifndef D_A_E_YR_H
#define D_A_E_YR_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_spline_path.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_yr_class
 * @brief Twilight Kargorok Rider?
 * 
 * @details 
 * 
 */
class e_yr_class {
public:
    /* 80827D64 */ e_yr_class();

    /* 0x0   */ fopEn_enemy_c mEnemy;
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5B8 */ s32 field_0x5b8;
    /* 0x5BC */ u32 mShadowKey;
    /* 0x5C0 */ Z2CreatureEnemy mSound;
    /* 0x664 */ u8 field_0x664;
    /* 0x665 */ u8 field_0x665;
    /* 0x666 */ u8 field_0x666;
    /* 0x667 */ u8 field_0x667;
    /* 0x668 */ u8 field_0x668;
    /* 0x669 */ u8 field_0x669;
    /* 0x66A */ u8 field_0x66a[0x66b - 0x66a];
    /* 0x66B */ u8 field_0x66b;
    /* 0x66C */ u8 field_0x66c;
    /* 0x670 */ fopAc_ac_c* field_0x670;
    /* 0x674 */ s32 field_0x674;
    /* 0x678 */ u8 field_0x678[0x67c - 0x678];
    /* 0x67C */ s8 field_0x67c;
    /* 0x67D */ s8 field_0x67d;
    /* 0x67E */ u8 field_0x67e;
    /* 0x680 */ cXyz field_0x680;
    /* 0x68C */ f32 field_0x68c;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ f32 field_0x698;
    /* 0x69C */ f32 field_0x69c;
    /* 0x6A0 */ u8 field_0x6a0[0x6a4 - 0x6a0];
    /* 0x6A4 */ s16 field_0x6a4[6];
    /* 0x6B0 */ s16 field_0x6b0;
    /* 0x6B2 */ s16 field_0x6b2;
    /* 0x6B4 */ f32 field_0x6b4;
    /* 0x6B8 */ u8 field_0x6b8[0x6bc - 0x6b8];
    /* 0x6BC */ f32 field_0x6bc;
    /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ s16 field_0x6c4;
    /* 0x6C6 */ u8 field_0x6c6[0x6c8 - 0x6c6];
    /* 0x6C8 */ s16 mYawToPlayer;
    /* 0x6CA */ s16 mPitchToPlayer;
    /* 0x6CC */ f32 mPlayerLatDist;
    /* 0x6D0 */ s16 field_0x6d0;
    /* 0x6D2 */ s16 field_0x6d2;
    /* 0x6D4 */ s16 field_0x6d4;
    /* 0x6D8 */ f32 field_0x6d8;
    /* 0x6D4 */ s16 field_0x6dc;
    /* 0x6DE */ s16 field_0x6de;
    /* 0x6E0 */ s16 field_0x6e0;
    /* 0x6E2 */ u8 field_0x6e2[0x6e9 - 0x6e2];
    /* 0x6E9 */ s8 field_0x6e9;
    /* 0x6EA */ s8 field_0x6ea;
    /* 0x6EB */ s8 field_0x6eb;
    /* 0x6EC */ dPath* field_0x6ec;
    /* 0x6F0 */ u8 field_0x6f0;
    /* 0x6F2 */ csXyz field_0x6f2;
    /* 0x6F8 */ csXyz field_0x6f8;
    /* 0x700 */ cXyz field_0x700;
    /* 0x70C */ dBgS_AcchCir mAcchCir;
    /* 0x74C */ dBgS_ObjAcch mAcch;
    /* 0x924 */ u8 field_0x924;
#ifndef DEBUG
    /* 0x928 */ f32 field_0x928;
#endif
    /* 0x92C */ dCcD_Stts mStts;
    /* 0x968 */ dCcD_Sph mSph1;
    /* 0xAA0 */ dCcD_Sph mSph2;
    /* 0xBD8 */ dCcD_Sph mSph3;
    /* 0xD10 */ dCcD_Sph mSph4;
    /* 0xE48 */ dCcU_AtInfo mAtInfo;
    /* 0xE6C */ cXyz field_0xe6c[2];
    /* 0xE84 */ s16 field_0xe84;
    /* 0xE86 */ s16 field_0xe86;
    /* 0xE88 */ s16 field_0xe88;
    /* 0xE8A */ s16 field_0xe8a;
    /* 0xE8C */ s16 field_0xe8c;
    /* 0xE90 */ JAISoundID field_0xe90;
    /* 0xE94 */ u8 field_0xe94;
    /* 0xE96 */ s16 field_0xe96[9];
    /* 0xEA8 */ s16 field_0xea8;
    /* 0xEAA */ s16 field_0xeaa;
    /* 0xEAC */ u8 field_0xeac[0xeb0 - 0xeac];
    /* 0xEB0 */ f32 field_0xeb0;
    /* 0xEB4 */ s16 field_0xeb4;
    /* 0xEB6 */ s16 field_0xeb6;
    /* 0xEB8 */ s16 field_0xeb8;
    /* 0xEBA */ s16 field_0xeba;
    /* 0xEBC */ s16 field_0xebc;
    /* 0xEBE */ s16 field_0xebe;
    /* 0xEC0 */ f32 field_0xec0;
    /* 0xEC4 */ s16 field_0xec4;
    /* 0xEC6 */ s16 field_0xec6;
    /* 0xEC8 */ u8 field_0xec8;
    /* 0xEC9 */ u8 field_0xec9[0xef4 - 0xec9];
    /* 0xEF4 */ s32 mEmitterIds[7];
    /* 0xF08 */ u8 field_0xf10[0xf1c - 0xf10];
    /* 0xF1C */ s8 field_0xf1c;
};

STATIC_ASSERT(sizeof(e_yr_class) == 0xf20);

class e_yrHIO_c : public fOpAcm_HIO_entry_c {
public:
    e_yrHIO_c() {
        mInvulnerable = 0;
        mStationary = 0;
        field_0x8 = 20.0f;
        field_0xc = 2500.0f;
        mModelScale = 1.0f;
        mAttackAMinTime = 2000;
        mAttackAMaxTime = 2500;
        mAttackBMinTime = 2000;
        mAttackBMaxTime = 2500;
        mAttackMoveSpeed = 0.35f;
        mAttackFrequency = 0.5f;
        mFlyPlaybackSpeed = 1.0f;
        mHoveringPlaybackSpeed = 1.0f;
        mAttackPlaybackSpeed = 1.0f;
        field_0x38 = 1.0f;
        mChancePlaybackSpeed = 1.0f;
        field_0x40 = 30;
        field_0x44 = 1.0f;
        field_0x48 = 1.0f;
        field_0x4c = 1.5f;
        mBrakeStartDist = 1100;
        field_0x54 = 3.5f;
        mChanceTime = 60;
        mLargeDamage = 60.0f;
        mSmallDamage = 40.0f;
        mHitOccurrenceFrame = 1;
        mDetectDistSky = 8000.0f;
        mDetectHeightSky = 3000.0f;
        mDetectAngleSky = 20000;
        mDetectDistGround = 1500.0f;
        mDetectHeightGround = 2000.0f;
        mDetectAngleGround = 20000;
    }

    /* 808282CC */ virtual ~e_yrHIO_c() {}

#if DEBUG
    void genMessage(JORMContext*);
#endif

    /* 0x04 */ u8 mInvulnerable;
    /* 0x05 */ u8 mStationary;
    /* 0x06 */ u8 mSuddenAttack;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 mTurningRadius;
    /* 0x14 */ f32 mModelScale;
    /* 0x18 */ s16 mAttackAMinTime;
    /* 0x1A */ s16 mAttackAMaxTime;
    /* 0x1C */ s16 mAttackBMinTime;
    /* 0x1E */ s16 mAttackBMaxTime;
    /* 0x20 */ f32 mAttackMoveSpeed;
    /* 0x24 */ f32 mAttackFrequency;
    /* 0x28 */ f32 mFlyPlaybackSpeed;
    /* 0x2C */ f32 mHoveringPlaybackSpeed;
    /* 0x30 */ f32 mAttackPlaybackSpeed;
    /* 0x34 */ s16 mChanceTime;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 mChancePlaybackSpeed;
    /* 0x40 */ s16 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4c;
    /* 0x50 */ s16 mBrakeStartDist;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 mLargeDamage;
    /* 0x5C */ f32 mSmallDamage;
    /* 0x60 */ s16 mHitOccurrenceFrame;
    /* 0x64 */ f32 mDetectDistSky;
    /* 0x68 */ f32 mDetectDistGround;
    /* 0x6C */ s16 mDetectAngleSky;
    /* 0x6E */ s16 mDetectAngleGround;
    /* 0x70 */ f32 mDetectHeightSky;
    /* 0x74 */ f32 mDetectHeightGround;
};


#endif /* D_A_E_YR_H */
