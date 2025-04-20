#ifndef D_A_E_TK_BALL_H
#define D_A_E_TK_BALL_H

#include "f_op/f_op_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-enemies
 * @class e_tk_ball_class
 * @brief Fire/Water Toadpoli Ball
 *
 * @details
 *
 */

class e_tk_ball_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ u8 mFireTypeFlag;
    /* 0x5B5 */ u8 mArg0;
    /* 0x5B6 */ u8 field4_0x5b6[2];
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ Z2SoundObjSimple mSound;
    /* 0x5DC */ s16 mCnt;
    /* 0x5DE */ s16 mAction;
    /* 0x5E0 */ s16 mMoveState;
    /* 0x5E2 */ s16 mSpeed;
    /* 0x5E4 */ s16 mImpactEffect; // TODO into array with below
    /* 0x5E6 */ s16 mLifetime;
    /* 0x5E8 */ cXyz mPos0;
    /* 0x5F4 */ f32 mMinDist;
    /* 0x5F8 */ f32 mPosYOffset;
    /* 0x5FC */ dCcD_Stts mStts;
    /* 0x638 */ dCcD_Sph mSph1;
    /* 0x770 */ dCcD_Sph mSph2;
    /* 0x8A8 */ int mArr[2];
    /* 0x8B0 */ cXyz mPos1;
    /* 0x8BC */ cXyz mPos2;
    /* 0x8C8 */ bool mDrawFlag;
};

STATIC_ASSERT(sizeof(e_tk_ball_class) == 0x8CC);

#endif /* D_A_E_TK_BALL_H */
