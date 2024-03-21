#ifndef D_A_B_DS_H
#define D_A_B_DS_H

#include "SSystem/SComponent/c_phase.h"
#include "f_op/f_op_actor.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"
#include "d/msg/d_msg_flow.h"
#include "m_Do/m_Do_ext.h"

class daB_DS_c : public fopEn_enemy_c {
public:
    enum Arg0 {
        /* 0 */ TYPE_BATTLE_1,
        /* 1 */ TYPE_BULLET_A,
        /* 2 */ TYPE_BATTLE_2,
        /* 3 */ TYPE_BULLET_B,
        /* 4 */ TYPE_BULLET_C,
    };

    enum Action {
        /* 0 */ ACT_WAIT,
        /* 1 */ ACT_OPENING_DEMO,
        /* 2 */ ACT_CIRCLE,
        /* 3 */ ACT_DAMAGE,
        /* 4 */ ACT_ETC_DAMAGE,
        /* 5 */ ACT_HAND_ATTACK,
        /* 6 */ ACT_BREATH_ATTACK,
        /* 7 */ ACT_BREATH_SEARCH,
    };

    enum B2Action {
        /* 0 */ ACT_B2_OPENING_DEMO,
        /* 1 */ ACT_B2_WAIT,
        /* 2 */ ACT_B2_F_MOVE,
        /* 3 */ ACT_B2_TIRED,
        /* 4 */ ACT_B2_DAMAGE,
        /* 5 */ ACT_B2_DEAD,
    };

    enum AnmID {
        /* 0x06 */ ANM_ATTACK01_A = 6,
        /* 0x07 */ ANM_ATTACK01_B,
        /* 0x08 */ ANM_ATTACK01_C,
        /* 0x09 */ ANM_ATTACK02_A_A,
        /* 0x0A */ ANM_ATTACK02_A_B,
        /* 0x0B */ ANM_ATTACK02_A_C,
        /* 0x0C */ ANM_ATTACK02_B_A,
        /* 0x0D */ ANM_ATTACK02_B_B,
        /* 0x0E */ ANM_ATTACK02_B_C,
        /* 0x0F */ ANM_ATTACK02_C_A,
        /* 0x10 */ ANM_ATTACK02_C_B,
        /* 0x11 */ ANM_ATTACK02_C_C,
        /* 0x12 */ ANM_ATTACK_L_A,
        /* 0x13 */ ANM_ATTACK_L_B,
        /* 0x14 */ ANM_ATTACK_L_C,
        /* 0x15 */ ANM_ATTACK_R_A,
        /* 0x16 */ ANM_ATTACK_R_B,
        /* 0x17 */ ANM_ATTACK_R_C,
        /* 0x18 */ ANM_CIRCLE_L_A,
        /* 0x19 */ ANM_CIRCLE_L_B,
        /* 0x1A */ ANM_CIRCLE_L_C,
        /* 0x1B */ ANM_CIRCLE_R_A,
        /* 0x1C */ ANM_CIRCLE_R_B,
        /* 0x1D */ ANM_CIRCLE_R_C,
        /* 0x1E */ ANM_DAMAGE_A,
        /* 0x1F */ ANM_DAMAGE_A_WAIT,
        /* 0x20 */ ANM_DAMAGE_B,
        /* 0x21 */ ANM_DAMAGE_B_WAIT,
        /* 0x22 */ ANM_ENDDEMO,
        /* 0x23 */ ANM_HEAD_DAMAGE,
        /* 0x24 */ ANM_HEAD_DIE,
        /* 0x25 */ ANM_HEAD_DIEB,
        /* 0x26 */ ANM_HEAD_DOWN,
        /* 0x27 */ ANM_HEAD_DOWN_DAMAGE,
        /* 0x28 */ ANM_HEAD_DOWN_UP,
        /* 0x29 */ ANM_HEAD_FATTACK_A,
        /* 0x2A */ ANM_HEAD_FATTACK_B,
        /* 0x2B */ ANM_HEAD_FATTACK_C,
        /* 0x2C */ ANM_HEAD_FWAIT,
        /* 0x2D */ ANM_HEAD_RETURN,
        /* 0x2E */ ANM_HEAD_TIRED,
        /* 0x2F */ ANM_LASTDAMAGE,
        /* 0x30 */ ANM_LASTDAMAGE_WAIT,
        /* 0x31 */ ANM_NODAMAGE_01_A,
        /* 0x32 */ ANM_NODAMAGE_01_B,
        /* 0x33 */ ANM_NODAMAGE_01_C,
        /* 0x34 */ ANM_NODAMAGE_02_A,
        /* 0x35 */ ANM_NODAMAGE_02_B,
        /* 0x36 */ ANM_NODAMAGE_02_C,
        /* 0x37 */ ANM_NODAMAGE_03_A,
        /* 0x38 */ ANM_NODAMAGE_03_B,
        /* 0x39 */ ANM_NODAMAGE_03_C,
        /* 0x3A */ ANM_OPDEMO,
        /* 0x3B */ ANM_REVIVAL,
        /* 0x3C */ ANM_WAIT01_A,
        /* 0x3D */ ANM_WAIT01_B,
        /* 0x3E */ ANM_WAIT01_C,
    };

    /* 805CB314 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 805CB4A4 */ static int JointCallBack(J3DJoint*, int);
    /* 805CB4F0 */ int draw();
    /* 805CBAC8 */ void setBck(int, u8, f32, f32);
    /* 805CBB74 */ void setActionMode(int, int);
    /* 805CBB80 */ void mSmokeSet();
    /* 805CBD00 */ void mHeadAngle_Clear();
    /* 805CBD64 */ void HandHitSoundSet(bool);
    /* 805CBED0 */ void handSPosSet(int);
    /* 805CC158 */ void hand_smokeSet(u8);
    /* 805CC1C4 */ void mZsMoveChk();
    /* 805CC454 */ void mZsMoveChk_Guard();
    /* 805CC6F4 */ void mTrapScale();
    /* 805CC80C */ void mClearTrap(bool);
    /* 805CC8A4 */ void mCreateTrap(bool);
    /* 805CCEB4 */ void mChangeVer2();
    /* 805CD074 */ void damage_check();
    /* 805CD628 */ void neck_set();
    /* 805CD844 */ bool mCutTypeCheck();
    /* 805CD8D8 */ bool startDemoCheck();
    /* 805CDA08 */ void setYoMessage(int);
    /* 805CDA44 */ bool doYoMessage();
    /* 805CDAC0 */ void executeOpeningDemo();
    /* 805CFC8C */ bool mHandBreathChk();
    /* 805D002C */ void executeWait();
    /* 805D0194 */ void executeCircle();
    /* 805D02F8 */ void mBreakBoneSUB();
    /* 805D0374 */ void damageSet();
    /* 805D03EC */ void damageHitCamera();
    /* 805D0584 */ void damageDownCheck();
    /* 805D074C */ void executeDamage();
    /* 805D1E30 */ void executeEtcDamage();
    /* 805D203C */ void breath_smokeSet();
    /* 805D226C */ void executeBreathAttack();
    /* 805D2520 */ void executeHandAttack();
    /* 805D272C */ void executeBreathSearch();
    /* 805D28D0 */ void executeBattle2OpeningDemo();
    /* 805D3900 */ void mFlyBMove(f32);
    /* 805D39A4 */ void mFuwafuwaSet(bool);
    /* 805D3D14 */ void mBattle2BreathFireSet(u32);
    /* 805D3D80 */ bool mNeckAngleSet();
    /* 805D3EA0 */ void mSetFirstPos();
    /* 805D3F90 */ bool mChkScreenIn();
    /* 805D4054 */ bool mRailInOutCheck();
    /* 805D41CC */ void executeBattle2Wait();
    /* 805D429C */ bool mBattle2MoveFSet();
    /* 805D497C */ void executeBattle2FMove();
    /* 805D5040 */ void executeBattle2Tired();
    /* 805D52D4 */ void executeBattle2Damage();
    /* 805D60BC */ bool mDeadMove();
    /* 805D6534 */ void executeBattle2Dead();
    /* 805D7C10 */ void executeBullet();
    /* 805D8078 */ void mBulletAction();
    /* 805D80F0 */ void mSoundSE_Set();
    /* 805D8D04 */ void action();
    /* 805D91A4 */ void mtx_set();
    /* 805D951C */ void cc_set();
    /* 805D9A40 */ void cc_etc_set();
    /* 805D9B74 */ void mBattle2Action();
    /* 805D9CFC */ void mBattle2_spinner_damage_check();
    /* 805D9FF4 */ bool mBattle2_damage_check();
    /* 805DA584 */ void mBattle2_mtx_set();
    /* 805DA9A4 */ void mBattle2_cc_etc_set();
    /* 805DAA98 */ void mBattle2_cc_set();
    /* 805DADC4 */ int execute();
    /* 805DB1AC */ int _delete();
    /* 805DB264 */ int CreateHeap();
    /* 805DB974 */ cPhs__Step create();
    /* 805DC1E8 */ daB_DS_c();

    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x05B8 */ mDoExt_McaMorfSO* mpSwordMorf;
    /* 0x05BC */ mDoExt_McaMorfSO* mpZantMorf;
    /* 0x05C0 */ J3DModel* mpOpPatternModel;
    /* 0x05C4 */ J3DModel* mpPatternModel;
    /* 0x05C8 */ mDoExt_brkAnm* mpSwordBrkAnm;
    /* 0x05CC */ mDoExt_brkAnm* mpOpPatternBrkAnm;
    /* 0x05D0 */ mDoExt_btkAnm* mpOpPatternBtkAnm;
    /* 0x05D4 */ mDoExt_brkAnm* mpPatternBrkAnm;
    /* 0x05D8 */ mDoExt_btkAnm* mpPatternBtkAnm;
    /* 0x05DC */ Z2CreatureEnemy mSound;
    /* 0x0680 */ int mAction;
    /* 0x0684 */ int mMode;
    /* 0x0688 */ int mHitLocation;
    /* 0x068C */ int mAnmID;
    /* 0x0690 */ int mBirthTrapTimerF;
    /* 0x0694 */ int mPedestalFallTimer;
    /* 0x0698 */ int mSandFallTimer;
    /* 0x069C */ int mSwordTimer;
    /* 0x06A0 */ int mHintTimer1;
    /* 0x06A4 */ int mHintTimer2;
    /* 0x06A8 */ int field_0x6a8;
    /* 0x06AC */ cXyz mZantScale;
    /* 0x06B8 */ cXyz mSwordScale;
    /* 0x06C4 */ cXyz mSoundPos;
    /* 0x06D0 */ cXyz field_0x6d0;
    /* 0x06DC */ cXyz mZantEyePos;
    /* 0x06E8 */ cXyz mSwordPos;
    /* 0x06F4 */ cXyz field_0x6f4;
    /* 0x0700 */ cXyz mMouthPos;
    /* 0x070C */ cXyz mBulletPos;
    /* 0x0718 */ cXyz field_0x718;
    /* 0x0724 */ cXyz field_0x724;
    /* 0x0730 */ cXyz mSandPos;
    /* 0x073C */ cXyz mBackbonePos;
    /* 0x0748 */ cXyz mZantPos;
    /* 0x0754 */ cXyz mHeadPos;
    /* 0x0760 */ cXyz mHandPos[2];
    /* 0x0778 */ cXyz mFingerPos[2];
    /* 0x0790 */ cXyz field_0x790;
    /* 0x079C */ cXyz field_0x79c;
    /* 0x07A8 */ csXyz mHeadAngle;
    /* 0x07AE */ csXyz field_0x7ae;
    /* 0x07B4 */ u8 field_0x7b4[6];
    /* 0x07BA */ csXyz field_0x7ba;
    /* 0x07C0 */ csXyz field_0x7c0;
    /* 0x07C6 */ u8 field_0x7c6[4];
    /* 0x07CA */ s16 field_0x7ca;
    /* 0x07CC */ s16 mBh2AttackAngleF;
    /* 0x07CE */ s16 field_0x7ce;
    /* 0x07D0 */ s16 field_0x7d0;
    /* 0x07D2 */ s16 field_0x7d2;
    /* 0x07D4 */ f32 mBreathTimerBase;
    /* 0x07D8 */ f32 mBulletRadius;
    /* 0x07DC */ f32 mBackboneCrackAlpha[3];
    /* 0x07E8 */ f32 mEyeColorAlpha;
    /* 0x07EC */ f32 mCrackAlpha;
    /* 0x07F0 */ f32 mBulletDistance;
    /* 0x07F4 */ f32 mChkHigh;
    /* 0x07F8 */ f32 field_0x7f8;
    /* 0x07FC */ f32 mColBlend;
    /* 0x0800 */ f32 mGroundUpY;
    /* 0x0804 */ f32 field_0x804;
    /* 0x0808 */ f32 field_0x808;
    /* 0x080C */ f32 field_0x80c;
    /* 0x0810 */ f32 mWallR;
    /* 0x0814 */ int mBrokenBone;
    /* 0x0818 */ int mTimerCount;
    /* 0x081C */ int mModeTimer;
    /* 0x0820 */ int mHitTimer;
    /* 0x0824 */ u8 field_0x824[4];
    /* 0x0828 */ int mP2FallTimer;
    /* 0x082C */ int field_0x82c;
    /* 0x0830 */ int mBreathTimeCount;
    /* 0x0834 */ int mOutTimer;
    /* 0x0838 */ int mSmokeCount;
    /* 0x083C */ int field_0x83c;
    /* 0x0840 */ int field_0x840;
    /* 0x0844 */ u8 field_0x844[4];
    /* 0x0848 */ u32 mShadowKey;
    /* 0x084C */ u8 mAttackingHand;
    /* 0x084D */ u8 field_0x84d;
    /* 0x084E */ u8 mDamageTimer;
    /* 0x084F */ u8 mBackboneLevel;
    /* 0x0850 */ bool mDead;
    /* 0x0851 */ bool mIsDemo;
    /* 0x0852 */ u8 mBossPhase;
    /* 0x0853 */ bool mIsOpeningDemo;
    /* 0x0854 */ bool mIsAppear;
    /* 0x0855 */ bool mIsAppearG;
    /* 0x0856 */ u8 arg0;
    /* 0x0857 */ u8 bitSw;
    /* 0x0858 */ u8 bitSw2;
    /* 0x0859 */ u8 bitSw3;
    /* 0x085A */ bool mCreateFireBreath;
    /* 0x085B */ bool mNoDrawSword;
    /* 0x085C */ bool mDrawZant;
    /* 0x085D */ bool mDrawZantSword;
    /* 0x085E */ bool field_0x85e;
    /* 0x085F */ bool mPlayPatternAnm;
    /* 0x0860 */ bool mTrapCreate;
    /* 0x0861 */ bool field_0x861;
    /* 0x0862 */ u8 field_0x862[1];
    /* 0x0864 */ u32 mMsgIdx;
    /* 0x0868 */ u32 mMsgPcID;
    /* 0x086C */ msg_class* mpMsg;
    /* 0x0870 */ dBgS_AcchCir mAcchCir;
    /* 0x08B0 */ dBgS_ObjAcch mAcch;
    /* 0x0A88 */ dCcD_Stts mCcStts;
    /* 0x0AC4 */ dCcD_Sph mWeakSph;
    /* 0x0BFC */ dCcD_Sph mHeadSph[5];
    /* 0x1214 */ dCcD_Sph mBreathAtSph;
    /* 0x134C */ dCcD_Sph mEtcSph[18];
    /* 0x293C */ dCcD_Cyl mBackboneCyl;
    /* 0x2A78 */ dCcD_Cyl mHandAtLCyl;
    /* 0x2BB4 */ dCcD_Cyl mHandAtRCyl;
    /* 0x2CF0 */ dCcU_AtInfo mAtInfo;
    /* 0x2D14 */ cXyz mCameraEye;
    /* 0x2D20 */ cXyz mCameraCenter;
    /* 0x2D2C */ f32 mCameraFovy;
    /* 0x2D30 */ u8 field_0x2d30[0xc];
    /* 0x2D3C */ u32 mStaltroopID[15];
    /* 0x2D78 */ u32 mTrapID[20];
    /* 0x2DC8 */ u32 mStaltroop2ID[5];
    /* 0x2DDC */ u32 mHandSmokeParticleKey[4];
    /* 0x2DEC */ u32 mHitParticleKey[2];
    /* 0x2DF4 */ u32 mDeathParticleKey;
    /* 0x2DF8 */ u8 field_0x2df8[0xc];
    /* 0x2E04 */ u32 mBackboneParticleKey[2];
    /* 0x2E0C */ u32 mSandParticleKey[2];
    /* 0x2E14 */ u32 mParticleKey1;
    /* 0x2E18 */ u32 mParticleKey2;
    /* 0x2E1C */ u32 mSmokeParticleKey[20];
    /* 0x2E6C */ u32 mStartingParticleKey[16];
    /* 0x2EAC */ u32 mBreathSmokeParticleKey[3];
    /* 0x2EB8 */ u32 mBulletParticleKey[4];
    /* 0x2EC8 */ bool mHIOInit;
    /* 0x2EC9 */ u8 field_0x2ec9[0x13];
    /* 0x2EDC */ dMsgFlow_c mMsgFlow;
};

STATIC_ASSERT(sizeof(daB_DS_c) == 0x2F28);

#endif /* D_A_B_DS_H */
