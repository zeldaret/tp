#ifndef D_A_E_TK_BALL_H
#define D_A_E_TK_BALL_H

#include "f_op/f_op_actor.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-enemies
 * @class e_tk_ball_class
 * @brief Fire/Water Toadpoli Ball
 *
 * @details Projectiles spat by Toadpoli enemies at the player.
 * Two types exist: fire and water. Link can deflect these balls
 * with his shield or slice them with his sword. When deflected
 * while locked on to the enemy, they will return to the Toadpoli
 * that fired them.
 */

class e_tk_ball_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ u8 mType;
    /* 0x5B5 */ u8 mArg1;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ Z2SoundObjSimple mSound;
    /* 0x5DC */ s16 mLifetime;
    /* 0x5DE */ s16 mAction;
    /* 0x5E0 */ s16 mMode;
    /* 0x5E2 */ s16 mActionTimer[2];
    /* 0x5E6 */ s16 mInvincibilityTimer;
    /* 0x5E8 */ cXyz mInitalPosition;
    /* 0x5F4 */ f32 mInitalDistance;
    /* 0x5F8 */ f32 mArcHeight;
    /* 0x5FC */ dCcD_Stts mStts;
    /* 0x638 */ dCcD_Sph mAtSph;
    /* 0x770 */ dCcD_Sph mTgSph;
    /* 0x8A8 */ u32 mParticleKey[2];
    /* 0x8B0 */ cXyz mParticleDirection;
    /* 0x8BC */ cXyz mPreviousPosition;
    /* 0x8C8 */ bool mSuspended;
};

STATIC_ASSERT(sizeof(e_tk_ball_class) == 0x8CC);

#endif /* D_A_E_TK_BALL_H */
