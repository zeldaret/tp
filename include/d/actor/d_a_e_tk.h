#ifndef D_A_E_TK_H
#define D_A_E_TK_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_path.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class e_tk_class
 * @brief Water Toadpoli
 *
 * @details
 *
 */
class e_tk_class : public fopEn_enemy_c {
public:
    request_of_phase_process_class mPhaseReq;
    u8 mParam1;
    u8 mParam2;
    u8 mParam3;
    u8 mParam4;
    s8 mUnkFlag;
    dPath* mRoomPath;
    s8 mWtf2;
    s8 mWtf3;
    mDoExt_McaMorfSO* mpMorf;
    int mNextSound;
    Z2CreatureEnemy mZ2CreatureEnemy;
    f32 mAnimSpeed;
    s16 mCnt;
    s16 mNextAction;
    s16 mNextAnim;
    cXyz mPos;
    s16 mSomeAngle;
    u8 field_0x68a;
    u8 field_0x68b;
    s16 mPlayerAngleY;
    f32 mPlayerDistanceLimit;
    u8 field_0x694;
    u8 field_0x695;
    s16 mAngle1[3];
    // s16 mAngle2;
    // s16 mAngle3;
    s16 mExecuteState;
    s16 mState;
    s8 mLoopFlag;
    s8 mParticleSpawned;
    u8 field_0x6a2;
    u8 field_0x6a3;
    u32 mHamonSet;
    u8 field_0x6a8[4];
    fpc_ProcID mpTK_Ball;
    dBgS_AcchCir mAcchChir;
    dBgS_ObjAcch mAcch;
    dCcD_Stts mStts;
    dCcD_Sph mSph;
    dCcU_AtInfo mAtInfo;
    bool mChildCreate;
    u8 field_0xa61[3];
};

STATIC_ASSERT(sizeof(e_tk_class) == 0xA64);

class daE_TK_HIO_c {
public:
    /* 807B81EC */ daE_TK_HIO_c();
    /* 807BA1C4 */ virtual ~daE_TK_HIO_c() {}

    /* 0x04 */ s8 m1;
    /* 0x08 */ f32 m2;
    /* 0x0C */ f32 m3;
    /* 0x10 */ f32 m4;
    /* 0x14 */ f32 m5;
    /* 0x18 */ f32 m6;
};

STATIC_ASSERT(sizeof(daE_TK_HIO_c) == 0x1C);

#endif /* D_A_E_TK_H */
