#ifndef D_A_E_TT_H
#define D_A_E_TT_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_TT_c
 * @brief Tektite
 *
 * @details
 *
 */
class daE_TT_c : public fopEn_enemy_c {
public:
    /* 807BD7EC */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807BD8E0 */ static int JointCallBack(J3DJoint*, int);
    /* 807BD92C */ int draw();
    /* 807BDAE0 */ void setBck(int, u8, f32, f32);
    /* 807BDB84 */ void calcHitGroundSpeed();
    /* 807BDBE4 */ void setActionMode(int, int);
    /* 807BDC10 */ int getCutType();
    /* 807BDC50 */ void damage_check();
    /* 807BDE5C */ void checkWaterSurface();
    /* 807BDF60 */ void checkFootGround();
    /* 807BE2A8 */ void setBodyLandEffect();
    /* 807BE438 */ void setWaterEffect();
    /* 807BE708 */ void setDeathEyeEffect();
    /* 807BE99C */ void setDeathFootEffect();
    /* 807BEBAC */ bool checkPlayerSearch();
    /* 807BED70 */ void executeWait();
    /* 807BF358 */ void executeChase();
    /* 807BF914 */ void executeAttack();
    /* 807BFD38 */ void setDamageInit();
    /* 807BFD60 */ void executeDamage();
    /* 807BFFF4 */ void executeDeath();
    /* 807C033C */ void executeOutRange();
    /* 807C0530 */ void executeFirstAttack();
    /* 807C0C28 */ void action();
    /* 807C0E10 */ void mtx_set(int);
    /* 807C0EE8 */ void cc_set();
    /* 807C1024 */ int execute();
    /* 807C1164 */ int _delete();
    /* 807C121C */ int CreateHeap();
    /* 807C13B4 */ int create();

private:
    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ request_of_phase_process_class mPhaseReq2;
    /* 0x5BC */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5C0 */ Z2CreatureEnemy mSound;
    /* 0x664 */ dBgS_ObjGndChk_All mGndChk;
    /* 0x6B8 */ int mAction;
    /* 0x6BC */ int mMode;
    /* 0x6C0 */ u32 mShadowKey;
    /* 0x6C4 */ u8 field_0x6C4[0x6C8 - 0x6C4];
    /* 0x6C8 */ f32 mDeathColor;
    /* 0x6CC */ f32 mTransOffsetVelocity;
    /* 0x6D0 */ f32 mTransOffset;
    /* 0x6D4 */ f32 field_0x6d4;
    /* 0x6D8 */ s16 mFootJoints[4];
    /* 0x6E0 */ s16 field_0x6e0;
    /* 0x6E4 */ char* mpResName;
    /* 0x6E8 */ u16 mDamageCooldownTimer;
    /* 0x6EA */ u8 mGenericTimer;
    /* 0x6EC */ int mAttackTimer;
    /* 0x6F0 */ int field_0x6f0;
    /* 0x6F4 */ u8 mPlayerCutTimer;
    /* 0x6F5 */ u8 mPlayerCutType;
    /* 0x6F6 */ u8 mTektiteType;
    /* 0x6F7 */ u8 field_0x6f7;
    /* 0x6F8 */ u8 mPlayerOnHorse;
    /* 0x6F9 */ u8 mSwitchFlag;
    /* 0x6FA */ u8 mTektiteOnWater;
    /* 0x6FB */ u8 field_0x6fb;  // only set, not used
    /* 0x6FC */ dBgS_AcchCir mAcchCir;
    /* 0x73C */ dBgS_ObjAcch mObjAcch;
    /* 0x914 */ dCcD_Stts mStts;
    /* 0x950 */ dCcD_Sph mSphere;
    /* 0xA88 */ dCcU_AtInfo mAtInfo;
    /* 0xAAC */ u32 mPolyColors[4];
    /* 0xABC */ u32 mDeathParticle;
    /* 0xAC0 */ u32 mDeathParticle2;
    /* 0xAC4 */ u8 field_0xAC4[0xACC - 0xAC4];
    /* 0xACC */ u8 mHIOInit;
};

STATIC_ASSERT(sizeof(daE_TT_c) == 0xad0);

#endif /* D_A_E_TT_H */
