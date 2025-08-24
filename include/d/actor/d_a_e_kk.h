#ifndef D_A_E_KK_H
#define D_A_E_KK_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"


/**
 * @ingroup actors-enemies
 * @class daE_KK_c
 * @brief Chilfos
 *
 * @details Enemy - Ice Knight
 *
 */
class daE_KK_c : public fopEn_enemy_c {
public:
    /* 806FA75C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806FA7FC */ static int JointCallBack(J3DJoint*, int);
    /* 806FA848 */ int draw();
    /* 806FAA68 */ void setBck(int, u8, f32, f32);
    /* 806FAB14 */ void setWeaponBck(int, u8, f32, f32);
    /* 806FABC0 */ bool mCutTypeCheck(int);
    /* 806FAC80 */ void setActionMode(int, int);
    /* 806FAC8C */ void damage_check();
    /* 806FB2EC */ void nextActionCheck();
    /* 806FB4F4 */ bool way_gake_check();
    /* 806FB6C0 */ void mDeadEffSet(cXyz&);
    /* 806FB7D8 */ void executeWait();
    /* 806FB908 */ void executeIcicleWait();
    /* 806FBB1C */ void executeWalk();
    /* 806FBE98 */ void executeSpearThrow();
    /* 806FC370 */ void executeBackWalk();
    /* 806FC75C */ void executeYoroke();
    /* 806FC8F4 */ void executeGuard();
    /* 806FCA28 */ void executeDamage();
    /* 806FCC34 */ void executeAttack();
    /* 806FD068 */ void executeDead();
    /* 806FD294 */ void executeWeaponMove();
    /* 806FD930 */ void action();
    /* 806FDD0C */ void mtx_set();
    /* 806FDF0C */ void weapon_mtx_set();
    /* 806FE0B8 */ void cc_set();
    /* 806FE2A8 */ int execute();
    /* 806FE3E0 */ int _delete();
    /* 806FE480 */ int CreateHeap();
    /* 806FE6B8 */ int create();

private:
    /* 0x05AC */ request_of_phase_process_class mPhaseReq;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x05B8 */ mDoExt_McaMorfSO* mpWeaponMorfSO;
    /* 0x05BC */ Z2CreatureEnemy mCreatureSound;
    /* 0x0660 */ s32 mActionMode;
    /* 0x0664 */ s32 mMoveMode;
    /* 0x0668 */ u32 mModelShadow;
    /* 0x066C */ u32 mWeaponShadow;
    /* 0x0670 */ s16 mTimer;
    /* 0x0672 */ s16 field_0x672;
    /* 0x0674 */ s16 field_0x674;
    /* 0x0676 */ s16 mDistance;
    /* 0x0678 */ u8 mDamageTimer;
    /* 0x0679 */ u8 field_0x679;
    /* 0x067A */ u8 field_0x67a;
    /* 0x067B */ u8 field_0x67b;
    /* 0x067C */ u8 field_0x67c;
    /* 0x067D */ u8 field_0x67d;
    /* 0x067E */ u8 field_0x67e;
    /* 0x0680 */ cXyz field_0x680;
    /* 0x068C */ cXyz field_0x68c;
    /* 0x0698 */ cXyz field_0x698;
    /* 0x06A4 */ cXyz field_0x6a4;
    /* 0x06B0 */ cXyz field_0x6b0[3];
    /* 0x06D4 */ cXyz field_0x6d4[3];
    /* 0x06F8 */ cXyz field_0x6f8[6];
    /* 0x0740 */ cXyz field_0x740;
    /* 0x074C */ cXyz field_0x74c;
    /* 0x0758 */ s16 field_0x758;
    /* 0x075C */ f32 mMovingRange;
    /* 0x0760 */ f32 field_0x760;
    /* 0x0764 */ s32 field_0x764;
    /* 0x0768 */ s32 field_0x768;
    /* 0x076C */ u8 field_0x76c;
    /* 0x0770 */ dBgS_AcchCir mAcchCir;
    /* 0x07B0 */ dBgS_ObjAcch mObjAcch;
    /* 0x0988 */ dCcD_Stts mStts;
    /* 0x09C4 */ dCcD_Cyl mCyl;
    /* 0x0B00 */ dCcD_Sph mSph;
    /* 0x0C38 */ dCcU_AtInfo mAtInfo;
    /* 0x0C5C */ dCcD_Sph mSpheres[6];
    /* 0x13AC */ u8 mHIOInit;
    /* 0x13AD */ u8 field_0x13ad[0x13D4 - 0x13AD];
};

STATIC_ASSERT(sizeof(daE_KK_c) == 0x13d4);

#endif /* D_A_E_KK_H */
