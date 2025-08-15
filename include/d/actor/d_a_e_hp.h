#ifndef D_A_E_HP_H
#define D_A_E_HP_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_HP_c
 * @brief Huge Poe?
 * 
 * @details 
 * 
 */
class daE_HP_c : public fopEn_enemy_c {
public:
    /* 806E5E30 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806E5ED0 */ static int JointCallBack(J3DJoint*, int);
    /* 806E5F1C */ int LampCtrlJoint(J3DJoint*, J3DModel*);
    /* 806E5FCC */ static int LampJointCallBack(J3DJoint*, int);
    /* 806E6018 */ int draw();
    /* 806E6514 */ void setBck(int, u8, f32, f32);
    /* 806E65C0 */ void setActionMode(int, int);
    /* 806E65CC */ bool mChkDistance(f32);
    /* 806E673C */ void damage_check();
    /* 806E6948 */ void executeWait();
    /* 806E6C74 */ void executeMove();
    /* 806E6ED8 */ void executeRetMove();
    /* 806E7228 */ void executeAttack();
    /* 806E7574 */ void executeDamage();
    /* 806E77C0 */ void executeDown();
    /* 806E7E94 */ void executeDead();
    /* 806E814C */ void action();
    /* 806E89C0 */ void mtx_set();
    /* 806E8DE0 */ void cc_set();
    /* 806E8FEC */ int execute();
    /* 806E9198 */ int _delete();
    /* 806E9240 */ int CreateHeap();
    /* 806E951C */ int create();
    /* 806E9900 */ daE_HP_c();

    /* 0x5AC */ request_of_phase_process_class mPhaseReq;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5B8 */ mDoExt_invisibleModel mInvModel;
    /* 0x5C0 */ J3DModel* mpModel;
    /* 0x5C4 */ mDoExt_McaMorf* mpMorf;
    /* 0x5C8 */ Z2CreatureEnemy mSound1;
    /* 0x66C */ Z2CreatureEnemy mSound2;
    /* 0x710 */ s32 mAction;
    /* 0x714 */ s32 movemode;
    /* 0x718 */ u32 field_0x718;
    /* 0x71C */ u8 field_0x71c;
    /* 0x71D */ u8 field_0x71d;
    /* 0x71E */ u8 field_0x71e;
    /* 0x71F */ u8 field_0x71f;
    /* 0x720 */ cXyz field_0x720;
    /* 0x72C */ cXyz field_0x72c;
    /* 0x738 */ cXyz field_0x738;
    /* 0x744 */ cXyz field_0x744;
    /* 0x750 */ cXyz field_0x750;
    /* 0x75C */ cXyz field_0x75c;
    /* 0x768 */ f32 field_0x768;
    /* 0x76C */ csXyz field_0x76c;
    /* 0x772 */ csXyz field_0x772;
    /* 0x778 */ s16 field_0x778;
    /* 0x77A */ u8 arg0;
    /* 0x77B */ u8 bitSw;
    /* 0x77C */ u8 field_0x77c;
    /* 0x780 */ s32 field_0x780;
    /* 0x784 */ u32 field_0x784;
    /* 0x788 */ u8 field_0x788;
    /* 0x789 */ u8 field_0x789;
    /* 0x78A */ u8 field_0x78a;
    /* 0x78B */ u8 field_0x78b;
    /* 0x78C */ u8 mNight;
    /* 0x78D */ u8 field_0x78d;
    /* 0x790 */ f32 field_0x790;
    /* 0x794 */ f32 field_0x794;
    /* 0x798 */ f32 field_0x798;
    /* 0x79C */ f32 mDisHani;
    /* 0x7A0 */ f32 field_0x7a0;
    /* 0x7A4 */ f32 field_0x7a4;
    /* 0x7A8 */ s16 field_0x7a8;
    /* 0x7AA */ s16 field_0x7aa;
    /* 0x7AC */ dBgS_AcchCir mAcchCir;
    /* 0x7EC */ dBgS_ObjAcch mObjAcch;
    /* 0x9C4 */ dCcD_Stts mStts;
    /* 0xA00 */ dCcD_Cyl mCyl1;
    /* 0xB3C */ dCcD_Cyl mCyl2;
    /* 0xC78 */ dCcD_Sph mSph;
    /* 0xDB0 */ dCcU_AtInfo mAtInfo;
    /* 0xDD4 */ s32 field_0xdd4[2];
    /* 0xDDC */ u32 field_0xddc;
    /* 0xDE0 */ cXyz field_0xde0;
    /* 0xDEC */ u8 field_0xdec[0xdf9 - 0xdec];
    /* 0xDF9 */ u8 field_0xdf9;
};

STATIC_ASSERT(sizeof(daE_HP_c) == 0xdfc);

class daE_HP_HIO_c : public JORReflexible {
public:
    /* 806E5DEC */ daE_HP_HIO_c();
    /* 806E9D38 */ virtual ~daE_HP_HIO_c() {}

#if DEBUG
    void genMessage(JORMContext*);
#endif

    s8 mChild;
    f32 modelSize;
    s16 waitTimeAfterAttack;
    s16 resurrectionTime;
    s16 attackDelayOnApproach;
    u8 rangeDisplay;
};


#endif /* D_A_E_HP_H */
