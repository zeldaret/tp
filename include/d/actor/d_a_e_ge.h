#ifndef D_A_E_GE_H
#define D_A_E_GE_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_GE_c
 * @brief Guay
 *
 * @details
 *
 */
class daE_GE_c : public fopEn_enemy_c {
public:
    typedef void (daE_GE_c::*actionFunc)();

    /* 806C7AB8 */ void bckSet(int, f32, u8, f32);
    /* 806C7B5C */ bool bckCheck(int);
    /* 806C7BB8 */ int draw();
    /* 806C7CAC */ bool checkBeforeBg(int, f32);
    /* 806C80F8 */ void setActionMode(int);
    /* 806C8130 */ void damage_check();
    /* 806C8374 */ bool checkOtherAttacker();
    /* 806C83F8 */ bool searchNextAttacker();
    /* 806C84A0 */ bool checkCircleSpeedAdd(cXyz*, cXyz*);
    /* 806C8518 */ void setAddCalcSpeed(cXyz&, cXyz const&, f32, f32, f32, f32);
    /* 806C88C8 */ cXyz calcCircleFly(cXyz*, cXyz*, s16, f32, s16, f32);
    /* 806C89C0 */ void executeWait();
    /* 806C8C20 */ void executeFly();
    /* 806C9150 */ bool checkAttackPossible(s16, bool);
    /* 806C921C */ void executeAttack();
    /* 806C9F04 */ void setBackAnime(int);
    /* 806CA024 */ void executeBack();
    /* 806CAA34 */ void executeDown();
    /* 806CADCC */ void setSurpriseTime(s16);
    /* 806CADF4 */ void setSurprise();
    /* 806CAE58 */ void executeSurprise();
    /* 806CB280 */ void setCaw();
    /* 806CB2F0 */ void executeCaw();
    /* 806CB6FC */ void executeWind();
    /* 806CBAB8 */ void executeShield();
    /* 806CBC38 */ void action();
    /* 806CBE98 */ void mtx_set();
    /* 806CBEF0 */ void cc_set();
    /* 806CC068 */ int execute();
    /* 806CC1E4 */ int _delete();
    /* 806CC278 */ int CreateHeap();
    /* 806CC390 */ int create();

    s16 getSurpriseTime() { return mSurpriseTime; }

    s32 getActionMode() { return mActionMode; }

    s32 getMoveType() {  // needs to be s32 for some reason
        return mMoveType;
    }

    u8 getGroupNo() { return mGroupNo; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ dBgS_AcchCir mAcchCir;
    /* 0x69C */ dBgS_ObjAcch mObjAcch;
    /* 0x874 */ dCcD_Stts mStts;
    /* 0x8B0 */ dCcD_Sph mSphere;
    /* 0x9E8 */ dCcD_Sph mSphere2;
    /* 0xB20 */ dCcU_AtInfo mAtInfo;
    /* 0xB44 */ u32 mSmokeKey;
    /* 0xB48 */ u32 mSmokeKey2;
    /* 0xB4C */ cXyz field_0xb4c;
    /* 0xB58 */ f32 field_0xb58;
    /* 0xB5C */ f32 field_0xb5c;
    /* 0xB60 */ f32 field_0xb60;
    /* 0xB64 */ f32 field_0xb64;
    /* 0xB68 */ f32 field_0xb68;
    /* 0xB6C */ u8 field_0xB6C[0xB70 - 0xB6C];
    /* 0xB70 */ int mActionMode;
    /* 0xB74 */ int mPrevActionMode;
    /* 0xB78 */ int mMode;
    /* 0xB7C */ int mSubMode;
    /* 0xB80 */ int mBackAnimeTimer;
    /* 0xB84 */ u32 mShadowKey;
    /* 0xB88 */ s16 mHitDirectionY; // not really used
    /* 0xB8A */ s16 field_0xb8a;
    /* 0xB8C */ s16 field_0xb8c;
    /* 0xB8E */ s16 field_0xb8e[2];
    /* 0xB92 */ s16 mDamageCooldownTimer;
    /* 0xB94 */ s16 mSurpriseTime;
    /* 0xB96 */ s16 mAnmChangeTimer;
    /* 0xB98 */ s16 mCircleFlyScale;
    /* 0xB9A */ u8 mMoveType;
    /* 0xB9B */ u8 mGroupNo;
    /* 0xB9C */ u8 mSwitch;
    /* 0xB9D */ u8 field_0xb9d;
    /* 0xB9E */ u8 field_0xb9e;
    /* 0xB9F */ u8 mHIOInit;

    static actionFunc l_actionmenu[9];
};

STATIC_ASSERT(sizeof(daE_GE_c) == 0xBA0);

#endif /* D_A_E_GE_H */
