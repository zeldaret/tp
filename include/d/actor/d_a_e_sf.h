#ifndef D_A_E_SF_H
#define D_A_E_SF_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class e_sf_class
 * @brief Stalfos
 * 
 * @details 
 * 
*/

class e_sf_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ s16 mActionPhase;
    /* 0x5B6 */ u8 mWaitType;
    /* 0x5B7 */ u8 arg1;
    /* 0x5B8 */ u8 mType;
    /* 0x5B9 */ u8 arg3;
    /* 0x5BC */ int mSwBit;
    /* 0x5C0 */ s8 field_0x5c0;
    /* 0x5C4 */ cXyz field_5c4;
    /* 0x5D0 */ s16 mAngleYOffset;
    /* 0x5D4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5D8 */ int mAnm;
    /* 0x5DC */ J3DModel* mSwordModel;
    /* 0x5E0 */ J3DModel* mShieldModel;
    /* 0x5E4 */ Z2CreatureEnemy mSound;
    /* 0x688 */ s16 mFrameCounter;
    /* 0x68A */ s16 mAction;
    /* 0x68C */ f32 mPlayerDistanceXZ;
    /* 0x690 */ s16 mPlayerAngleY;
    /* 0x692 */ s16 mPlayerAngleX;
    /* 0x694 */ f32 mRecognizeDist;
    /* 0x698 */ u32 mShadowKey;
    /* 0x69C */ s16 mTimers[4];
    /* 0x6A4 */ s16 mInvulnerabilityTimer;
    /* 0x6A6 */ s16 mColor;
    /* 0x6A8 */ u8 field_0x6a8;
    /* 0x6A9 */ s8 mHitCheckFlag;
    /* 0x6AA */ s8 field_0x6aa;
    /* 0x6AB */ s8 field_0x6ab;
    /* 0x6AC */ s8 mCoSetBitFlag;
    /* 0x6AD */ s8 field_0x6ad;
    /* 0x6AE */ s8 field_0x6ae;
    /* 0x6B0 */ s16 mHeadAngleY;
    /* 0x6B2 */ s16 mHeadAngleX;
    /* 0x6B4 */ s16 mTargetHeadAngleX;
    /* 0x6B6 */ s16 mHeadAngleZ;
    /* 0x6B8 */ s16 mHeadBobAngleY;
    /* 0x6BA */ s16 mTargetHeadBobAngleY;
    /* 0x6BC */ s16 field_0x6bc;
    /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ f32 field_0x6c4;
    /* 0x6C8 */ s16 mHitDirectionY;
    /* 0x6CA */ u8 field_0x6ca[0x6d4 - 0x6ca];
    /* 0x6D4 */ cXyz field_0x6d4;
    /* 0x6E0 */ u8 field_0x6e0[0x6e4 - 0x6e0];
    /* 0x6E4 */ csXyz field_0x6e4;
    /* 0x6EA */ csXyz field_0x6ea;
    /* 0x6F0 */ csXyz field_0x6f0;
    /* 0x6F6 */ s8 field_0x6f6;
    /* 0x6F8 */ cXyz field_0x6f8;
    /* 0x704 */ u8 field_0x704[0x708 - 0x704];
    /* 0x708 */ csXyz field_0x708;
    /* 0x70E */ csXyz field_0x70e;
    /* 0x714 */ u8 field_0x714[0x718 - 0x714];
    /* 0x718 */ s16 mUnkTimer1;
    /* 0x71A */ s16 mUnkTimer2;
    /* 0x71C */ dBgS_AcchCir mAcchCir;
    /* 0x75C */ dBgS_ObjAcch mBgc;
    /* 0x934 */ dCcD_Stts mStts;
    /* 0x970 */ dCcD_Sph mCcSphs[3];
    /* 0xD18 */ dCcD_Sph mAtSph;
    /* 0xE50 */ dCcD_Sph mTateSph;
    /* 0xF88 */ dCcU_AtInfo mAtInfo;
    /* 0xFAC */ bool mIsFirstSpawn;
    /* 0xFAD */ u8 field_0xfad[0xfb8 - 0xfad];
    /* 0xFB8 */ s8 field_0xfb8;
    /* 0xFBC */ u32 field_0xfbc[2];
    /* 0xFC4 */ u32 field_0xfc4[2];
    /* 0xFCC */ u8 field_0xfcc[0xfd8 - 0xfcc];
    /* 0xFD8 */ s16 mDemoMode;
    /* 0xFDA */ s16 field_0xfda;
    /* 0xFDC */ cXyz mDemoCamEye;
    /* 0xFE8 */ cXyz mDemoCamCenter;
    /* 0xFF4 */ f32 mDemoCamFovy;
    /* 0xFF8 */ u8 field_0xff8[0xffc - 0xff8];
    /* 0xFFC */ u8 field_0xffc;
};

STATIC_ASSERT(sizeof(e_sf_class) == 0x1000);

#endif /* D_A_E_SF_H */
