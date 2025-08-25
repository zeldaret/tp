#ifndef D_A_E_OT_H
#define D_A_E_OT_H

#include "SSystem/SComponent/c_phase.h"
#include "d/actor/d_a_e_dt.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class daE_OT_c
 * @brief Toado
 * 
 * @details 
 * 
 */
class daE_OT_c : public fopEn_enemy_c {
public:
    /* 8073A314 */ int draw();
    /* 8073A454 */ void setBck(int, u8, f32, f32);
    /* 8073A4F8 */ void setActionMode(int, int);
    /* 8073A510 */ void damage_check();
    /* 8073A7B0 */ void checkWaterSurface();
    /* 8073A838 */ void setWaterEffect();
    /* 8073A99C */ void setEggBreakEffect();
    /* 8073AA40 */ void setDeathLightEffect();
    /* 8073AB38 */ void setEggStay();
    /* 8073AC14 */ void executeEgg();
    /* 8073AF70 */ void executeBorn();
    /* 8073B0D0 */ void executeAttack();
    /* 8073B428 */ void executePanic();
    /* 8073B854 */ void executeDamage();
    /* 8073BB9C */ void action();
    /* 8073BD78 */ void mtx_set();
    /* 8073BE10 */ void cc_set();
    /* 8073BF84 */ int execute();
    /* 8073C058 */ int _delete();
    /* 8073C0EC */ int CreateHeap();
    /* 8073C31C */ cPhs__Step create();

    int getChildNo() { return mChildNo; }
    int getActionMode() { return mAction; }
    void setShakeEgg() { mMode = 4; }
    void setDeleteEgg() { mMode = 6; }
    void setFallEgg() { mMode = 8; }

    enum Action {
        /* 0x0 */ ACT_EGG,
        /* 0x1 */ ACT_BORN,
        /* 0x2 */ ACT_ATTACK,
        /* 0x3 */ ACT_PANIC,
        /* 0x4 */ ACT_DAMAGE,
    };

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5B8 */ J3DModel* mpEggModel;
    /* 0x5BC */ mDoExt_btkAnm* mpEggAnm;
    /* 0x5C0 */ Z2CreatureEnemy mSound;
    /* 0x664 */ cXyz mEggPos;
    /* 0x670 */ daE_DT_c* mpToadActor;
    /* 0x674 */ int mAction;
    /* 0x678 */ int mMode;
    /* 0x67C */ u32 mShadowKey;
    /* 0x680 */ f32 mScale;
    /* 0x684 */ f32 mAnmSpeed;
    /* 0x688 */ f32 mWaterSurface;
    /* 0x68C */ int mChildNo;
    /* 0x690 */ s16 mTargetAngleY;
    /* 0x692 */ u8 mDemoMode;
    /* 0x693 */ bool mHatched;
    /* 0x694 */ u8 mTimer1;
    /* 0x695 */ u8 mTimer2;
    /* 0x698 */ dBgS_AcchCir mAcchCir;
    /* 0x6D8 */ dBgS_ObjAcch mAcch;
    /* 0x8B0 */ dCcD_Stts mCcStts;
    /* 0x8EC */ dCcD_Sph mCcSph;
    /* 0xA24 */ dCcD_Sph mAtSph;
    /* 0xB5C */ dCcU_AtInfo mAtInfo;
    /* 0xB80 */ u32 mWaterEffectKey[4];
    /* 0xB90 */ u32 mRippleKey;
    /* 0xB94 */ bool mHIOInit;
};

STATIC_ASSERT(sizeof(daE_OT_c) == 0xb98);

#endif /* D_A_E_OT_H */
