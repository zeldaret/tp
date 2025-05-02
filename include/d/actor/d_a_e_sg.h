#ifndef D_A_E_SG_H
#define D_A_E_SG_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_jnt_col.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class e_sg_class
 * @brief Skullfish
 * 
 * @details 
 * 
 */
class e_sg_class : public fopEn_enemy_c {
public:
    request_of_phase_process_class mPhaseReq;
    u8 mArg0;
    u8 field3_0x5b5[3];
    J3DModel* mpModel;
    Z2CreatureEnemy mSound;
    s16 mArr[3];
    s16 mCooldown;
    u8 mCooldown3;
    u8 field9_0x669;
    s16 mLifetime;
    s16 mStateA;
    s16 mStateB;
    f32 mRndUpper;
    f32 mTargetLoopLimit;
    cXyz mPos0;
    u8 field16_0x684[4];
    s16 mIso;
    u8 field18_0x68a;
    u8 field19_0x68b;
    f32 mLimit;
    f32 mTargetDist;
    f32 mTargetSpeed;
    f32 mStepSpeed;
    s16 mS1;
    s16 mS2;
    s16 mJointList[4];
    f32 mCurrent;
    f32 mSpeed;
    s16 mAngle;
    u8 field29_0x6b2[2];
    f32 mUseless;
    f32 mHomeLimit;
    f32 mSpeedF;
    s16 mLate1;
    s16 mLate2;
    s8 mStickPtInit;
    u8 mCntDown;
    s16 mCooldown2;
    int mShadowKey;
    int mActorID;
    dJntCol_c mJoint;
    dBgS_AcchCir mAcchCir;
    dBgS_ObjAcch mAcch;
    dCcD_Stts mStts;
    dCcD_Sph mSph;
    dCcU_AtInfo mAtInfo;
    s8 mHuh;
    s8 mHuh2;
    u8 mAliveFlag;
    s8 mAlive2;
    int mParticleKey[4];
    u32 mHamon;
    u8 field51_0xaa8[4];
    bool mHioInit;
    u8 field53_0xaad[3];
};

STATIC_ASSERT(sizeof(e_sg_class) == 0xAB0);

class daE_SG_HIO_c {
public:
    /* 8078A22C */ daE_SG_HIO_c();
    /* 8078DC84 */ virtual ~daE_SG_HIO_c();
    
    s8 mUnk0;
    f32 mUnk1;
    f32 mUnk2;
    f32 mUnk3;
    f32 mUnk4;
};

STATIC_ASSERT(sizeof(daE_SG_HIO_c) == 0x18);

#endif /* D_A_E_SG_H */
