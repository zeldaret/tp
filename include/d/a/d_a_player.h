#ifndef D_A_D_A_PLAYER_H
#define D_A_D_A_PLAYER_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "d/d_resorce.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daPy_anmHeap_c {
public:
    enum daAlinkHEAP_TYPE {};

    daPy_anmHeap_c(u32);
    ~daPy_anmHeap_c();
    void initData();
    void mallocBuffer();
    void createHeap(daPy_anmHeap_c::daAlinkHEAP_TYPE);
    void loadData(u16);
    void loadDataIdx(u16);
    void loadDataPriIdx(u16);
    void loadDataDemoRID(u16, u16);
    void setAnimeHeap();

    u16 getIdx() const { return mIdx; }
    void resetIdx() { mIdx = 0xffff; }
    void resetPriIdx() { mPriIdx = 0xffff; }
    void resetArcNo() { mArcNo = 0xffff; }

private:
    /* 0x00 */ u16 mIdx;
    /* 0x02 */ u16 mPriIdx;
    /* 0x04 */ u16 mArcNo;
    /* 0x06 */ u16 field_0x06;
    /* 0x08 */ int mBufferSize;
    /* 0x0C */ void* mBuffer;
    /* 0x10 */ JKRHeap* mAnimeHeap;
};  // Size = 0x14

class daPy_actorKeep_c {
public:
    daPy_actorKeep_c(void);
    void setActor(void);
    void setData(fopAc_ac_c*);
    void clearData(void);

    u32 getID(void) const { return mID; }
    void setID(u32 id) { mID = id; }
    fopAc_ac_c* getActor(void) const { return mActor; }

private:
    u32 mID;
    fopAc_ac_c* mActor;
};

#pragma pack(push, 1)
class daPy_frameCtrl_c : public J3DFrameCtrl {
public:
    bool checkAnmEnd(void);
    void updateFrame(void);
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
#pragma pack(pop)

class daPy_demo_c {
public:
private:
    /* 0x00 */ u16 mDemoType;
    /* 0x02 */ s16 mDemoMoveAngle;
    /* 0x04 */ s16 mTimer;
    /* 0x06 */ s16 mParam2;
    /* 0x08 */ int mParam0;
    /* 0x0C */ int mParam1;
    /* 0x10 */ int mDemoMode;
    /* 0x14 */ float mStick;
    /* 0x18 */ cXyz mDemoPos0;
};  // Size = 0x24

class daPy_py_c : public fopAc_ac_c {
private:
    /* 0x0538 */ u8 field_0x538[0x32];
    /* 0x056A */ u8 field_0x56a;
    /* 0x056B */ u8 field_0x56b[5];
    /* 0x0570 */ int mNoResetFlg0;
    /* 0x0574 */ int mNoResetFlg1;
    /* 0x0578 */ int mNoResetFlg2;
    /* 0x057C */ int mNoResetFlg3;
    /* 0x0580 */ int mResetFlg0;
    /* 0x0584 */ int mResetFlg1;
    /* 0x0588 */ int mEndResetFlg0;
    /* 0x058C */ int mEndResetFlg1;
    /* 0x0590 */ int mEndResetFlg2;
    /* 0x0594 */ u8 field_0x594[0x10];
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
    enum daPy_FLG0 { EquipHeavyBoots = 0x2000000 };
    enum daPy_FLG2 {};
    enum daPy_ERFLG0 {};

    void setParamData(int, int, int, int);
    void checkFishingRodItem(int);
    void checkBombItem(int);
    void checkBottleItem(int);
    void checkDrinkBottleItem(int);
    void checkOilBottleItem(int);
    void checkOpenBottleItem(int);
    void checkBowItem(int);
    void checkHookshotItem(int);
    void checkTradeItem(int);
    BOOL checkDungeonWarpItem(int);
    void checkMasterSwordEquip();
    void checkWoodShieldEquip();
    void getAttentionOffsetY();
    void checkNowWolfEyeUp();
    void forceRestartRoom(int, u32, int);
    void setFmChainPos(fopAc_ac_c*, cXyz*, int);
    void cancelFmChainGrab();
    void setLookPos(cXyz*);
    void setPlayerSe(u32);
    void linkGrabSubjectNoDraw(fopAc_ac_c*);
    void wolfGrabSubjectNoDraw(fopAc_ac_c*);
    void checkRoomRestartStart();
    void checkCarryStartLightBallA();
    void checkCarryStartLightBallB();
    float getSpinnerRideSpeed() const;
    void checkSpinnerReflectEffect();
    void checkBoomerangCharge();
    bool checkBoomerangChargeTime();
    void getThrowBoomerangActor();
    void cancelBoomerangLockActor(fopAc_ac_c*);
    void setPlayerDamage(int, int);
    void setMidnaMotionNum(int);
    void setMidnaFaceNum(int);
    int checkNoResetFlg0(daPy_FLG0) const;
    int checkEquipHeavyBoots() const;
    u32 checkBoarSingleBattle(void) const;
    u32 checkEndResetFlg0(daPy_ERFLG0) const;

    virtual void unk();
    virtual bool getMidnaAtnPos(void) const;
    virtual void setMidnaMsgNum(fopAc_ac_c*, u16);
    virtual u32 getModelMtx(void);
    virtual u32 getInvMtx(void);
    virtual cXyz* getShadowTalkAtnPos(void);
    virtual float getGroundY();
    virtual u32 getLeftItemMatrix(void);
    virtual u32 getRightItemMatrix(void);
    virtual u32 getLeftHandMatrix(void);
    virtual u32 getRightHandMatrix(void);
    virtual u32 getLinkBackBone1Matrix(void);
    virtual u32 getWolfMouthMatrix(void);
    virtual u32 getWolfBackbone2Matrix(void);
    virtual bool getBottleMtx(void);
    virtual bool checkPlayerGuard(void) const;
    virtual bool checkPlayerFly() const;
    virtual bool checkFrontRoll() const;
    virtual bool checkWolfDash() const;
    virtual bool checkAutoJump(void) const;
    virtual bool checkSideStep(void) const;
    virtual bool checkWolfTriggerJump(void) const;
    virtual bool checkGuardBreakMode(void) const;
    virtual bool checkLv3Slide(void) const;
    virtual bool checkWolfHowlDemoMode(void) const;
    virtual bool checkChainBlockPushPull(void);
    virtual bool checkElecDamage(void) const;
    virtual bool checkEmptyBottleSwing(void) const;
    virtual bool checkBottleSwingMode(void) const;
    virtual bool checkHawkWait(void) const;
    virtual bool checkGoatThrow(void) const;
    virtual bool checkGoatThrowAfter(void) const;
    virtual bool checkWolfTagLockJump(void) const;
    virtual bool checkWolfTagLockJumpLand(void) const;
    virtual bool checkWolfRope(void);
    virtual bool checkWolfRopeHang(void) const;
    virtual bool checkRollJump(void) const;
    virtual bool checkGoronRideWait(void) const;
    virtual bool checkWolfChain(void) const;
    virtual bool checkWolfWait(void) const;
    virtual bool checkWolfJumpAttack(void) const;
    virtual bool checkWolfRSit(void) const;
    virtual bool checkBubbleFly(void) const;
    virtual bool checkBottleDrinkEnd(void) const;
    virtual bool checkWolfDig(void) const;
    virtual bool checkCutCharge(void) const;
    virtual bool checkCutTurnCharge(void) const;
    virtual bool checkCutLargeJumpCharge(void) const;
    virtual bool getBokoFlamePos(cXyz*);
    virtual bool checkComboCutTurn(void) const;
    virtual bool checkClimbMove(void) const;
    virtual bool checkGrassWhistle(void) const;
    virtual bool checkBoarRun(void) const;
    virtual bool checkFmChainPut(void) const;
    virtual bool checkHorseElecDamage(void) const;
    virtual float getBaseAnimeFrameRate(void) const;
    virtual float getBaseAnimeFrame(void) const;
    virtual float setAnimeFrame(float);
    virtual bool checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*) const;
    virtual bool getAtnActorID(void) const;
    virtual bool getItemID(void) const;
    virtual bool getGrabActorID(void) const;
    virtual bool exchangeGrabActor(fopAc_ac_c*);
    virtual bool setForceGrab(fopAc_ac_c*, bool, bool);
    virtual void setForcePutPos(cXyz const&);
    virtual bool checkPlayerNoDraw(void);
    virtual bool checkRopeTag(void);
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual float setOutPower(float, short, bool);
    virtual void setGrabCollisionOffset(float, float, void*);
    virtual void onMagneGrab(float, float);
    virtual void onFrollCrashFlg(u8, bool);
    virtual bool getModelJoboolMtx(u16);
    virtual bool getHeadMtx(void);
    virtual bool setHookshotCarryOffset(u32, cXyz const*);
    virtual bool checkIronBallReturn(void) const;
    virtual bool checkIronBallGroundStop(void) const;
    virtual bool checkSingleBoarBattleSecondBowReady(void) const;
    virtual bool checkPoboolSubWindowMode(void) const;
    virtual void setClothesChange(bool);
    virtual void setPlayerPosAndAngle(float (*)[4]);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(cXyz const*, short, bool);
    virtual bool setThrowDamage(short, float, float, bool, bool, bool);
    virtual bool checkSetNpcTks(cXyz*, bool, bool);
    virtual bool setRollJump(float, float, short);
    virtual void playerStartCollisionSE(u32, u32);
    virtual void changeTextureAnime(u16, u16, bool);
    virtual void cancelChangeTextureAnime(void);
    virtual void cancelDungeonWarpReadyNeck(void);
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeDead(u8, bool);
    virtual bool checkHorseRide() const;
    virtual bool checkBoarRide() const;
    virtual bool checkCanoeRide() const;
    virtual bool checkBoardRide() const;
    virtual u32 checkSpinnerRide() const;
    virtual bool getSpinnerActor(void);
    virtual bool checkHorseRideNotReady(void) const;
    virtual bool checkArrowChargeEnd(void) const;
    virtual float getSearchBallScale(void) const;
    virtual bool checkFastShotTime(void);
    virtual bool checkNoEquipItem(void) const;
    virtual bool checkFireMaterial(void) const;
    virtual bool checkKandelaarSwing(bool) const;
    virtual bool getBoardCutTurnOffsetAngleY(void) const;
    virtual bool getMagneHitPos(void);
    virtual bool getMagneBootsTopVec(void);
    virtual bool getKandelaarFlamePos();
    virtual bool checkUseKandelaar(bool);
    virtual void setDkCaught(fopAc_ac_c*);
    virtual void onPressedDamage(cXyz const&, short);
    virtual bool checkPriActorOwn(fopAc_ac_c const*) const;
    virtual bool onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    virtual bool checkWolfEnemyBiteAllOwn(fopAc_ac_c const*) const;
    virtual void setWolfEnemyHangBiteAngle(short);
    virtual void setKandelaarMtx(float (*)[4], bool, bool);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove(void);
    virtual bool checkSpinnerTriggerAttack(void);
    virtual void onSpinnerPathForceRemove(void);
    virtual bool getIronBallBgHit(void) const;
    virtual bool getIronBallCenterPos(void);
    virtual bool checkCanoeFishingGetLeft(void) const;
    virtual bool checkCanoeFishingGetRight(void) const;
    virtual bool checkBeeChildDrink(void) const;
    virtual void skipPortalObjWarp(void);
    virtual bool checkTreasureRupeeReturn(bool) const;
    virtual void setSumouReady(fopAc_ac_c*);
    virtual bool checkAcceptDungeonWarpAlink(bool);
    virtual bool getSumouCounter(void) const;
    virtual bool checkSumouWithstand(void) const;
    virtual void cancelGoronThrowEvent(void);
    virtual void setSumouGraspCancelCount(bool);
    virtual void setSumouPushBackDirection(short);
    virtual void setSumouLoseHeadUp(void);
    virtual s16 getGiantPuzzleAimAngle(void) const;
    virtual void setGoronSideMove(fopAc_ac_c*);
    virtual void setCargoCarry(fopAc_ac_c*);
    virtual bool getDpdFarFlg(void) const;
    virtual bool getHookshotTopPos(void);
    virtual bool checkHookshotReturnMode(void) const;
    virtual bool checkHookshotShootReturnMode(void) const;
    virtual bool checkOctaIealHang(void) const;
    virtual void cancelOctaIealHang(void);
    virtual void cancelDragonHangBackJump(void);
    virtual void setOctaIealWildHang(void);
    virtual bool checkDragonHangRide(void) const;
    virtual void changeDragonActor(fopAc_ac_c*);
    virtual bool getClothesChangeWaitTimer(void) const;
    virtual bool getShieldChangeWaitTimer(void) const;
    virtual bool getSwordChangeWaitTimer(void) const;
    virtual bool checkMetamorphose(void) const;
    virtual bool checkWolfDownAttackPullOut(void) const;
    virtual bool checkBootsOrArmorHeavy(void) const;
    virtual bool getBottleOpenAppearItem(void) const;
    virtual bool checkItemSwordEquip(void) const;
    virtual float getSinkShapeOffset(void) const;
    virtual bool checkSinkDead(void) const;
    virtual bool checkHorseStart(void);
    virtual bool getWolfHowlMgrP(void);
    virtual bool checkWolfHowlSuccessAnime(void) const;
    virtual bool checkCopyRodTopUse(void);
    virtual bool checkCopyRodEquip(void) const;
    virtual bool checkCutJumpMode(void) const;

    inline void onNoResetFlg0(int pFlg) { mNoResetFlg0 |= pFlg; }
    inline void onNoResetFlg3(int pFlg) { mNoResetFlg3 |= pFlg; }
    inline void offNoResetFlg3(int pFlg) { mNoResetFlg3 &= ~pFlg; }
    // inline fopAc_ac_c& getActor() { return mActor; }

    static u8 m_midnaActor[4];
};

#endif /* D_A_D_A_PLAYER_H */
