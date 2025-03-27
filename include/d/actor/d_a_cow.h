#ifndef D_A_COW_H
#define D_A_COW_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_particle_copoly.h"
#include "d/d_path.h"

#define N_COW_COLLIDERS 3

/**
 * @ingroup actors-unsorted
 * @class c
 * @brief Ordon Goat
 *
 * @details
 *
 */
class daCow_c : public fopAc_ac_c {
public:
    enum Crazy {
        Crazy_Wait = 0,
        Crazy_Dash = 1,
        Crazy_BeforeCatch = 2,
        Crazy_Catch = 3,
        Crazy_Throw = 4,
        Crazy_Attack = 5,
        Crazy_Away = 6,
        Crazy_End = 7,
        Crazy_Back = 8,
    };

    enum Mode {
        Mode_0 = 0,
        Mode_1 = 1,
        Mode_2 = 2,
        Mode_3 = 3,
    };

    enum Action {
        Action_Wait = 0,
        Action_NadeNade = 1,
        Action_Cry = 2,
        Action_3 = 3,
        Action_4 = 4,
        Action_5 = 5,
        Action_6 = 6,
        Action_Running = 7,
    };

    enum Animation {
        Animation_5 = 5,
        Animation_6 = 6,
        Animation_7 = 7,
        Animation_8 = 8,
        Animation_Eat = 9,
        Animation_10 = 10,
        Animation_11 = 11,
        Animation_12 = 12,
        Animation_13 = 13,
        Animation_14 = 14,
        Animation_Moo = 15,
        Animation_16 = 16,
        Animation_17 = 17,
        Animation_18 = 18,
        Animation_Run = 19,
        Animation_CrazyDash = 20,
        Animation_Shake = 21,
        Animation_22 = 22,
        Animation_23 = 23,
        Animation_24 = 24,
        Animation_Walk = 25,
        Animation_Wait = 26,
        Animation_27 = 27,
        Animation_28 = 28,
    };

    enum RunType {
        RunType_None = 0,
        RunType_Walk = 1,
        RunType_Run = 2,
    };

    enum Execute {
        Execute_0 = 0,
        Execute_1 = 1,
        Execute_2 = 2,
        Execute_3 = 3,
        Execute_4 = 4,
        Execute_5 = 5,
        Execute_6 = 6,
    };

    enum Flag {
        Flag_CrazyBeforeCatch = 1 << 0,
        Flag_CrazyCatch = 1 << 1,
        Flag_CrazyDash = 1 << 2,
        Flag_CrazyThrowLeft = 1 << 3,
        Flag_CrazyThrowRight = 1 << 4,
        Flag_CrazyReady = 1 << 5,
        Flag_CrazyGo = 1 << 6,
        Flag_Naderu = 1 << 7,
        Flag_NaderuFinish = 1 << 8,
        Flag_CrazyReadyDrawOn = 1 << 9,
    };

    /* 806585CC */ int calcRunAnime(int);
    /* 80658730 */ void setBck(int, u8, f32, f32);
    /* 806587D4 */ u8 checkBck(int);
    /* 80658830 */ void setEffect();
    /* 80658AA4 */ bool isChaseCowGame();
    /* 80658B10 */ void setCarryStatus();
    /* 80658C18 */ void setActetcStatus();
    /* 80658C78 */ bool checkNadeNadeFinish();
    /* 80658CA4 */ bool checkNadeNade();
    /* 80658CD0 */ void setSeSnort();
    /* 80658D3C */ void setRushVibration(int);
    /* 80658DB8 */ bool checkThrow();
    /* 80658E98 */ void setBodyAngle(s16);
    /* 80658F94 */ void setBodyAngle2(s16);
    /* 806590E8 */ BOOL checkProcess(void (daCow_c::*)());
    /* 80659114 */ bool setProcess(void (daCow_c::*)(), int);
    /* 806591BC */ void damage_check();
    /* 8065945C */ void setEnterCow20();
    /* 80659540 */ void setEnterCow10();
    /* 80659630 */ void setGroundAngle();
    /* 80659970 */ bool checkRun();
    /* 806599C0 */ bool checkNearCowRun();
    /* 80659ADC */ void action_wait();
    /* 8065A0E8 */ void action_eat();
    /* 8065A594 */ void action_moo();
    /* 8065A8A4 */ void action_shake();
    /* 8065ACC8 */ bool checkNearWolf();
    /* 8065AD2C */ bool checkPlayerWait();
    /* 8065ADB0 */ bool checkPlayerSurprise();
    /* 8065AE88 */ bool checkPlayerPos();
    /* 8065B034 */ void checkBeforeBg();
    /* 8065B760 */ int checkOutOfGate(cXyz);
    /* 8065B8A8 */ s16 getCowshedAngle();
    /* 8065B8D8 */ double getCowshedDist();
    /* 8065BA30 */ int checkCowIn(f32, f32);
    /* 8065BB34 */ bool checkCowInOwn(int);
    /* 8065BC68 */ void action_run();
    /* 8065C32C */ bool checkCurringPen();
    /* 8065C508 */ void setCowInCage();
    /* 8065C680 */ void setEnterCount();
    /* 8065C70C */ void action_enter();
    /* 8065CFBC */ bool isAngry();
    /* 8065D03C */ bool isGuardFad();
    /* 8065D0B8 */ void setAngryHit();
    /* 8065D17C */ bool checkBeforeBgAngry(s16);
    /* 8065D230 */ void setRedTev();
    /* 8065D29C */ void setAngryTurn();
    /* 8065D2F0 */ void action_angry();
    /* 8065DC08 */ void calcCatchPos(f32, int);
    /* 8065DE70 */ void executeCrazyWait();
    /* 8065DF40 */ void executeCrazyDash();
    /* 8065E6BC */ void initCrazyBeforeCatch(int);
    /* 8065E6E8 */ void executeCrazyBeforeCatch();
    /* 8065E7D0 */ void initCrazyCatch(int);
    /* 8065E888 */ void executeCrazyCatch();
    /* 8065EAF4 */ void initCrazyThrow(int);
    /* 8065EBF0 */ void executeCrazyThrow();
    /* 8065F088 */ void initCrazyAttack(int);
    /* 8065F144 */ void executeCrazyAttack();
    /* 8065F308 */ void initCrazyAway(int);
    /* 8065F37C */ void executeCrazyAway();
    /* 8065F6E0 */ void executeCrazyEnd();
    /* 8065F744 */ void initCrazyBack(int);
    /* 8065F7DC */ void executeCrazyBack();
    /* 8065FE50 */ void action_crazy();
    /* 8066010C */ void executeCrazyBack2();
    /* 80660544 */ void action_thrown();
    /* 806607B8 */ bool checkWolfBusters();
    /* 806608F0 */ void action_wolf();
    /* 806612DC */ void action_damage();
    /* 806613EC */ void action();
    /* 80661580 */ void setMtx();
    /* 806615EC */ void setAttnPos();
    /* 80661720 */ void setCollisions();
    /* 80661940 */ int Execute();
    /* 80661AF0 */ int CreateHeap();
    /* 80661D24 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80661D44 */ u8 initialize();
    /* 80662228 */ int create();
    /* 80662710 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80662920 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8066296C */ int Draw();
    /* 80662BE4 */ int Delete();
    // /* 80662D70 */ csXyz getShapeAngle();
    csXyz getShapeAngle() { return mSavedAngle; }

    void setCowP(daCow_c* cow) { mCowP = cow; }
    daCow_c* getCowP() { return mCowP; }

    // cLib_onBit<u16>(mFlags, (mask))
    void setCrazyBeforeCatch() { mFlags |= Flag_CrazyBeforeCatch; }
    void setCrazyCatch() { mFlags |= Flag_CrazyCatch; }
    void setCrazyDash() { mFlags |= Flag_CrazyDash; }
    void setCrazyThrowLeft() { mFlags |= Flag_CrazyThrowLeft; }
    void setCrazyThrowRight() { mFlags |= Flag_CrazyThrowRight; }
    void setCrazyReady() { mFlags |= Flag_CrazyReady; }
    void setCrazyGo() { mFlags |= Flag_CrazyGo; }
    void setNaderu() { mFlags |= Flag_Naderu; }
    void setNaderuFinish() { mFlags |= Flag_NaderuFinish; }
    void setCrazyReadyDrawOn() { mFlags |= Flag_CrazyReadyDrawOn; }

    bool getCowIn() { return mCowIn; }
    int getNoNearCheckTimer() const { return mNoNearCheckTimer; }

private:
    /* 0x568 */ u16 mFlags;
    /* 0x56c */ request_of_phase_process_class mPhase;
    /* 0x574 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x578 */ mDoExt_btpAnm* mpBtp;
    /* 0x57c */ Z2Creature mSound;
    /* 0x60c */ dBgS_ObjAcch mAcch;
    /* 0x7e4 */ dCcD_Stts mCcStts;
    /* 0x820 */ dBgS_AcchCir mAcchCir;
    /* 0x860 */ dCcD_Sph mSph[N_COW_COLLIDERS];
    /* 0xc08 */ daCow_c* mCowP;
    /* 0xc0c */ dPath* mPath;
    /* 0xc10 */ s8 mPointIndex;
    /* 0xc14 */ cXyz mJointPos;
    /* 0xc20 */ cXyz mTarget;
    /* 0xc2c */ csXyz mGroundTransform;
    /* 0xc32 */ csXyz mSavedAngle;
    /* 0xc38 */ csXyz mJoint1Offset;
    /* 0xc3e */ csXyz mJoint8Offset;
    /* 0xc44 */ f32 mGroundHeight;
    /* 0xc48 */ void (daCow_c::*mProcess)();
    /* 0xc54 */ int mTimer6;
    /* 0xc58 */ int mIdleTimer;
    /* 0xc5c */ u16 mMode;
    /* 0xc5e */ s8 mRunType;
    /* 0xc5f */ u8 mPrm0;
    /* 0xc60 */ u8 mExecute;
    /* 0xc61 */ u8 mAction;
    /* 0xc62 */ u8 mJointIndex;
    /* 0xc63 */ bool mIsCrazy;
    /* 0xc64 */ u32 mShadowKey;
    /* 0xc68 */ u8 mCounter1;
    /* 0xc69 */ u8 mISpeed;
    /* 0xc6c */ f32 mBoostSpeed;
    /* 0xc70 */ s16 mBoostAngle;
    /* 0xc72 */ s16 mTargetAngle;
    /* 0xc74 */ s16 mTurningSpeed;
    /* 0xc76 */ s16 mThrowIntensity;
    /* 0xc78 */ f32 mAttentionDistance;
    /* 0xc7c */ f32 mSpeed;
    /* 0xc80 */ int mInvulnerabilityTimer;
    /* 0xc84 */ int mDealDamageTimer;
    /* 0xc88 */ int mWaitTimer;
    /* 0xc8c */ int mTakenDamageCounter;
    /* 0xc90 */ int mTimer1;
    /* 0xc94 */ int mForgetCowPTimer;
    /* 0xc98 */ int mTimer10;
    /* 0xc9c */ u8 mAnimationInterval;
    /* 0xc9d */ u8 mOutOfGate;
    /* 0xc9e */ u8 mWillGetAngry;
    /* 0xc9f */ u8 mCrazy;
    /* 0xca0 */ bool mReadyToDash;
    /* 0xca1 */ u8 mRunDuration;
    /* 0xca2 */ u8 mIntersectedPlanes;
    /* 0xca3 */ u8 mRunTimer;
    /* 0xca4 */ u8 mNoNearCheckTimer;
    /* 0xca5 */ u8 mCowIn;
    /* 0xca6 */ bool mDrawOff;
    /* 0xca7 */ u8 _unused;
    /* 0xca8 */ bool mNadeNade;
    /* 0xca9 */ bool mEnterTimerDone;
    /* 0xcaa */ u8 mDoAnim6;
    /* 0xcac */ f32 mRedTev;
    /* 0xcb0 */ f32 mTargetRedTev;
    /* 0xcb4 */ u8 mChangeRedTev;
    /* 0xcb5 */ u8 mShouldSetEffect;
    /* 0xcb8 */ dPaPoT_c mParticle;
    /* 0xd38 */ u32 mSmokeKey;
    /* 0xd3c */ u32 mSmokeKey2;
};

STATIC_ASSERT(sizeof(daCow_c) == 0xd40);

#endif /* D_A_COW_H */
