#ifndef D_A_E_HZ_H
#define D_A_E_HZ_H

#include "d/actor/d_a_boomerang.h"
#include "d/actor/d_a_nbomb.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"


/**
 * @ingroup actors-enemies
 * @class daE_HZ_c
 * @brief Tile Worm
 *
 * @details Enemy - Tile Worm
 *
 */
class daE_HZ_c : public fopEn_enemy_c {
public:
    /* 806EA690 */ void setBck(int, u8, f32, f32);
    /* 806EA734 */ bool checkBck(int);
    /* 806EA790 */ int draw();
    /* 806EAADC */ void setActionMode(int);
    /* 806EAB68 */ bool checkHideStart();
    /* 806EAEDC */ bool checkAttackStart();
    /* 806EB05C */ bool checkArrowCharge();
    /* 806EB0A4 */ void setTgSetBit(int);
    /* 806EB0FC */ bool isWait();
    /* 806EB13C */ void checkFall();
    /* 806EB2E8 */ void setCloseSmokeEffect();
    /* 806EB3EC */ void executeWait();
    /* 806EB7B0 */ f32 getHideSpeed();
    /* 806EB818 */ void executeHide();
    /* 806EBD44 */ void executeAttack();
    /* 806EC068 */ void initBackWalk();
    /* 806EC348 */ void executeAway();
    /* 806ECAEC */ void setWindEnd();
    /* 806ECB64 */ void executeWind();
    /* 806ED5B0 */ void executeChance();
    /* 806ED6C8 */ void initRollDamage();
    /* 806ED7A8 */ bool doRollDamage();
    /* 806ED8A4 */ void executeDamage();
    /* 806EDAA8 */ void executeDeath();
    /* 806EDDCC */ void setWindChanceEnd();
    /* 806EDDE8 */ void executeWindChance();
    /* 806EE120 */ void executeWindWalk();
    /* 806EE2A4 */ void setWaterEffect();
    /* 806EE3BC */ void executeWaterDeath();
    /* 806EE820 */ void executeDeathWait();
    /* 806EE978 */ void damage_check();
    /* 806EEE10 */ bool checkWaterSurface();
    /* 806EEEE4 */ void action();
    /* 806EF144 */ void mtx_set();
    /* 806EF2C8 */ void cc_set();
    /* 806EF46C */ int execute();
    /* 806EF6B4 */ int _delete();
    /* 806EF770 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806EF880 */ static int JointCallBack(J3DJoint*, int);
    /* 806EF8CC */ int CreateHeap();
    /* 806EFB54 */ void setInitPos();
    /* 806EFC18 */ int create();

private:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ request_of_phase_process_class mPhaseReq2;
    /* 0x5BC */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5C0 */ J3DModel* mpModel;
    /* 0x5C4 */ J3DModel* mpModel2;
    /* 0x5C8 */ Z2CreatureEnemy mSound;
    /* 0x66C */ daBoomerang_c* mpBoomerangActor;
    /* 0x670 */ daNbomb_c* mpBombActor;
    /* 0x674 */ daObjCarry_c* mpCarryActor;
    /* 0x678 */ cXyz field_0x678;
    /* 0x684 */ cXyz mSmokeEffectPosition;
    /* 0x690 */ csXyz field_0x690;
    /* 0x696 */ csXyz field_0x696;
    /* 0x69C */ csXyz field_0x69c;
    /* 0x6A4 */ f32 mPlayerDist;
    /* 0x6A8 */ f32 field_0x6a8;
    /* 0x6AC */ f32 mGroundCross;
    /* 0x6B0 */ s16 mPlayerAngleY;
    /* 0x6B2 */ s16 field_0x6b2;
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B6 */ s16 field_0x6b6;
    /* 0x6B8 */ u8 field_0x6B8[0x6BC - 0x6B8];
    /* 0x6BC */ char* mpName;
    /* 0x6C0 */ s32 mAction;
    /* 0x6C4 */ s32 mPrevAction;
    /* 0x6C8 */ s32 mMode;  // That's just a guess. Might need a better name for it's usage
    /* 0x6CC */ s32 field_0x6cc;
    /* 0x6D0 */ u32 mShadowKey;
    /* 0x6D4 */ s16 mDamageDeathTimer;
    /* 0x6D6 */ s16 mWaitTimer;
    /* 0x6D8 */ s16 mPiyoriTimer;
    /* 0x6DA */ s16 mAttackStartTimer;
    /* 0x6DC */ s16 mRetentionBeforeStretchTimer;
    /* 0x6DE */ s16 mAttackCooldownTimer;
    /* 0x6E0 */ s16 mCameraOffTimer;
    /* 0x6E2 */ s16 mCameraOnTimer;
    /* 0x6E4 */ u8 field_0x6e4;
    /* 0x6E5 */ u8 mSetModelAnmMtx;
    /* 0x6E6 */ u8 field_0x6E6[0x6E7 - 0x6E6];
    /* 0x6E7 */ u8 mDisableShadow;  // Shadow is active when this is false
    /* 0x6E8 */ u8 field_0x6e8;
    /* 0x6E9 */ u8 field_0x6e9;
    /* 0x6EA */ u8 field_0x6ea;
    /* 0x6EB */ u8 mParam;
    /* 0x6EC */ u8 field_0x6EC[0x6ED - 0x6EC];
    /* 0x6ED */ u8 mReadyNewAction;
    /* 0x6F0 */ f32 mColor;
    /* 0x6F4 */ u8 mReadyChangeColor;
    /* 0x6F8 */ dKy_tevstr_c mTevStr;
    /* 0xA80 */ u8 field_0xA80[0xA84 - 0xA80];
    /* 0xA84 */ Mtx mMtx;
    /* 0xAB4 */ dBgW* mpBgW;
    /* 0xAB8 */ dBgS_AcchCir mAcchCir;
    /* 0xAF8 */ dBgS_ObjAcch mObjAcch;
    /* 0xCD0 */ dCcD_Stts mStts;
    /* 0xD0C */ dCcD_Sph mSpheres[4];
    /* 0x11EC */ dCcU_AtInfo mAtInfo;
    /* 0x1210 */ u32 mSmokeKey;
    /* 0x1214 */ u32 mSmokeKey2;
    /* 0x1218 */ u32 mJumpEffects[2];
    /* 0x1220 */ u32 mWaterEffects[4];
    /* 0x1230 */ u32 mEffect;
    /* 0x1234 */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daE_HZ_c) == 0x1238);

#endif /* D_A_E_HZ_H */
