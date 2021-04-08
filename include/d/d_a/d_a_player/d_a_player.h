#ifndef D_A_PLAYER_H_
#define D_A_PLAYER_H_

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "SComponent/c_bg_s_poly_info.h"
#include "SComponent/c_xyz.h"
#include "d/d_drawlist/d_drawlist.h"
#include "f/f_op/f_op_actor.h"
#include "global.h"
#include "mtx_vec.h"

class daPy_anmHeap_c {
public:
    u16 getIdx() const { return mIdx; }

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
    void setData(void);
    void clearData(void);

    u32 getID(void) const { return mID; }
    void setID(u32 id) { mID = id; }
    fopAc_ac_c* getActor(void) const { return mActor; }

private:
    u32 mID;
    fopAc_ac_c* mActor;
};

#pragma pack(push, 1)
class daPy_frameCtrl_c : J3DFrameCtrl {
public:
    bool checkAnmEnd(void);
    void updateFrame(void);
    void setFrameCtrl(u8, short, short, float, float);

private:
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
};
#pragma pack(pop)

class daPy_sightPacket_c : dDlst_base_c {
private:
    /* 0x04 */ bool mDrawFlag;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ cXyz mPos;
    /* 0x14 */ Mtx field_0x14;
    /* 0x44 */ ResTIMG* field_0x44;
    /* 0x48 */ ResTIMG* field_0x48;
};

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

class daPy_py_c {
private:
    /* 0x0000 */ fopAc_ac_c mActor;
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
    enum daPy_FLG2 {};
    enum daPy_ERFLG0 {};

    enum daPy_FLG0 { EquipHeavyBoots = 0x2000000 };

    u32 checkBoarSingleBattle(void) const;
    u32 checkEndResetFlg0(daPy_ERFLG0) const;
    int getMidnaAtnPos(void) const;
    void setMidnaMsgNum(fopAc_ac_c*, u16);
    u32 getModelMtx(void);
    u32 getInvMtx(void);
    daPy_py_c* getShadowTalkAtnPos(void);
    u32 getLeftItemMatrix(void);
    u32 getRightItemMatrix(void);
    u32 getLeftHandMatrix(void);
    u32 getRightHandMatrix(void);
    u32 getLinkBackBone1Matrix(void);
    u32 getWolfMouthMatrix(void);
    u32 getWolfBackbone2Matrix(void);
    int getBottleMtx(void);
    int checkPlayerGuard(void);
    int checkAutoJump(void) const;
    int checkSideStep(void) const;
    int checkWolfTriggerJump(void) const;
    int checkGuardBreakMode(void) const;
    int checkLv3Slide(void) const;
    int checkWolfHowlDemoMode(void) const;
    int checkChainBlockPushPull(void);
    int checkElecDamage(void) const;
    int checkEmptyBottleSwing(void) const;
    int checkBottleSwingMode(void) const;
    int checkHawkWait(void) const;
    int checkGoatThrow(void) const;
    int checkGoatThrowAfter(void) const;
    int checkWolfTagLockJump(void) const;
    int checkWolfTagLockJumpLand(void) const;
    int checkWolfRope(void);
    int checkWolfRopeHang(void) const;
    int checkRollJump(void) const;
    int checkGoronRideWait(void) const;
    int checkWolfChain(void) const;
    int checkWolfWait(void) const;
    int checkWolfJumpAttack(void) const;
    int checkWolfRSit(void) const;
    int checkBubbleFly(void) const;
    int checkBottleDrinkEnd(void) const;
    int checkWolfDig(void) const;
    int checkCutCharge(void) const;
    int checkCutTurnCharge(void) const;
    int checkCutLargeJumpCharge(void) const;
    int getBokoFlamePos(cXyz*);
    int checkComboCutTurn(void) const;
    int checkClimbMove(void) const;
    int checkGrassWhistle(void) const;
    int checkBoarRun(void) const;
    int checkFmChainPut(void) const;
    int checkHorseElecDamage(void) const;
    float getBaseAnimeFrameRate(void) const;
    float getBaseAnimeFrame(void) const;
    float setAnimeFrame(float);
    int checkWolfLock(fopAc_ac_c*) const;
    int cancelWolfLock(fopAc_ac_c*) const;
    int getItemID(void) const;
    int exchangeGrabActor(fopAc_ac_c*);
    int setForceGrab(fopAc_ac_c*, int, int);
    void setForcePutPos(cXyz const&);
    int checkPlayerNoDraw(void);
    int checkRopeTag(void);
    void voiceStart(u32);
    void seStartOnlyReverb(u32);
    void seStartOnlyReverbLevel(u32);
    float setOutPower(float, short, int);
    void setGrabCollisionOffset(float, float, cBgS_PolyInfo*);
    void onMagneGrab(float, float);
    int getModelJointMtx(u16);
    int getHeadMtx(void);
    int setHookshotCarryOffset(u32, cXyz const*);
    int checkIronBallReturn(void) const;
    int checkIronBallGroundStop(void) const;
    int checkSingleBoarBattleSecondBowReady(void) const;
    int checkPointSubWindowMode(void) const;
    void setClothesChange(int);
    void setPlayerPosAndAngle(float (*)[4]);
    // void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    void setPlayerPosAndAngle(cXyz const*, short, int);
    int setThrowDamage(short, float, float, int, int, int);
    int checkSetNpcTks(cXyz*, int, int);
    int setRollJump(float, float, short);
    void playerStartCollisionSE(u32, u32);
    void changeTextureAnime(u16, u16, int);
    void cancelChangeTextureAnime(void);
    void cancelDungeonWarpReadyNeck(void);
    void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    void onSceneChangeDead(u8, int);
    int getSpinnerActor(void);
    int checkHorseRideNotReady(void) const;
    int checkArrowChargeEnd(void) const;
    float getSearchBallScale(void) const;
    int checkFastShotTime(void);
    int checkNoEquipItem(void) const;
    int checkFireMaterial(void) const;
    int checkKandelaarSwing(int) const;
    int getBoardCutTurnOffsetAngleY(void) const;
    int getMagneHitPos(void);
    int getMagneBootsTopVec(void);
    int checkUseKandelaar(int);
    void setDkCaught(fopAc_ac_c*);
    void onPressedDamage(cXyz const&, short);
    int checkPriActorOwn(fopAc_ac_c const*) const;
    int onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    int checkWolfEnemyBiteAllOwn(fopAc_ac_c const*) const;
    void setWolfEnemyHangBiteAngle(short);
    void setKandelaarMtx(float (*)[4], int, int);
    int getStickAngleFromPlayerShape(short*) const;
    int checkSpinnerPathMove(void);
    int checkSpinnerTriggerAttack(void);
    void onSpinnerPathForceRemove(void);
    int getIronBallBgHit(void) const;
    int getIronBallCenterPos(void);
    int checkCanoeFishingGetLeft(void) const;
    int checkCanoeFishingGetRight(void) const;
    int checkBeeChildDrink(void) const;
    void skipPortalObjWarp(void);
    int checkTreasureRupeeReturn(int) const;
    void setSumouReady(fopAc_ac_c*);
    int checkAcceptDungeonWarpAlink(int);
    int getSumouCounter(void) const;
    int checkSumouWithstand(void) const;
    void cancelGoronThrowEvent(void);
    void setSumouGraspCancelCount(int);
    void setSumouPushBackDirection(short);
    void setSumouLoseHeadUp(void);
    s16 getGiantPuzzleAimAngle(void) const;
    void setGoronSideMove(fopAc_ac_c*);
    void setCargoCarry(fopAc_ac_c*);
    int getDpdFarFlg(void) const;
    int getHookshotTopPos(void);
    int checkHookshotReturnMode(void) const;
    int checkHookshotShootReturnMode(void) const;
    int checkOctaIealHang(void) const;
    void cancelOctaIealHang(void);
    void cancelDragonHangBackJump(void);
    void setOctaIealWildHang(void);
    int checkDragonHangRide(void) const;
    void changeDragonActor(fopAc_ac_c*);
    int getClothesChangeWaitTimer(void) const;
    int getShieldChangeWaitTimer(void) const;
    int getSwordChangeWaitTimer(void) const;
    int checkMetamorphose(void) const;
    int checkWolfDownAttackPullOut(void) const;
    int checkBootsOrArmorHeavy(void) const;
    int getBottleOpenAppearItem(void) const;
    int checkItemSwordEquip(void) const;
    float getSinkShapeOffset(void) const;
    int checkSinkDead(void) const;
    int checkHorseStart(void);
    int getWolfHowlMgrP(void);
    int checkWolfHowlSuccessAnime(void) const;
    int checkCopyRodTopUse(void);
    int checkCopyRodEquip(void) const;
    int checkCutJumpMode(void) const;
    int getAtnActorID(void) const;  // might not be int
    int checkNoResetFlg0(daPy_FLG0) const;
    int checkEquipHeavyBoots() const;

    virtual void onFrollCrashFlg(u8, int);
    virtual bool checkWolfDash(void);

    inline void onNoResetFlg3(int pFlg) { mNoResetFlg3 |= pFlg; }
    inline void onNoResetFlg0(int pFlg) { mNoResetFlg0 |= pFlg; }
    inline void offNoResetFlg3(int pFlg) { mNoResetFlg3 &= ~pFlg; }

    inline fopAc_ac_c& getActor() { return mActor; }
};

class daHorse_c {
public:
    fopAc_ac_c* getZeldaActor(void);

private:
    u8 unk[0x1254];
    daPy_actorKeep_c mZeldaActorKeep;
};

#endif