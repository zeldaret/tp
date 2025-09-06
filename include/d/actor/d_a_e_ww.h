#ifndef D_A_E_WW_H
#define D_A_E_WW_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_WW_c
 * @brief White Wolfos
 * 
 * @details 
 * 
*/

class daE_WW_c : public fopEn_enemy_c {
public:
    /* 807E7748 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807E7800 */ static int JointCallBack(J3DJoint*, int);
    /* 807E784C */ void setHeadAngle();
    /* 807E79D4 */ int draw();
    /* 807E7ADC */ void setBck(int, u8, f32, f32);
    /* 807E7B80 */ bool checkBck(int);
    /* 807E7BDC */ void setActionMode(int, int);
    /* 807E7C20 */ void damage_check();
    /* 807E7E74 */ void setRandamNumber();
    /* 807E7FCC */ s16 getNearPlayerAngle();
    /* 807E804C */ void setGroundAngle();
    /* 807E830C */ f32 checkCreateBg(cXyz);
    /* 807E8560 */ bool checkAttackWall();
    /* 807E8624 */ void setBlurEffect();
    /* 807E8700 */ void setAppearEffect();
    /* 807E8C54 */ bool checkSideStep();
    /* 807E8EEC */ void createWolf(cXyz, u8);
    /* 807E905C */ void executeMaster();
    /* 807E972C */ void executeWait();
    /* 807E99B8 */ int calcJumpSpeed();
    /* 807E9C1C */ void executeAttack();
    /* 807EA474 */ bool checkAttackStart();
    /* 807EA870 */ void executeChase();
    /* 807EB650 */ void executeDamage();
    /* 807EB964 */ bool checkMoveOut();
    /* 807EBAE0 */ void executeMoveOut();
    /* 807EC940 */ bool checkWalkStart();
    /* 807ECE58 */ void executeWalk();
    /* 807ED674 */ void eWW_posMoveF();
    /* 807ED78C */ void action();
    /* 807EDA78 */ void mtx_set();
    /* 807EDB00 */ void cc_set();
    /* 807EDCC4 */ int execute();
    /* 807EDE8C */ bool calcMoveDir(s16*, s16);
    /* 807EE440 */ int _delete();
    /* 807EE4D4 */ int CreateHeap();
    /* 807EE63C */ int create();

    u8 isAttack() { return field_0x756; }
    void setAttack() { mActionMode = 10; }
    f32 const getSpeedF() { return speedF; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ cXyz field_0x65c; // Under ground position ? see jump speed calc
    /* 0x668 */ cXyz field_0x668;
    /* 0x674 */ csXyz field_0x674; // Probably csXyz
    /* 0x67A */ s16 field_0x67a; // Head angle x ? csXyz ???
    /* 0x67C */ s16 field_0x67c; // Head angle y ?
    /* 0x67E */ s16 field_0x67e; // Head angle z ?
    /* 0x680 */ fpc_ProcID mChildID[10];
    /* 0x6A8 */ f32 field_0x6a8; // Radius draw circle debug ?
    /* 0x6AC */ f32 field_0x6ac; // Off set draw circle debug ??
    /* 0x6B0 */ f32 mDistCheckModifier;
    /* 0x6B4 */ u8 field_0x6b4; // Arg0 ??
    /* 0x6B5 */ u8 field_0x6b5;
    /* 0x6B6 */ u8 field_0x6b6;
    /* 0x6B7 */ u8 field_0x6b7;
    /* 0x6B8 */ s32 mAction;
    /* 0x6BC */ s32 mActionMode; // Which wolf does action ? 1 jump ? 0 init ?, 26 Hide ? check sound action just before, check execute chase for cases in switch
    /* 0x6C0 */ int field_0x6c0; // Side step ? 0-> step left, 1 step right
    /* 0x6C4 */ s32 field_0x6c4; // Active index for the int arrays later ? Change to int ?
    /* 0x6C8 */ s32 field_0x6c8;
    /* 0x6CC */ s16 field_0x6cc; // angleY storage ?
    /* 0x6CE */ s16 field_0x6ce;
    /* 0x6D0 */ int field_0x6d0;
    /* 0x6D4 */ int field_0x6d4[10]; // Existing wolf ?
    /* 0x6FC */ int field_0x6fc[10];
    /* 0x724 */ u16 field_0x724; // Linked with getting damage to link
    /* 0x728 */ int field_0x728;
    /* 0x72C */ int field_0x72c;
    /* 0x730 */ int field_0x730;
    /* 0x734 */ int field_0x734; // Attack interval ?
    /* 0x738 */ int field_0x738;
    /* 0x73C */ int field_0x73c;
    /* 0x740 */ int field_0x740;
    /* 0x744 */ int field_0x744[2];
    /* 0x74C */ int field_0x74c;
    /* 0x750 */ s16 field_0x750[3];
    /* 0x756 */ u8 field_0x756;
    /* 0x757 */ u8 field_0x757;
    /* 0x758 */ u8 field_0x758;
    /* 0x759 */ u8 field_0x759;
    /* 0x75A */ u8 field_0x75a;
    /* 0x75B */ u8 field_0x75b;
    /* 0x75C */ u8 field_0x75c;
    /* 0x75D */ bool field_0x75d;
    /* 0x760 */ dBgS_AcchCir mAcchCir;
    /* 0x7A0 */ dBgS_ObjAcch mObjAcch;
    /* 0x994 */ dCcD_Stts mCcStts;
    /* 0x9B4 */ dCcD_Sph mSph1[2];
    /* 0xC24 */ dCcD_Sph mSph2[2];
    /* 0xE94 */ dCcU_AtInfo mAtInfo;
    /* 0xEB8 */ u8 field_0xeb8[0xec0 - 0xeb8];
    /* 0xEC0 */ u32 mParticleKey;
    /* 0xEC4 */ u8 field_0xec4;
};

STATIC_ASSERT(sizeof(daE_WW_c) == 0xec8);

#endif /* D_A_E_WW_H */
