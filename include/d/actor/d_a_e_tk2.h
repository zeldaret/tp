#ifndef D_A_E_TK2_H
#define D_A_E_TK2_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"
/**
 * @ingroup actors-enemies
 * @class e_tk2_class
 * @brief Fire Toadpoli
 *
 * @details
 *
 */
class e_tk2_class : public fopEn_enemy_c {
public:
    request_of_phase_process_class mPhaseReq;
    u8 mArg0;
    u8 mArg1;
    u8 mArg2;
    u8 mArg3;
    mDoExt_McaMorfSO *mpMorf;
    int mAnim;
    Z2CreatureEnemy mSound;
    float mAnimSpeed;
    short mLifetime;
    short mAction;
    short mMode;
    u8 field14_0x66e;
    u8 field15_0x66f;
    cXyz mPos;
    short mSomeAngle;
    u8 field18_0x67e;
    u8 field19_0x67f;
    short mPlayerAngleY;
    u8 field21_0x682;
    u8 field22_0x683;
    float mPlayerDistanceLimit;
    u8 field24_0x688;
    u8 field25_0x689;
    short mActionTimer[3];
    short mExecuteState;
    short mInvincibilityTimer;
    s8 mAttentionOFF;
    s8 mTKBallSpawned;
    u8 field31_0x696;
    u8 field32_0x697;
    int mpBallID;
    dBgS_AcchCir mAcchCir;
    dBgS_ObjAcch mAcch;
    dCcD_Stts mStts;
    dCcD_Sph mSph;
    dCcU_AtInfo mAtInfo;
    bool mInitHIO;
    u8 field40_0xa4d;
    u8 field41_0xa4e;
    u8 field42_0xa4f;
};

STATIC_ASSERT(sizeof(e_tk2_class) == 0xa50);

class daE_TK2_HIO_c {
public:
    /* 807BA56C */ daE_TK2_HIO_c();
    /* 807BBD00 */ virtual ~daE_TK2_HIO_c() {};

    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 mRadiusScale;
    /* 0x0C */ f32 mPlayerRange1;
    /* 0x10 */ f32 mPlayerRange2;
    /* 0x14 */ f32 mSpeedModifier1;
    /* 0x18 */ f32 mSpeedModifier2;
};

STATIC_ASSERT(sizeof(daE_TK2_HIO_c) == 0x1C);

#endif /* D_A_E_TK2_H */
