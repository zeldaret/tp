#ifndef D_A_B_TN_H
#define D_A_B_TN_H

#include "f_op/f_op_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_uty.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-enemies
 * @class daB_TN_c
 * @brief Darknut
 *
 * @details Temple of Time dungeon mini-boss.
 *
 */
 
class daB_TN_c : public fopEn_enemy_c {
public:
    enum daB_TN_ACTION1 {
        /* 0x0 */ ACT_ROOMDEMO,
        /* 0x1 */ ACT_OPENING,
        /* 0x2 */ ACT_WAITH,
        /* 0x3 */ ACT_CHASEH,
        /* 0x4 */ ACT_ATTACKH,
        /* 0x5 */ ACT_ATTACKSHIELDH,
        /* 0x6 */ ACT_GUARDH,
        /* 0x7 */ ACT_DAMAGEH,
        /* 0x8 */ ACT_CHANGEDEMO,
        /* 0x9 */ ACT_CHASEL,
        /* 0xA */ ACT_ATTACKL,
        /* 0xB */ ACT_ATTACKSHIELDL,
        /* 0xC */ ACT_GUARDL,
        /* 0xD */ ACT_DAMAGEL,
        /* 0xE */ ACT_ENDING,
        /* 0xF */ ACT_YOROKE,
    };

    enum daB_TN_ACTION2 {
        /* 0x0 */ ACTION2_0_e,
        /* 0x1 */ ACTION2_1_e,
        /* 0x2 */ ACTION2_2_e,
        /* 0x3 */ ACTION2_3_e,
        /* 0x4 */ ACTION2_4_e,
        /* 0x5 */ ACTION2_5_e,
        /* 0x6 */ ACTION2_6_e,
        /* 0x7 */ ACTION2_7_e,
        /* 0x8 */ ACTION2_8_e,
        /* 0x9 */ ACTION2_9_e,
        /* 0xA */ ACTION2_10_e,
        /* 0xB */ ACTION2_11_e,
        /* 0xC */ ACTION2_12_e,
        /* 0xD */ ACTION2_13_e,
        /* 0xE */ ACTION2_14_e,
        /* 0xF */ ACTION2_15_e,
        /* 0x10 */ ACTION2_16_e,
        /* 0x11 */ ACTION2_17_e,
        
        /* 0x14 */ ACTION2_20_e = 0x14,
        /* 0x40 */ ACTION2_70_e = 0x40,
        /* 0x46 */ ACTION2_76_e = 0x46,
        /* 0x64 */ ACTION2_100_e = 100,
        /* 0x65 */ ACTION2_101_e,
        /* 0x66 */ ACTION2_102_e,
        /* 0x67 */ ACTION2_103_e,
        /* 0x68 */ ACTION2_104_e,
        /* 0x69 */ ACTION2_105_e,
        /* 0x6A */ ACTION2_106_e,
        /* 0x6B */ ACTION2_107_e,
    };

    /* 8061EC58 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8061ED10 */ static int JointCallBack(J3DJoint*, int);
    /* 8061ED5C */ void calcNeckAngle();
    /* 8061EE14 */ void calcWaistAngle();
    /* 8061EEC8 */ int draw();
    /* 8061F200 */ void setBreakPart(int);
    /* 8061F31C */ void setBreakHeadPart(int);
    /* 8061F3D0 */ void setPartLandEffect(int, int);
    /* 8061F520 */ void calcShieldMove();
    /* 8061F9F4 */ void calcSwordMoveA();
    /* 8061FD7C */ void calcSwordMoveB();
    /* 8061FFE0 */ void calcOtherPartMove(int);
    /* 8062070C */ void calcPartMove();
    /* 806208C8 */ void setBck(int, u8, f32, f32);
    /* 8062096C */ int checkBck(int);
    /* 806209C8 */ void setActionMode(int, int);
    /* 806209E0 */ void setSwordAtBit(int);
    /* 80620AE4 */ void setSwordAtBreak(int);
    /* 80620B4C */ void setBodyShield();
    /* 80620E90 */ bool checkNormalAttackAble();
    /* 80620FA0 */ u32 getCutType();
    /* 80621070 */ void setDamage(dCcD_Sph*, int);
    /* 8062138C */ void setShieldEffect(dCcD_Sph*);
    /* 806213FC */ void damage_check();
    /* 806227D0 */ int checkMoveArea();
    /* 80622B60 */ bool checkMoveAngle();
    /* 80622BE0 */ void setAttackBlurEffect(int);
    /* 80622CE4 */ void setArmorBreakEffect(int);
    /* 80622F64 */ void demo_skip(int);
    /* 8062318C */ static int DemoSkipCallBack(void*, int);
    /* 806231C0 */ void executeRoomDemo();
    /* 80623920 */ void executeOpening();
    /* 806246E8 */ void executeWaitH();
    /* 806247D8 */ void setAwaitSound();
    /* 80624890 */ void executeChaseH();
    /* 80625394 */ void checkStartAttackH();
    /* 806255F0 */ void executeAttackH();
    /* 80625C74 */ void executeAttackShieldH();
    /* 80625E40 */ void executeGuardH();
    /* 80626034 */ void executeDamageH();
    /* 80626320 */ void executeChangeDemo();
    /* 80627100 */ void executeZakoChangeDemo();
    /* 80627790 */ void setWalkDir();
    /* 8062799C */ void initChaseL(int);
    /* 80627CBC */ bool checkAttackAble();
    /* 80627D3C */ bool checkNextMove();
    /* 8062868C */ void executeChaseL();
    /* 806292F8 */ void executeAttackL();
    /* 80629D20 */ void executeAttackShieldL();
    /* 80629FB0 */ void executeGuardL();
    /* 8062A3D0 */ void executeDamageL();
    /* 8062A71C */ void executeYoroke();
    /* 8062A950 */ void executeEnding();
    /* 8062B344 */ void executeZakoEnding();
    /* 8062B6A8 */ void action();
    /* 8062BA5C */ void mtx_set();
    /* 8062BDCC */ void cc_set();
    /* 8062C5B4 */ int execute();
    /* 8062C7C8 */ int _delete();
    /* 8062C868 */ int CreateHeap();
    /* 8062CD78 */ int create();

private:
    /* 0x05AC */ request_of_phase_process_class mPhaseReq1;
    /* 0x05B4 */ request_of_phase_process_class mPhaseReq2;
    /* 0x05BC */ J3DModel* mpPartModels[16];
    /* 0x05FC */ mDoExt_McaMorfSO* mpModelMorf1;
    /* 0x0600 */ mDoExt_McaMorfSO* mpModelMorf2;
    /* 0x0604 */ mDoExt_brkAnm* mpBrkAnms[16];
    /* 0x0644 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x0648 */ J3DModel* swordEffectModel;
    /* 0x064C */ Z2CreatureEnemy mSound;
    /* 0x06F0 */ int mActionMode1;
    /* 0x06F4 */ int mActionMode2;
    /* 0x06F8 */ u32 mShadowKey;
    /* 0x06FC */ int field_0x6fc;
    /* 0x0700 */ int field_0x700;
    /* 0x0704 */ cXyz mCamEye;
    /* 0x0710 */ cXyz mCamCenter;
    /* 0x071C */ f32 mCamFovY;
    /* 0x0720 */ s16 field_0x720;
    /* 0x0724 */ f32 field_0x724;
    /* 0x0728 */ f32 mMaterialColor;
    /* 0x072C */ Mtx mNewTRMtx;
    /* 0x075C */ cXyz mPositions[16];
    /* 0x081C */ cXyz mPositionsCopy[16];
    /* 0x08DC */ cXyz field_0x8dc[16];
    /* 0x099C */ csXyz field_0x99c[16];
    /* 0x09FC */ u16 mStates[16];
    /* 0x0A1C */ u16 field_0xa1c[16];
    /* 0x0A3C */ s16 field_0xa3c[16];
    /* 0x0A5C */ s16 field_0xa5c;
    /* 0x0A60 */ int mTimer9;
    /* 0x0A64 */ s16 field_0xa64;
    /* 0x0A66 */ s16 field_0xa66;
    /* 0x0A68 */ s16 mInvincibilityTimer;
    /* 0x0A6C */ int mTimer1;
    /* 0x0A70 */ int mTimer3;
    /* 0x0A74 */ int mTimer6;
    /* 0x0A78 */ int mNextBreakPart;
    /* 0x0A7C */ int mTimer4;
    /* 0x0A80 */ int mTimer5;
    /* 0x0A84 */ int mTimer7;
    /* 0x0A88 */ int mVibrationTimer;
    /* 0x0A8C */ int mWalkDir;
    /* 0x0A90 */ u8 mUpdateModelTimer;
    /* 0x0A91 */ bool field_0xa91;
    /* 0x0A92 */ u8 mNextActionMode2;
    /* 0x0A93 */ bool mUpdateNeckAngle;
    /* 0x0A94 */ bool mUpdateWaistAngle;
    /* 0x0A96 */ s16 mNeckAngle;
    /* 0x0A98 */ s16 mWaistAngle;
    /* 0x0A9A */ bool field_0xa9a;
    /* 0x0A9B */ u8 mActionMode2Copy;
    /* 0x0A9C */ u8 field_0xa9c;
    /* 0x0A9D */ u8 field_0xa9d;
    /* 0x0A9E */ bool mDisappear;
    /* 0x0A9F */ bool mCutFlag;
    /* 0x0AA0 */ bool mSphCSmallFlag;
    /* 0x0AA1 */ bool mChkCoHitOK;
    /* 0x0AA2 */ u8 field_0xaa2;
    /* 0x0AA3 */ u8 mBrkAnmFrame;
    /* 0x0AA4 */ u8 mSwitchNo;
    /* 0x0AA5 */ u8 mType;
    /* 0x0AA6 */ u8 mType2;
    /* 0x0AA7 */ u8 mTimer10;
    /* 0x0AA8 */ bool field_0xaa8;
    /* 0x0AA9 */ u8 mTimer12;
    /* 0x0AAA */ u8 mTimer13;
    /* 0x0AAB */ u8 mCutJumpStatus;
    /* 0x0AAC */ bool mInactive;
    /* 0x0AAD */ bool mStayNo2Flag;
    /* 0x0AAE */ u8 mBlendStatus;
    /* 0x0AB0 */ f32 mBlend;
    /* 0x0AB4 */ char* mArcName;
    /* 0x0AB8 */ dBgS_AcchCir mAcchCir;
    /* 0x0AF8 */ dBgS_ObjAcch mAcch;
    /* 0x0CD0 */ dBgS_AcchCir mAcchCirArr[16];
    /* 0x10D0 */ dBgS_ObjAcch mAcchArr[16];
    /* 0x2E50 */ dCcD_Stts mStts1;
    /* 0x2E8C */ dCcD_Stts mStts2;
    /* 0x2EC8 */ dCcD_Sph mSphA[3];
    /* 0x3270 */ dCcD_Sph mSphB[3];
    /* 0x3618 */ dCcD_Sph mSphC;
    /* 0x3750 */ dCcD_Sph mSwordSphs[4];
    /* 0x3C30 */ dCcD_Cps mCps;
    /* 0x3D74 */ dCcD_Sph mSphD;
    /* 0x3EAC */ cXyz mCpsPos;
    /* 0x3EB8 */ dCcU_AtInfo mAtInfo;
    /* 0x3EDC */ dCcD_Stts mSttsArr[16];
    /* 0x429C */ dCcD_Sph mSphArr[16];
    /* 0x561C */ u32 mParticleKeys[4];
    /* 0x562C */ u8 mHioInit;
};

STATIC_ASSERT(sizeof(daB_TN_c) == 0x5630);

#endif /* D_A_B_TN_H */
