#ifndef D_A_E_WW_H
#define D_A_E_WW_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_WW_c
 * @brief White Wolfos
 * 
 * @details 
 * 
 */

enum Action_ww {
    /* 0x0 */ ACTION_EXECUTE_MASTER,
    /* 0x1 */ ACTION_EXECUTE_WAIT,
    /* 0x2 */ ACTION_EXECUTE_ATTACK,
    /* 0x3 */ ACTION_EXECUTE_CHASE,
    /* 0x4 */ ACTION_EXECUTE_DAMAGE,
    /* 0x5 */ ACTION_EXECUTE_MOVE_OUT,
    /* 0x6 */ ACTION_EXECUTE_WALK,
};

enum Animation {
    /* 0x04 */ ANM_APPEAR = 4,
    /* 0x05 */ ANM_BACKSTEP,
    /* 0x06 */ ANM_DAMAGE,
    /* 0x07 */ ANM_DEAD,
    /* 0x08 */ ANM_JUMP_ATTACKA,
    /* 0x09 */ ANM_JUMP_ATTACKB,
    /* 0x0A */ ANM_JUMP_ATTACKC,
    /* 0x0B */ ANM_RUN,
    /* 0x0C */ ANM_SIDESTEP_LEFT,
    /* 0x0D */ ANM_SIDESTEP_RIGHT,
    /* 0x0E */ ANM_TURN,
    /* 0x0F */ ANM_WAIT,
    /* 0x10 */ ANM_WALK,
};

class daE_WW_c : public fopEn_enemy_c {
public:
    // daE_WW_c() {}

    /* 807E7748 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807E7800 */ int JointCallBack(J3DJoint*, int);
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
    /* 807E8560 */ int checkAttackWall();
    /* 807E8624 */ void setBlurEffect();
    /* 807E8700 */ void setAppearEffect();
    /* 807E8C54 */ int checkSideStep();
    /* 807E8EEC */ void createWolf(cXyz, u8);
    /* 807E905C */ void executeMaster();
    /* 807E972C */ void executeWait();
    /* 807E99B8 */ int calcJumpSpeed();
    /* 807E9C1C */ void executeAttack();
    /* 807EA474 */ int checkAttackStart();
    /* 807EA870 */ void executeChase();
    /* 807EB650 */ void executeDamage();
    /* 807EB964 */ int checkMoveOut();
    /* 807EBAE0 */ void executeMoveOut();
    /* 807EC940 */ int checkWalkStart();
    /* 807ECE58 */ void executeWalk();
    /* 807ED674 */ void eWW_posMoveF();
    /* 807ED78C */ void action();
    /* 807EDA78 */ void mtx_set();
    /* 807EDB00 */ void cc_set();
    /* 807EDCC4 */ int execute();
    /* 807EDE8C */ int calcMoveDir(s16*, s16);
    /* 807EE440 */ int _delete();
    /* 807EE4D4 */ int CreateHeap();
    /* 807EE63C */ int create();

    u8 isAttack() { return field_0x756; }
    void setAttack() { mAttackActionID = 10; }
    f32 const getSpeedF() { return speedF; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    // /* 0x5AC */ char pad5AC[8];
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    // /* 0x5B8 */ char pad5B8[0xA4];
    /* 0x65C */ cXyz field_0x65C; // Under ground position ? see jump speed calc
    // /* 0x660 */ f32 field_0x660;
    // /* 0x664 */ f32 field_0x664;
    /* 0x668 */ cXyz field_0x668;
    // /* 0x66C */ f32 field_0x66C;
    // /* 0x670 */ f32 field_0x670;
    /* 0x674 */ csXyz field_0x674; // Probably csXyz
    // /* 0x676 */ char pad676[2];
    // /* 0x678 */ s16 field_0x678;
    /* 0x67A */ s16 field_0x67A; // Head angle x ? csXyz ???
    /* 0x67C */ s16 field_0x67C; // Head angle y ?
    /* 0x67E */ s16 field_0x67E; // Head angle z ?
    /* 0x680 */ fpc_ProcID mChildID[10];
    // /* 0x684 */ char pad684[0x24];
    /* 0x6A8 */ f32 field_0x6A8; // Radius draw circle debug ?
    /* 0x6AC */ f32 field_0x6AC; // Off set draw circle debug ??
    /* 0x6B0 */ f32 mDistCheckModifier;
    /* 0x6B4 */ u8 field_0x6B4; // Arg0 ??
    /* 0x6B5 */ u8 field_0x6B5;
    /* 0x6B6 */ u8 field_0x6B6;
    /* 0x6B7 */ u8 field_0x6B7;
    /* 0x6B8 */ s32 mActionID;
    /* 0x6BC */ s32 mAttackActionID; // Which wolf does action ? 1 jump ? 0 init ?, 26 Hide ? check sound action just before, check execute chase for cases in switch
    /* 0x6C0 */ int field_0x6C0; // Side step ? 0-> step left, 1 step right
    /* 0x6C4 */ s32 field_0x6C4; // Active index for the int arrays later ? Change to int ?
    /* 0x6C8 */ s32 field_0x6C8;
    /* 0x6CC */ s16 field_0x6CC; // angleY storage ?
    /* 0x6CE */ s16 field_0x6CE;
    /* 0x6D0 */ int field_0x6D0;
    /* 0x6D4 */ int field_0x6D4[10]; // Existing wolf ?
    /* 0x6FC */ int field_0x6FC[10];
    /* 0x724 */ u16 field_0x724; // Linked with getting damage to link
    // /* 0x726 */ char pad726[2];
    /* 0x728 */ int field_0x728;
    /* 0x72C */ int field_0x72C;
    /* 0x730 */ int field_0x730;
    /* 0x734 */ int field_0x734; // Attack interval ?
    /* 0x738 */ int field_0x738;
    /* 0x73C */ int field_0x73C;
    /* 0x740 */ int field_0x740;
    /* 0x744 */ char pad744[4];
    /* 0x748 */ int field_0x748;
    /* 0x74C */ int field_0x74C;
    /* 0x750 */ char pad750[2];
    /* 0x752 */ s16 field_0x752;
    /* 0x754 */ s16 field_0x754;
    /* 0x756 */ u8 field_0x756;
    /* 0x757 */ u8 field_0x757;
    /* 0x758 */ u8 field_0x758;
    /* 0x759 */ u8 field_0x759;
    /* 0x75A */ u8 field_0x75A;
    /* 0x75B */ u8 field_0x75B; // Used in posMoveF
    /* 0x75C */ u8 field_0x75C;
    /* 0x75D */ s8 field_0x75D;
    /* 0x75E */ char pad75E[2];                     /* maybe part of field_0x75D[3]? */
    /* 0x760 */ dBgS_AcchCir mAcchCir;
    // /* 0x760 */ char pad760[0x40];
    /* 0x7A0 */ dBgS_ObjAcch mAcch;
    // /* 0x7A0 */ char pad7A0[0x2C];
    // /* 0x7CC */ s32 field_0x7CC;
    // /* 0x7D0 */ char pad7D0[0x68];                  /* maybe part of field_0x7CC[0x1B]? */
    // /* 0x838 */ f32 field_0x838;
    // /* 0x83C */ char pad83C[0x54];                  /* maybe part of field_0x838[0x16]? */
    // /* 0x890 */ cBgS_PolyInfo field_0x890;
    // /* 0x890 */ char pad890[0xE8];
    // /* 0x978 */ cXyz field_0x978;
    // /* 0x978 */ char pad978[0x18];
    // /* 0x990 */ cXyz* field_0x990;
    /* 0x994 */ dCcD_Stts mCcStts;
    // /* 0x994 */ char pad994[0x20];
    /* 0x9B4 */ dCcD_Sph mSph1[2];
    // /* 0x9B4 */ char pad9B4[0x44];
    // /* 0x9F8 */ cXyz *field_0x9F8;
    // /* 0x9FC */ char pad9FC[0xDC];                  /* maybe part of field_0x9F8[0x38]? */
    // /* 0xAD8 */ cM3dGSph field_0xAD8;
    // /* 0xAD8 */ char padAD8[0x14];
    // /* 0xAEC */ cCcD_Obj field_0xAEC;
    // /* 0xAEC */ char padAEC[0x44];
    // /* 0xB30 */ cXyz *field_0xB30;
    // /* 0xB34 */ char padB34[0x14];                  /* maybe part of field_0xB30[6]? */
    // /* 0xB48 */ s32 field_0xB48;
    // /* 0xB4C */ char padB4C[0xC4];                  /* maybe part of field_0xB48[0x32]? */
    // /* 0xC10 */ cM3dGSph field_0xC10;
    // /* 0xC10 */ char padC10[0x14];
    /* 0xC24 */ dCcD_Sph mSph2[2];
    // /* 0xC24 */ char padC24[0x18];
    // /* 0xC3C */ s32 field_0xC3C;
    // /* 0xC40 */ char padC40[0x28];                  /* maybe part of field_0xC3C[0xB]? */
    // /* 0xC68 */ cXyz *field_0xC68;
    // /* 0xC6C */ char padC6C[0x54];                  /* maybe part of field_0xC68[0x16]? */
    // /* 0xCC0 */ s32 field_0xCC0;
    // /* 0xCC4 */ char padCC4[0x84];                  /* maybe part of field_0xCC0[0x22]? */
    // /* 0xD48 */ cM3dGSph field_0xD48;
    // /* 0xD48 */ char padD48[0x14];
    // /* 0xD5C */ dCcD_GObjInf field_0xD5C;
    // /* 0xD5C */ char padD5C[0x18];
    // /* 0xD74 */ s32 field_0xD74;
    // /* 0xD78 */ char padD78[0x28];                  /* maybe part of field_0xD74[0xB]? */
    // /* 0xDA0 */ cXyz *field_0xDA0;
    // /* 0xDA4 */ char padDA4[0x54];                  /* maybe part of field_0xDA0[0x16]? */
    // /* 0xDF8 */ s32 field_0xDF8;
    // /* 0xDFC */ char padDFC[0x84];                  /* maybe part of field_0xDF8[0x22]? */
    // /* 0xE80 */ cM3dGSph field_0xE80;
    // /* 0xE80 */ char padE80[0x14];
    /* 0xE94 */ cCcD_Obj* mpHitObj; // Probably mCollider
    /* 0xE98 */ char padE98[4];
    /* 0xE9C */ Z2CreatureEnemy* mpSound;
    /* 0xEA0 */ char padEA0[2];
    /* 0xEA2 */ s16 field_0xEA2;
    /* 0xEA4 */ char padEA4[0xC];                   /* maybe part of field_0xEA2[7]? */
    /* 0xEB0 */ u16 field_0xEB0;
    /* 0xEB2 */ s8 field_0xEB2;
    /* 0xEB3 */ s8 field_0xEB3;
    /* 0xEB4 */ char padEB4[0xC];                   /* maybe part of field_0xEB3[0xD]? */
    /* 0xEC0 */ u32 mParticleKey; // mParticleKey ??
    /* 0xEC4 */ u8 field_0xEC4;
};

STATIC_ASSERT(sizeof(daE_WW_c) == 0xec8);

class daE_WW_HIO_c : public JORReflexible {
public:
    /* 807E76EC */ daE_WW_HIO_c();
    /* 807EEEBC */ virtual ~daE_WW_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 mModelSize;
    /* 0x0C */ f32 mAttackInterval;
    /* 0x10 */ f32 mRunAnm;
    /* 0x14 */ f32 mWalkAnm;
    /* 0x18 */ f32 mRunSpeed;
    /* 0x1C */ f32 mWolfEscapeSpeed;
    /* 0x20 */ f32 mLinkEscapeSpeed;
    /* 0x24 */ u8 mMoveRangeDebugDisp;
};


#endif /* D_A_E_WW_H */
