#ifndef D_A_D_A_PLAYER_H
#define D_A_D_A_PLAYER_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "d/d_drawlist.h"
#include "d/d_resorce.h"
#include "d/d_stage.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daPy_sightPacket_c : public dDlst_base_c {
public:
    /* 8015F1A0 */ virtual void draw();
    /* 80140CDC */ virtual ~daPy_sightPacket_c();

    /* 8015F2FC */ void setSight();
    /* 8015F384 */ void setSightImage(ResTIMG*);

    bool getDrawFlg() { return mDrawFlag; }

private:
    /* 0x04 */ bool mDrawFlag;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ cXyz mPos;
    /* 0x14 */ Mtx field_0x14;
    /* 0x44 */ ResTIMG* mpImg;
    /* 0x48 */ u8* mpData;
};

class daPy_boomerangMove_c {
public:
    /* 8015E5B0 */ void initOffset(cXyz const*);
    /* 8015E654 */ void posMove(cXyz*, s16*, fopAc_ac_c*, s16);
    /* 8015E87C */ void bgCheckAfterOffset(cXyz const*);

private:
    /* 0x0 */ u8 field_0x0;
    /* 0x2 */ u16 field_0x2;
    /* 0x4 */ f32 field_0x4;
    /* 0x8 */ f32 field_0x8;
};  // Size: 0xC

class daPy_anmHeap_c {
public:
    enum daAlinkHEAP_TYPE {};

    /* 80140DCC */ void __defctor();
    daPy_anmHeap_c(u32);
    ~daPy_anmHeap_c();
    void initData();
    void* mallocBuffer();
    void createHeap(daPy_anmHeap_c::daAlinkHEAP_TYPE);
    void* loadData(u16);
    void* loadDataIdx(u16);
    void* loadDataPriIdx(u16);
    void* loadDataDemoRID(u16, u16);
    JKRHeap* setAnimeHeap();

    u16 getIdx() const { return mIdx; }
    void resetIdx() { mIdx = 0xffff; }
    void resetPriIdx() { mPriIdx = 0xffff; }
    void resetArcNo() { mArcNo = 0xffff; }
    bool checkNoSetArcNo() const { return mArcNo == 0xFFFF; }

private:
    /* 0x00 */ u16 mIdx;
    /* 0x02 */ u16 mPriIdx;
    /* 0x04 */ u16 mArcNo;
    /* 0x06 */ u16 field_0x06;
    /* 0x08 */ u32 mBufferSize;
    /* 0x0C */ void* mBuffer;
    /* 0x10 */ JKRSolidHeap* mAnimeHeap;
};  // Size = 0x14

class daPy_actorKeep_c {
public:
    daPy_actorKeep_c();
    void setActor();
    void setData(fopAc_ac_c*);
    void clearData();

    u32 getID() const { return mID; }
    void setID(u32 id) { mID = id; }
    fopAc_ac_c* getActor() const { return mActor; }
    fopAc_ac_c* getActorConst() const { return mActor; }

private:
    /* 0x0 */ u32 mID;
    /* 0x4 */ fopAc_ac_c* mActor;
};  // Size: 0x8

class daPy_frameCtrl_c : public J3DFrameCtrl {
public:
    /* 80140D24 */ ~daPy_frameCtrl_c();
    /* 80140D80 */ daPy_frameCtrl_c();
    bool checkAnmEnd();
    void updateFrame();
    void setFrameCtrl(u8, short, short, float, float);

    u16 getEndFlg() { return mEndFlg; }
    u16 getNowSetFlg() { return mNowSetFlg; }
    void onEndFlg() { mEndFlg = 1; }
    void onNowSetFlg() { mNowSetFlg = 1; }
    void offNowSetFlg() { mNowSetFlg = 0; }
    void offEndFlg() {
        mEndFlg = 0;
        mNowSetFlg = 0;
    }

private:
    /* 0x14 */ u16 mEndFlg;
    /* 0x16 */ u16 mNowSetFlg;
};

class Z2WolfHowlMgr;
class daBoomerang_c;

class daPy_demo_c {
public:
    void setSpecialDemoType();

    void setDemoType(u16 pType) { mDemoType = pType; }
    u16 getDemoType() const { return mDemoType; }
    void setDemoMode(u32 mode) { mDemoMode = mode; }
    u32 getDemoMode() const { return mDemoMode; }
    int getParam1() const { return mParam1; }
    void i_setSpecialDemoType() { setDemoType(5); }

private:
    /* 0x00 */ u16 mDemoType;
    /* 0x02 */ s16 mDemoMoveAngle;
    /* 0x04 */ s16 mTimer;
    /* 0x06 */ s16 mParam2;
    /* 0x08 */ int mParam0;
    /* 0x0C */ int mParam1;
    /* 0x10 */ u32 mDemoMode;
    /* 0x14 */ float mStick;
    /* 0x18 */ cXyz mDemoPos0;
};  // Size: 0x24

class daMidna_c;

class daPy_py_c : public fopAc_ac_c {
public:
    /* 0x0568 */ u8 mCutType;
    /* 0x0569 */ u8 mComboCutCount;
    /* 0x056A */ u8 mSpecialMode;  // maybe needs better name
    /* 0x056B */ u8 field_0x56b;
    /* 0x056C */ s16 mDamageTimer;
    /* 0x056E */ u16 mSwordUpTimer;
    /* 0x0570 */ u32 mNoResetFlg0;
    /* 0x0574 */ u32 mNoResetFlg1;
    /* 0x0578 */ u32 mNoResetFlg2;
    /* 0x057C */ u32 mNoResetFlg3;
    /* 0x0580 */ u32 mResetFlg0;
    /* 0x0584 */ u32 mResetFlg1;
    /* 0x0588 */ u32 mEndResetFlg0;
    /* 0x058C */ u32 mEndResetFlg1;
    /* 0x0590 */ u32 mEndResetFlg2;
    /* 0x0594 */ f32 field_0x594;
    /* 0x0598 */ u8 field_0x598[0x4];
    /* 0x059C */ s16 mLookAngleY;
    /* 0x059E */ u8 field_0x59e[0x6];
    /* 0x05A4 */ cXyz mHeadTopPos;
    /* 0x05B0 */ cXyz mItemPos;
    /* 0x05BC */ cXyz mSwordTopPos;
    /* 0x05C8 */ cXyz mLeftHandPos;
    /* 0x05D4 */ cXyz mRightHandPos;
    /* 0x05E0 */ cXyz mLeftFootPosP;
    /* 0x05EC */ cXyz mRightFootPosP;
    /* 0x05F8 */ u8 field_0x5f8[0xC];
    /* 0x0604 */ daPy_demo_c mDemo;

public:
    enum daPy_FLG0 {
        FLG0_UNK_40000000 = 0x40000000,
        EQUIP_HEAVY_BOOTS = 0x2000000,
        FLG0_UNK_8000000 = 0x8000000,
        FLG0_UNK_1000000 = 0x1000000,
        UNDER_WATER_MOVEMENT = 0x800000,
        FLG0_UNK_80000 = 0x80000,
        FLG0_UNK_20000 = 0x20000,
        FLG0_UNK_8000 = 0x8000,
        MAGNE_BOOTS_ON = 0x1000,
        FLG0_UNK_80 = 0x80,
        FLG0_UNK_40 = 0x40,
        FLG0_UNK_20 = 0x20,
        UNK_F_ROLL_CRASH_2 = 0x10,
        UNK_F_ROLL_CRASH_1 = 0x8,
        MIDNA_RIDE = 4,

        HEAVY_STATE_BOOTS = FLG0_UNK_40000000 | EQUIP_HEAVY_BOOTS | FLG0_UNK_20000,
    };
    enum daPy_FLG1 { IS_WOLF = 0x2000000, FLG1_UNK_10000 = 0x10000, THROW_DAMAGE = 0x4000 };
    enum daPy_FLG2 {
        FLG2_UNK_4080000 = 0x4080000,
        FLG2_UNK_2080000 = 0x2080000,
        BOAR_SINGLE_BATTLE = 0x1800000,
        STATUS_WINDOW_DRAW = 0x400000,
        UNK_ARMOR = 0x80000,
        UNK_FLG2_2 = 2,
        UNK_DAPY_FLG2_1 = 1
    };
    enum daPy_FLG3 {
        FLG3_UNK_2000000 = 0x2000000,
        FLG3_UNK_100000 = 0x100000,
        COPY_ROD_THROW_AFTER = 0x40000
    };
    enum daPy_ERFLG0 {
        ERFLG0_UNK_8000000 = 0x8000000,
        ERFLG0_UNK_1000000 = 0x1000000,
        ERFLG0_UNK_100000 = 0x100000,
        ERFLG0_UNK_2 = 2,
        ERFLG0_UNK_1 = 1,
    };
    enum daPy_ERFLG1 {
        GANON_FINISH = 0x80000000,
        UNK_FORCE_PUT_POS = 0x2000,
        ERFLG1_UNK_1 = 1,
    };
    enum daPy_ERFLG2 {};
    enum daPy_RFLG0 {
        RFLG0_UNK_8000000 = 0x8000000,
        RFLG0_UNK_80 = 0x80,
        RFLG0_UNK_40 = 0x40,
        RFLG0_UNK_2 = 0x2,
    };

    enum {
        /* 0x01 */ SMODE_SUMO_READY = 1,
        /* 0x25 */ SMODE_SUMO_LOSE = 37,
        /* 0x27 */ SMODE_WOLF_PUZZLE = 39,
        /* 0x2A */ SMODE_GOAT_STOP = 42,
        /* 0x2B */ SMODE_GORON_THROW,
        /* 0x2C */ SMODE_CARGO_CARRY,
    };

    enum CutType {
        /* 0x01 */ TYPE_CUT_VERTICAL = 1,
        /* 0x02 */ TYPE_CUT_STAB,
        /* 0x03 */ TYPE_CUT_SWEEP,
        /* 0x04 */ TYPE_CUT_HORIZONTAL,
        /* 0x05 */ TYPE_CUT_HEAD,  // Helm Splitter
        /* 0x06 */ TYPE_CUT_LEFT_SWEEP_FINISH,
        /* 0x07 */ TYPE_CUT_DOWN_FINISH,
        /* 0x08 */ TYPE_CUT_TURN_RIGHT,
        /* 0x0A */ TYPE_CUT_JUMP = 10,
        /* 0x10 */ TYPE_CUT_AIR = 0x10,
        /* 0x12 */ TYPE_CUT_LARGE_JUMP_INIT = 0x12,
        /* 0x13 */ TYPE_CUT_LARGE_JUMP,
        /* 0x14 */ TYPE_CUT_LARGE_JUMP_FINISH,
        /* 0x15 */ TYPE_CUT_RIGHT_SWEEP_FINISH,
        /* 0x16 */ TYPE_CUT_TURN_LEFT,
        /* 0x17 */ TYPE_CUT_LARGE_TURN_LEFT,
        /* 0x18 */ TYPE_CUT_LARGE_TURN_RIGHT,
        /* 0x1A */ TYPE_CUT_FAST_MOVE = 0x1A,
        /* 0x1E */ TYPE_CUT_TWIRL = 0x1E,  // Back Slice
        /* 0x1F */ TYPE_CUT_FAST,
        /* 0x20 */ TYPE_CUT_STAB_FINISH,
        /* 0x21 */ TYPE_CUT_STAB_COMBO,
    };

    static u32 setParamData(int, int, int, int);
    static BOOL checkFishingRodItem(int);
    static BOOL checkBombItem(int);
    static BOOL checkBottleItem(int);
    static BOOL checkDrinkBottleItem(int);
    static BOOL checkOilBottleItem(int);
    static BOOL checkOpenBottleItem(int);
    static BOOL checkBowItem(int);
    static BOOL checkHookshotItem(int);
    static BOOL checkTradeItem(int);
    static BOOL checkDungeonWarpItem(int);
    static BOOL checkMasterSwordEquip();
    void checkWoodShieldEquip();
    f32 getAttentionOffsetY();
    s16 checkNowWolfEyeUp();
    static void forceRestartRoom(int, u32, int);
    static void setFmChainPos(fopAc_ac_c*, cXyz*, int);
    static void cancelFmChainGrab();
    static void setLookPos(cXyz*);
    static void setPlayerSe(u32);
    static bool linkGrabSubjectNoDraw(fopAc_ac_c*);
    void wolfGrabSubjectNoDraw(fopAc_ac_c*);
    static bool checkRoomRestartStart();
    static u32 checkCarryStartLightBallA();
    static u32 checkCarryStartLightBallB();
    float getSpinnerRideSpeed() const;
    void checkSpinnerReflectEffect();
    static bool checkBoomerangCharge();
    bool checkBoomerangChargeTime();
    static daBoomerang_c* getThrowBoomerangActor();
    static void cancelBoomerangLockActor(fopAc_ac_c*);
    static void setPlayerDamage(int, int);
    static void setMidnaMotionNum(int);
    static void setMidnaFaceNum(int);
    int checkNoResetFlg0(daPy_FLG0) const;
    int checkEquipHeavyBoots() const;
    int checkBoarSingleBattle() const;
    int checkEndResetFlg0(daPy_ERFLG0) const;
    void onNoResetFlg2(daPy_py_c::daPy_FLG2);
    void offNoResetFlg0(daPy_py_c::daPy_FLG0);
    int checkEndResetFlg2(daPy_py_c::daPy_ERFLG2) const;
    bool getSumouMode() const;
    int checkNoResetFlg3(daPy_py_c::daPy_FLG3) const;
    BOOL checkShieldGet();
    void onNoResetFlg0(daPy_py_c::daPy_FLG0);
    int checkEndResetFlg1(daPy_py_c::daPy_ERFLG1) const;
    void offNoResetFlg1(daPy_py_c::daPy_FLG1);
    void offNoResetFlg2(daPy_py_c::daPy_FLG2);
    int checkWolf() const;
    BOOL checkSwordGet();
    int checkResetFlg0(daPy_py_c::daPy_RFLG0) const;
    int checkNoResetFlg2(daPy_py_c::daPy_FLG2) const;
    int checkMagneBootsOn() const;

    virtual cXyz* getMidnaAtnPos() const;
    virtual void setMidnaMsgNum(fopAc_ac_c*, u16);
    virtual MtxP getModelMtx();
    virtual MtxP getInvMtx();
    virtual cXyz* getShadowTalkAtnPos();
    virtual f32 getGroundY();
    virtual MtxP getLeftItemMatrix();
    virtual MtxP getRightItemMatrix();
    virtual MtxP getLeftHandMatrix();
    virtual MtxP getRightHandMatrix();
    virtual MtxP getLinkBackBone1Matrix();
    virtual MtxP getWolfMouthMatrix();
    virtual MtxP getWolfBackbone2Matrix();
    virtual MtxP getBottleMtx();
    virtual BOOL checkPlayerGuard() const;
    virtual u32 checkPlayerFly() const;
    virtual BOOL checkFrontRoll() const;
    virtual BOOL checkWolfDash() const;
    virtual BOOL checkAutoJump() const;
    virtual bool checkSideStep() const;
    virtual bool checkWolfTriggerJump() const;
    virtual BOOL checkGuardBreakMode() const;
    virtual bool checkLv3Slide() const;
    virtual bool checkWolfHowlDemoMode() const;
    virtual bool checkChainBlockPushPull();
    virtual BOOL checkElecDamage() const;
    virtual BOOL checkEmptyBottleSwing() const;
    virtual BOOL checkBottleSwingMode() const;
    virtual BOOL checkHawkWait() const;
    virtual BOOL checkGoatThrow() const;
    virtual BOOL checkGoatThrowAfter() const;
    virtual BOOL checkWolfTagLockJump() const;
    virtual BOOL checkWolfTagLockJumpLand() const;
    virtual bool checkWolfRope();
    virtual BOOL checkWolfRopeHang() const;
    virtual BOOL checkRollJump() const;
    virtual BOOL checkGoronRideWait() const;
    virtual BOOL checkWolfChain() const;
    virtual BOOL checkWolfWait() const;
    virtual BOOL checkWolfJumpAttack() const;
    virtual BOOL checkWolfRSit() const;
    virtual bool checkBubbleFly() const;
    virtual BOOL checkBottleDrinkEnd() const;
    virtual BOOL checkWolfDig() const;
    virtual BOOL checkCutCharge() const;
    virtual BOOL checkCutTurnCharge() const;
    virtual BOOL checkCutLargeJumpCharge() const;
    virtual bool getBokoFlamePos(cXyz*);
    virtual BOOL checkComboCutTurn() const;
    virtual BOOL checkClimbMove() const;
    virtual BOOL checkGrassWhistle() const;
    virtual BOOL checkBoarRun() const;
    virtual bool checkFmChainPut() const;
    virtual bool checkHorseElecDamage() const;
    virtual float getBaseAnimeFrameRate() const;
    virtual float getBaseAnimeFrame() const;
    virtual void setAnimeFrame(float);
    virtual bool checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*);
    virtual s32 getAtnActorID() const;
    virtual s32 getItemID() const;
    virtual s32 getGrabActorID() const;
    virtual bool exchangeGrabActor(fopAc_ac_c*);
    virtual bool setForceGrab(fopAc_ac_c*, int, int);
    virtual void setForcePutPos(cXyz const&);
    virtual bool checkPlayerNoDraw();
    virtual bool checkRopeTag();
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual void setOutPower(float, short, int);
    virtual void setGrabCollisionOffset(float, float, cBgS_PolyInfo*);
    virtual void onMagneGrab(float, float);
    virtual void onFrollCrashFlg(u8, int);
    virtual MtxP getModelJointMtx(u16);
    virtual MtxP getHeadMtx();
    virtual bool setHookshotCarryOffset(unsigned int, cXyz const*);
    virtual BOOL checkCutJumpCancelTurn() const;
    virtual bool checkIronBallReturn() const;
    virtual bool checkIronBallGroundStop() const;
    virtual BOOL checkSingleBoarBattleSecondBowReady() const;
    virtual bool checkPointSubWindowMode() const;
    virtual void setClothesChange(int);
    virtual void setPlayerPosAndAngle(float (*)[4]);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(cXyz const*, short, int);
    virtual bool setThrowDamage(short, float, float, int, int, int);
    virtual bool checkSetNpcTks(cXyz*, int, int);
    virtual bool setRollJump(float, float, short);
    virtual void playerStartCollisionSE(u32, u32);
    virtual void changeTextureAnime(u16, u16, int);
    virtual void cancelChangeTextureAnime();
    virtual void cancelDungeonWarpReadyNeck();
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeDead(u8, int);
    virtual u32 checkHorseRide() const;
    virtual u32 checkBoarRide() const;
    virtual u32 checkCanoeRide() const;
    virtual u32 checkBoardRide() const;
    virtual u32 checkSpinnerRide() const;
    virtual fopAc_ac_c* getSpinnerActor();
    virtual BOOL checkHorseRideNotReady() const;
    virtual bool checkArrowChargeEnd() const;
    virtual f32 getSearchBallScale() const;
    virtual s16 checkFastShotTime();
    virtual bool checkNoEquipItem() const;
    virtual bool checkFireMaterial() const;
    virtual bool checkKandelaarSwing(int) const;
    virtual s16 getBoardCutTurnOffsetAngleY() const;
    virtual cXyz* getMagneHitPos();
    virtual cXyz* getMagneBootsTopVec();
    virtual bool getKandelaarFlamePos();
    virtual bool checkUseKandelaar(int);
    virtual void setDkCaught(fopAc_ac_c*);
    virtual void onPressedDamage(cXyz const&, short);
    virtual bool checkPriActorOwn(fopAc_ac_c const*) const;
    virtual bool onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    virtual bool checkWolfEnemyBiteAllOwn(fopAc_ac_c const*) const;
    virtual void setWolfEnemyHangBiteAngle(short);
    virtual void setKandelaarMtx(float (*)[4], int, int);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove();
    virtual bool checkSpinnerTriggerAttack();
    virtual void onSpinnerPathForceRemove();
    virtual bool getIronBallBgHit() const;
    virtual bool getIronBallCenterPos();
    virtual bool checkCanoeFishingGetLeft() const;
    virtual bool checkCanoeFishingGetRight() const;
    virtual u8 checkBeeChildDrink() const;
    virtual void skipPortalObjWarp();
    virtual bool checkTreasureRupeeReturn(int) const;
    virtual void setSumouReady(fopAc_ac_c*);
    virtual bool checkAcceptDungeonWarpAlink(int);
    virtual s16 getSumouCounter() const;
    virtual s16 checkSumouWithstand() const;
    virtual void cancelGoronThrowEvent();
    virtual void setSumouGraspCancelCount(int);
    virtual void setSumouPushBackDirection(short);
    virtual void setSumouLoseHeadUp();
    virtual s16 getGiantPuzzleAimAngle() const;
    virtual void setGoronSideMove(fopAc_ac_c*);
    virtual void setCargoCarry(fopAc_ac_c*);
    virtual bool getDpdFarFlg() const;
    virtual bool getHookshotTopPos();
    virtual bool checkHookshotReturnMode() const;
    virtual bool checkHookshotShootReturnMode() const;
    virtual bool checkOctaIealHang() const;
    virtual void cancelOctaIealHang();
    virtual void cancelDragonHangBackJump();
    virtual void setOctaIealWildHang();
    virtual bool checkDragonHangRide() const;
    virtual void changeDragonActor(fopAc_ac_c*);
    virtual u8 getClothesChangeWaitTimer() const;
    virtual u8 getShieldChangeWaitTimer() const;
    virtual u8 getSwordChangeWaitTimer() const;
    virtual BOOL checkMetamorphose() const;
    virtual BOOL checkWolfDownAttackPullOut() const;
    virtual BOOL checkBootsOrArmorHeavy() const;
    virtual s32 getBottleOpenAppearItem() const;
    virtual bool checkItemSwordEquip() const;
    virtual float getSinkShapeOffset() const;
    virtual BOOL checkSinkDead() const;
    virtual BOOL checkHorseStart();
    virtual Z2WolfHowlMgr* getWolfHowlMgrP();
    virtual BOOL checkWolfHowlSuccessAnime() const;
    virtual BOOL checkCopyRodTopUse();
    virtual bool checkCopyRodEquip() const;
    virtual BOOL checkCutJumpMode() const;

    bool getSumouCameraMode() const {
        bool sumouCameraMode = false;
        if (field_0x560[0xA] != 0 && field_0x560[0xA] < 0x26) {
            sumouCameraMode = true;
        }
        return sumouCameraMode;
    }

    bool checkStatusWindowDraw() { return i_checkNoResetFlg2(STATUS_WINDOW_DRAW); }
    bool checkCargoCarry() const { return mSpecialMode == SMODE_CARGO_CARRY; }
    bool getHeavyStateAndBoots() { return i_checkNoResetFlg0(HEAVY_STATE_BOOTS); }

    // some functions use these function as an inline
    // is there a better way to handle this?
    int i_checkNoResetFlg0(daPy_FLG0 pFlag) const { return mNoResetFlg0 & pFlag; }
    int i_checkNoResetFlg1(daPy_FLG1 pFlag) const { return mNoResetFlg1 & pFlag; }
    int i_checkNoResetFlg2(daPy_FLG2 pFlag) const { return mNoResetFlg2 & pFlag; }
    int i_checkNoResetFlg3(daPy_FLG3 pFlag) const { return mNoResetFlg3 & pFlag; }
    void i_onNoResetFlg0(int pFlg) { mNoResetFlg0 |= pFlg; }
    void i_onNoResetFlg1(int pFlg) { mNoResetFlg1 |= pFlg; }
    void i_onNoResetFlg2(int pFlg) { mNoResetFlg2 |= pFlg; }
    void i_onNoResetFlg3(int pFlg) { mNoResetFlg3 |= pFlg; }
    void i_offNoResetFlg0(int pFlg) { mNoResetFlg0 &= ~pFlg; }
    void i_offNoResetFlg3(int pFlg) { mNoResetFlg3 &= ~pFlg; }
    void i_offResetFlg0(int flag) { mResetFlg0 &= ~flag; }
    void i_onResetFlg0(int flag) { mResetFlg0 |= flag; }
    void i_onResetFlg1(int flag) { mResetFlg1 |= flag; }
    void i_onEndResetFlg0(int flag) { mEndResetFlg0 |= flag; }
    int i_checkResetFlg0(daPy_py_c::daPy_RFLG0 flag) const { return mResetFlg0 & flag; }
    int i_checkEndResetFlg0(daPy_py_c::daPy_ERFLG0 flag) const { return mEndResetFlg0 & flag; }
    int i_checkEndResetFlg1(daPy_py_c::daPy_ERFLG1 flag) const { return mEndResetFlg1 & flag; }
    void i_onEndResetFlg1(daPy_ERFLG1 pFlg) { mEndResetFlg1 |= pFlg; }
    u32 i_checkWolf() const { return i_checkNoResetFlg1(IS_WOLF); }
    BOOL i_checkEquipHeavyBoots() const { return i_checkNoResetFlg0(EQUIP_HEAVY_BOOTS); }
    BOOL i_checkMagneBootsOn() const { return i_checkNoResetFlg0(MAGNE_BOOTS_ON); }
    bool i_checkMidnaRide() const { return i_checkNoResetFlg0(MIDNA_RIDE); }

    inline static u32 getLastSceneMode();
    inline bool checkWoodSwordEquip();
    inline BOOL i_checkSwordGet();
    inline bool i_checkShieldGet() const;
    inline BOOL checkNowWolf();
    inline bool checkZoraWearFlg() const;

    static daMidna_c* getMidnaActor() { return m_midnaActor; }

    static daMidna_c* m_midnaActor;
};

#endif /* D_A_D_A_PLAYER_H */
