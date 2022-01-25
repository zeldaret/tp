#ifndef D_COM_D_COM_INF_GAME_H
#define D_COM_D_COM_INF_GAME_H

#include "d/a/d_a_alink.h"
#include "d/bg/d_bg_s.h"
#include "d/cc/d_cc_s.h"
#include "d/d_attention.h"
#include "d/d_drawlist.h"
#include "d/d_resorce.h"
#include "d/d_stage.h"
#include "d/d_vibration.h"
#include "d/event/d_event.h"
#include "d/event/d_event_manager.h"
#include "d/particle/d_particle.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"

struct dTimer_c {
    /* 8025D524 */ int deleteCheck();
    /* 8025D618 */ void start(int, s16);
    /* 8025D538 */ void start(int);
    /* 8025D7E8 */ void stop(u8);
    /* 8025D86C */ void restart(u8);
    /* 8025D920 */ void end(int);
    /* 8025D9E0 */ void deleteRequest();
};

class __d_timer_info_c {
public:
    __d_timer_info_c() {
        mTimerMode = -1;
        mTimerLimitTimeMs = 0;
        mTimerNowTimeMs = 0;
        mTimerPtr = NULL;
    }
    dTimer_c* mTimerPtr;
    s32 mTimerNowTimeMs;
    s32 mTimerLimitTimeMs;
    s32 mTimerMode;
    u8 mTimerType;
};

class phaseParam_c {
public:
    /* 0x0 */ char* field_0x0;
    /* 0x4 */ JKRHeap* heap;
};

class dComIfG_camera_info_class {
public:
    dComIfG_camera_info_class() {}
    ~dComIfG_camera_info_class() {}

    /* 0x00 */ camera_class* mCamera;
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ u32 mCameraAttentionStatus;
    /* 0x0C */ f32 mCameraZoomScale;
    /* 0x10 */ f32 mCameraZoomForcus;
    /* 0x14 */ char* mCameraParamFileName;
    /* 0x18 */ cXyz mCameraPos;
    /* 0x24 */ cXyz mCameraTarget;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ s16 field_0x34;
};
STATIC_ASSERT(sizeof(dComIfG_camera_info_class) == 0x38);

enum PlayerPtr { LINK_PTR, HORSE_PTR };

class daHorse_c;
class dPa_control_c;
class daAlink_c;
class dMsgObject_c;

class dComIfG_play_c {
public:
    dComIfG_play_c() { this->ct(); }
    void ct();
    void init();
    void itemInit();
    void setItemBombNumCount(u8, s16);
    s16 getItemBombNumCount(u8);
    void clearItemBombNumCount(u8);
    void setNowVibration(u8);
    u32 getNowVibration();
    void setStartStage(dStage_startStage_c*);
    static int getLayerNo_common_common(char const*, int, int);
    static int getLayerNo_common(char const*, int, int);
    static int getLayerNo(int);
    void createParticle();
    u32 createSimpleModel();
    void deleteSimpleModel();
    void drawSimpleModel();
    u32 addSimpleModel(J3DModelData*, int, u8);
    u32 removeSimpleModel(J3DModelData*, int);
    u32 entrySimpleModel(J3DModel*, int);
    void setTimerNowTimeMs(int);
    int getTimerNowTimeMs();
    void setTimerLimitTimeMs(int);
    int getTimerLimitTimeMs();
    void setTimerMode(int);
    int getTimerMode();
    void setTimerType(u8);
    u8 getTimerType();
    void setTimerPtr(dTimer_c*);
    dTimer_c* getTimerPtr();
    void setWarpItemData(const char*, cXyz, s16, s8, u8, u8);
    ~dComIfG_play_c() {}

    // inlines
    bool& isPauseFlag() { return mPauseFlag; }
    dMsgObject_c* getMsgObjectClass() { return mMsgObjectClass; }
    dStage_roomControl_c* getRoomControl() { return &mRoomControl; }
    dStage_stageDt_c& getStage() { return mStageData; }
    dEvt_control_c& getEvent() { return mEvent; }
    daHorse_c* getHorseActor() { return (daHorse_c*)mPlayerPtr[1]; }
    u8& getItemLifeCountType() { return mItemLifeCountType; }
    void setItem(u8 slot, u8 i_no) {
        mItemSlot = slot;
        mItemID = i_no;
    }

    void setSelectItem(int idx, u8 itemId) { mSelectItem[idx] = itemId; }

    void setSelectEquip(int idx, u8 item_id) { mSelectEquip[idx] = item_id; }

    u8 getSelectItem(int idx) { return mSelectItem[idx]; }

    void setZStatus(u8 status, u8 flag) {
        mZStatus = status;
        mZSetFlag = flag;
    }
    void setRStatus(u8 status, u8 flag) {
        mRStatus = status;
        mRSetFlag = flag;
    }
    void setDoStatus(u8 status, u8 flag) {
        mDoStatus = status;
        mDoSetFlag = flag;
    }
    void setAStatus(u8 status, u8 flag) {
        mAStatus = status;
        mASetFlag = flag;
    }
    void setXStatus(u8 status, u8 flag) {
        mXStatus = status;
        mXSetFlag = flag;
    }
    void setYStatus(u8 status, u8 flag) {
        mYStatus = status;
        mYSetFlag = flag;
    }
    void setBottleStatus(u8 status, u8 flag) {
        mBottleStatus = status;
        mBottleSetFlag = flag;
    }
    void setNunStatus(u8 status, u8 param_1, u8 flag) {
        mNunStatus = status;
        field_0x4ef0 = param_1;
        mNunSetFlag = flag;
    }
    void setRemoConStatus(u8 status, u8 param_1, u8 flag) {
        mRemoConStatus = status;
        field_0x4ef2 = param_1;
        mRemoConSetFlag = flag;
    }
    void setNunZStatus(u8 status, u8 flag) {
        mNunZStatus = status;
        mNunZSetFlag = flag;
    }
    void setNunCStatus(u8 status, u8 flag) {
        mNunCStatus = status;
        mNunCSetFlag = flag;
    }
    void setCStickStatus(u8 status, u8 param_1, u8 flag) {
        mCStickStatus = status;
        mCStickDirection = param_1;
        mCStickSetFlag = flag;
    }
    void setItemLifeCount(float hearts, u8 type) {
        mItemLifeCount += hearts;
        mItemLifeCountType = type;
    }
    void setItemRupeeCount(int rupees) { mItemRupeeCount += rupees; }
    void setItemMagicCount(s16 magic) { mItemMagicCount += magic; }
    void setItemMaxMagicCount(s16 max) { mItemMaxMagicCount += max; }
    void setItemArrowNumCount(s16 arrows) { mItemArrowNumCount += arrows; }
    void setItemPachinkoNumCount(s16 seeds) { mItemPachinkoNumCount += seeds; }
    void setItemKeyNumCount(s16 keys) { mItemKeyNumCount += keys; }
    void setItemMaxLifeCount(s16 max) { mItemMaxLifeCount += max; }
    void setOxygen(int oxygen) { mOxygen = oxygen; }
    void setNowOxygen(s32 oxygen) { mNowOxygen = oxygen; }
    int getOxygen() { return mOxygen; }
    int getMaxOxygen() { return mMaxOxygen; }
    void setMaxOxygen(int max) { mMaxOxygen = max; }
    void setItemNowLife(u16 life) { mItemNowLife = life; }
    void setItemNowMagic(s16 magic) { mItemNowMagicCount = magic; }
    void setItemNowOil(s32 oil) { mItemNowOil = oil; }
    u8 getNeedLightDropNum() { return mNeedLightDropNum; }
    u8 getDoStatus() { return mDoStatus; }
    u8 getRStatus() { return mRStatus; }
    u8 getAStatus() { return mAStatus; }
    u8 getXStatus() { return mXStatus; }
    u8 getYStatus() { return mYStatus; }
    u8 getZStatus() { return mZStatus; }
    u8 get3DStatus() { return m3DStatus; }
    u8 getCStickStatus() { return mCStickStatus; }
    u8 getSButtonStatus() { return mSButtonStatus; }
    u8 getNunStatus() { return mNunStatus; }
    u8 getRemoConStatus() { return mRemoConStatus; }
    u8 getNunZStatus() { return mNunZStatus; }
    u8 getNunCStatus() { return mNunCStatus; }
    u8 getBottleStatus() { return mBottleStatus; }
    bool isDoSetFlag(u8 flag) { return flag & mDoSetFlag; }
    bool isASetFlag(u8 flag) { return flag & mASetFlag; }
    bool isRSetFlag(u8 flag) { return flag & mRSetFlag; }
    bool isXSetFlag(u8 flag) { return flag & mXSetFlag; }
    bool isYSetFlag(u8 flag) { return flag & mYSetFlag; }
    const char* getStartStageName() { return mStartStage.getName(); }
    s8 getStartStageRoomNo() { return mStartStage.getRoomNo(); }
    s8 getStartStageLayer() { return mStartStage.getLayer(); }
    u8 isHeapLockFlag() { return mHeapLockFlag; }
    void setHeapLockFlag(u8 status) { mHeapLockFlag = status; }
    void setSubHeapLockFlag(int idx, u8 status) { mSubHeapLockFlag[idx] = status; }
    u8 getSubHeapLockFlag(int idx) { return mSubHeapLockFlag[idx]; }
    void offHeapLockFlag() { mHeapLockFlag = 0; }
    JKRExpHeap* getSubExpHeap2D(int idx) { return mSubExpHeap2D[idx]; }
    void setSubExpHeap2D(int idx, void* heap) { mSubExpHeap2D[idx] = (JKRExpHeap*)heap; }
    void offEnableNextStage() { mNextStage.offEnable(); }
    JKRExpHeap* getExpHeap2D() { return mExpHeap2D; }
    dEvent_manager_c& getEvtManager() { return mEvtManager; }
    dAttention_c& getAttention() { return mAttention; }
    JKRArchive* getMsgDtArchive(int idx) { return mMsgDtArchive[idx]; }
    s16 getStartStagePoint() { return mStartStage.getPoint(); }
    s8 getStartStageDarkArea() { return mStartStage.getDarkArea(); }
    void setStartStageDarkArea(s8 darkArea) { mStartStage.setDarkArea(darkArea); }
    void* getPlayerPtr(int ptrIdx) { return mPlayerPtr[ptrIdx]; }
    void* getPlayer(int idx) { return mPlayer[idx]; }
    JKRArchive* getMain2DArchive() { return mMain2DArchive; }
    JKRArchive* getAnmArchive() { return mAnmArchive; }
    JKRArchive* getCollectResArchive() { return mCollectResArchive; }
    JKRArchive* getItemIconArchive() { return mItemIconArchive; }
    JKRExpHeap* getMsgExpHeap() { return mMsgExpHeap; }
    J2DGrafContext* getCurrentGrafPort() { return mCurrentGrafPort; }
    dVibration_c& getVibration() { return mVibration; }
    void setPlayerStatus(int param_0, int i, u32 flag) { mPlayerStatus[i] |= flag; }
    void clearPlayerStatus(int param_0, int i, u32 flag) { mPlayerStatus[i] &= ~flag; }
    bool checkPlayerStatus(int param_0, int i, u32 flag) { return flag & mPlayerStatus[i]; }
    BOOL checkCameraAttentionStatus(int i, u32 flag) {
        return mCameraInfo[i].mCameraAttentionStatus & flag;
    }
    s8 getPlayerCameraID(int i) { return mPlayerCameraID[i]; }
    dPa_control_c* getParticle() { return mParticle; }
    void set3DStatus(u8 status, u8 direction, u8 flag) {
        m3DStatus = status;
        m3DDirection = direction;
        m3DSetFlag = flag;
    }
    void offPauseFlag() { mPauseFlag = false; }
    camera_class* getCamera(int idx) { return mCameraInfo[idx].mCamera; }
    s32 checkStatus(u16 flags) { return flags & mStatus; }

public:
    /* 0x00000 */ dBgS mDBgS;
    /* 0x01404 */ dCcS mDCcS;
    /* 0x03EC8 */ dStage_startStage_c mStartStage;
    /* 0x03ED6 */ dStage_nextStage_c mNextStage;
    /* 0x03EE8 */ dStage_stageDt_c mStageData;
    /* 0x03F8C */ dStage_roomControl_c mRoomControl;
    /* 0x03F90 */ dEvt_control_c mEvent;
    /* 0x040C0 */ dEvent_manager_c mEvtManager;
    /* 0x04780 */ dAttention_c mAttention;
    /* 0x04C9C */ dVibration_c mVibration;
    /* 0x04D2C */ u8 field_0x4d2c[4];
    /* 0x04D30 */ JKRArchive* mFieldMapArchive2;
    /* 0x04D34 */ JKRArchive* mMsgArchive[11];
    /* 0x04D60 */ JKRArchive* mDemoMsgArchive;
    /* 0x04D64 */ JKRArchive* mMeterButtonArchive;
    /* 0x04D68 */ void* field_0x4d68;
    /* 0x04D6C */ JKRArchive* mFontArchive;
    /* 0x04D70 */ JKRArchive* mRubyArchive;
    /* 0x04D74 */ JKRArchive* mAnmArchive;
    /* 0x04D78 */ void* field_0x4d78[2];
    /* 0x04D80 */ JKRArchive* mCollectResArchive;
    /* 0x04D84 */ JKRArchive* mFmapResArchive;
    /* 0x04D88 */ JKRArchive* mDmapResArchive;
    /* 0x04D8C */ JKRArchive* mOptionResArchive;
    /* 0x04D90 */ void* field_0x4d90[2];
    /* 0x04D98 */ JKRArchive* mItemIconArchive;
    /* 0x04D9C */ JKRArchive* mNameResArchive;
    /* 0x04DA0 */ JKRArchive* mErrorResArchive;
    /* 0x04DA4 */ void* field_0x4da4;
    /* 0x04DA8 */ JKRArchive* mAllMapArchive;
    /* 0x04DAC */ JKRArchive* mMsgCommonArchive;
    /* 0x04DB0 */ JKRArchive* mRingResArchive;
    /* 0x04DB4 */ void* field_0x4db4;
    /* 0x04DB8 */ JKRArchive* mCardIconResArchive;
    /* 0x04DBC */ JKRArchive* mMsgDtArchive[15];
    /* 0x04DF8 */ JKRArchive* mMain2DArchive;
    /* 0x04DFC */ void* field_0x4dfc[2];
    /* 0x04E04 */ dPa_control_c* mParticle;
    /* 0x04E08 */ void* mSimpleModel;
    /* 0x04E0C */ u8 mWindowNum;
    /* 0x04E0D */ u8 mLayerOld;
    /* 0x04E0E */ u16 mStatus;
    /* 0x04E10 */ dDlst_window_c mWindow[1];
    /* 0x04E3C */ dComIfG_camera_info_class mCameraInfo[1];
    /* 0x04E74 */ daAlink_c* mPlayer[1];
    /* 0x04E78 */ s8 mPlayerCameraID[4];
    /* 0x04E7C */ void* mPlayerPtr[2];  // 0: Player, 1: Horse ; type may be wrong
    /* 0x04E84 */ dMsgObject_c* mMsgObjectClass;
    /* 0x04E88 */ float mItemLifeCount;
    /* 0x04E8C */ int mItemRupeeCount;
    /* 0x04E90 */ s16 mItemKeyNumCount;
    /* 0x04E92 */ s16 mItemMaxLifeCount;
    /* 0x04E94 */ s16 mItemMagicCount;
    /* 0x04E96 */ s16 mItemNowMagicCount;
    /* 0x04E98 */ s16 mItemMaxMagicCount;
    /* 0x04E9A */ s16 field_0x4e9a;
    /* 0x04E9C */ int mItemOilCount;
    /* 0x04EA0 */ int mItemNowOil;
    /* 0x04EA4 */ int mItemMaxOilCount;
    /* 0x04EA8 */ int mOxygen;
    /* 0x04EAC */ int mNowOxygen;
    /* 0x04EB0 */ int mMaxOxygen;
    /* 0x04EB4 */ int mOxygenCount;
    /* 0x04EB8 */ int mMaxOxygenCount;
    /* 0x04EBC */ s16 mItemArrowNumCount;
    /* 0x04EBE */ s16 mItemPachinkoNumCount;
    /* 0x04EC0 */ s16 mItemMaxArrowNumCount;
    /* 0x04EC2 */ s16 mItemBombNumCount[3];
    /* 0x04EC8 */ u8 field_0x4ec8[4];
    /* 0x04ECC */ s16 mItemMaxBombNumCount1;
    /* 0x04ECE */ s16 mItemMaxBombNumCount2;
    /* 0x04ED0 */ u8 field_0x4ed0[6];
    /* 0x04ED6 */ s16 mItemMaxBombNumCount3;
    /* 0x04ED8 */ u8 field_0x4ed8[6];
    /* 0x04EDE */ u16 mItemNowLife;
    /* 0x04EE0 */ u8 field_0x4ee0[2];
    /* 0x04EE2 */ u8 mMesgStatus;
    /* 0x04EE3 */ u8 field_0x4ee3;
    /* 0x04EE4 */ u8 mRStatus;
    /* 0x04EE5 */ u8 mAStatus;  // B button
    /* 0x04EE6 */ u8 field_0x4ee6;
    /* 0x04EE7 */ u8 mNunStatus;
    /* 0x04EE8 */ u8 mBottleStatus;
    /* 0x04EE9 */ u8 mRemoConStatus;
    /* 0x04EEA */ u8 field_0x4eea[2];
    /* 0x04EEC */ u8 mDoStatus;  // A button
    /* 0x04EED */ u8 field_0x4eed;
    /* 0x04EEE */ u8 m3DStatus;
    /* 0x04EEF */ u8 field_0x4eef;  // related to NunStatusForce
    /* 0x04EF0 */ u8 field_0x4ef0;  // related to NunStatus
    /* 0x04EF1 */ u8 field_0x4ef1;  // related to RemoConStatusForce
    /* 0x04EF2 */ u8 field_0x4ef2;  // related to RemoConStatus
    /* 0x04EF3 */ u8 field_0x4ef3[2];
    /* 0x04EF5 */ u8 m3DDirection;
    /* 0x04EF6 */ u8 m3DDirectionForce;
    /* 0x04EF7 */ u8 mCStickStatus;
    /* 0x04EF8 */ u8 mCStickDirection;
    /* 0x04EF9 */ u8 mCStickDirectionForce;
    /* 0x04EFA */ u8 mSButtonStatus;
    /* 0x04EFB */ u8 mZStatus;
    /* 0x04EFC */ u8 mRStatusForce;
    /* 0x04EFD */ u8 mAStatusForce;
    /* 0x04EFE */ u8 field_0x4efe;
    /* 0x04EFF */ u8 field_0x4eff;  // related to NunStatusForce
    /* 0x04F00 */ u8 mBottleStatusForce;
    /* 0x04F01 */ u8 field_0x4f01;  // related to RemoConStatusForce
    /* 0x04F02 */ u8 field_0x4f02[2];
    /* 0x04F04 */ u8 mDoStatusForce;
    /* 0x04F05 */ u8 mTouchStatusForce;
    /* 0x04F06 */ u8 m3DStatusForce;
    /* 0x04F07 */ u8 mCStickStatusForce;
    /* 0x04F08 */ u8 mSButtonStatusForce;
    /* 0x04F09 */ u8 mZStatusForce;
    /* 0x04F0A */ u8 mRSetFlag;
    /* 0x04F0B */ u8 mASetFlag;
    /* 0x04F0C */ u8 field_0x4f0c;
    /* 0x04F0D */ u8 mNunSetFlag;
    /* 0x04F0E */ u8 mBottleSetFlag;
    /* 0x04F0F */ u8 mRemoConSetFlag;
    /* 0x04F10 */ u8 field_0x4f10[2];
    /* 0x04F12 */ u8 mDoSetFlag;
    /* 0x04F13 */ u8 m3DSetFlag;
    /* 0x04F14 */ u8 mCStickSetFlag;
    /* 0x04F15 */ u8 mSButtonSetFlag;
    /* 0x04F16 */ u8 mZSetFlag;
    /* 0x04F17 */ u8 mRSetFlagForce;
    /* 0x04F18 */ u8 mASetFlagForce;
    /* 0x04F19 */ u8 field_0x4f19;
    /* 0x04F1A */ u8 field_0x4f1a;  // related to NunStatusForce
    /* 0x04F1B */ u8 mBottleSetFlagForce;
    /* 0x04F1C */ u8 field_0x4f1c;  // related to RemoConStatusForce
    /* 0x04F1D */ u8 field_0x4f1d[2];
    /* 0x04F1F */ u8 mDoSetFlagForce;
    /* 0x04F20 */ u8 m3DSetFlagForce;
    /* 0x04F21 */ u8 mCStickSetFlagForce;
    /* 0x04F22 */ u8 mSButtonSetFlagForce;
    /* 0x04F23 */ u8 mZSetFlagForce;
    /* 0x04F24 */ u8 mXStatus;
    /* 0x04F25 */ u8 mXStatusForce;
    /* 0x04F26 */ u8 mXSetFlag;
    /* 0x04F27 */ u8 mXSetFlagForce;
    /* 0x04F28 */ u8 mYStatus;
    /* 0x04F29 */ u8 mYStatusForce;
    /* 0x04F2A */ u8 mYSetFlag;
    /* 0x04F2B */ u8 mYSetFlagForce;
    /* 0x04F2C */ u8 mNunZStatus;
    /* 0x04F2D */ u8 mNunZSetFlag;
    /* 0x04F2E */ u8 field_0x4fc6;  // related to NunZStatusForce
    /* 0x04F2F */ u8 field_0x4fc7;  // related to NunZStatusForce
    /* 0x04F30 */ u8 mNunCStatus;
    /* 0x04F31 */ u8 mNunCSetFlag;
    /* 0x04F32 */ u8 field_0x4fca;  // related to NunCStatusForce
    /* 0x04F33 */ u8 field_0x4fcb;  // related to NunCStatusForce
    /* 0x04F34 */ u8 mSelectItem[8];
    /* 0x04F3C */ u8 mSelectEquip[6];
    /* 0x04F42 */ u8 mBaseAnimeID;
    /* 0x04F43 */ u8 mFaceAnimeID;
    /* 0x04F44 */ u8 mNowAnimeID;
    /* 0x04F45 */ u8 mItemSlot;
    /* 0x04F46 */ u8 mItemID;
    /* 0x04F47 */ u8 field_0x4f47[2];
    /* 0x04F49 */ u8 mDirection;
    /* 0x04F4A */ u8 field_0x4f4a;
    /* 0x04F4B */ u8 field_0x4f4b;  // related to itemInit
    /* 0x04F4C */ u8 field_0x4f4c;  // related to itemInit
    /* 0x04F4D */ u8 field_0x4f4d;
    /* 0x04F4E */ u8 mMesgCancelButton;
    /* 0x04F4F */ u8 field_0x4f4f[2];
    /* 0x04F51 */ u8 mGameoverStatus;
    /* 0x04F52 */ u8 field_0x4f52[5];
    /* 0x04F57 */ u8 mHeapLockFlag;
    /* 0x04F58 */ u8 mSubHeapLockFlag[2];
    /* 0x04F5A */ u8 mNowVibration;
    /* 0x04F5B */ u8 field_0x4f5b[2];
    /* 0x04F5D */ u8 mWolfAbility;
    /* 0x04F5E */ u8 field_0x4f5e[11];
    /* 0x04F69 */ u8 mNeedLightDropNum;
    /* 0x04F6A */ u8 field_0x4f6a[18];
    /* 0x04F7C */ u8 mMesgBgm;
    /* 0x04F7D */ bool mPauseFlag;
    /* 0x04F7E */ u8 mItemLifeCountType;
    /* 0x04F7F */ u8 mOxygenShowFlag;
    /* 0x04F80 */ u8 mShow2D;
    /* 0x04F81 */ u8 field_0x4f81[3];
    /* 0x04F84 */ JKRExpHeap* mExpHeap2D;
    /* 0x04F88 */ JKRExpHeap* mSubExpHeap2D[2];
    /* 0x04F90 */ JKRExpHeap* mMsgExpHeap;
    /* 0x04F94 */ char field_0x4F94[8];  // related to setWarpItemData
    /* 0x04F9C */ cXyz field_0x4f9c;     // related to setWarpItemData
    /* 0x04FA8 */ s16 field_0x4fa8;
    /* 0x04FAA */ s8 field_0x4faa;  // related to setWarpItemData
    /* 0x04FAB */ u8 field_0x4fab;  // related to setWarpItemData
    /* 0x04FAC */ u8 field_0x4fac;  // related to setWarpItemData
    /* 0x04FAD */ u8 field_0x4fad[3];
    /* 0x04FB0 */ void* mMesgCamInfo;
    /* 0x04FB4 */ int mMesgCamInfoBasicID;
    /* 0x04FB8 */ fopAc_ac_c* mMesgCamInfoActor1;
    /* 0x04FBC */ fopAc_ac_c* mMesgCamInfoActor2;
    /* 0x04FC0 */ fopAc_ac_c* mMesgCamInfoActor3;
    /* 0x04FC4 */ fopAc_ac_c* mMesgCamInfoActor4;
    /* 0x04FC8 */ fopAc_ac_c* mMesgCamInfoActor5;
    /* 0x04FCC */ fopAc_ac_c* mMesgCamInfoActor6;
    /* 0x04FD0 */ fopAc_ac_c* mMesgCamInfoActor7;
    /* 0x04FD4 */ fopAc_ac_c* mMesgCamInfoActor8;
    /* 0x04FD8 */ fopAc_ac_c* mMesgCamInfoActor9;
    /* 0x04FDC */ fopAc_ac_c* mMesgCamInfoActor10;
    /* 0x04FE0 */ u32 mPlayerStatus[2];
    /* 0x04FE8 */ u8 field_0x4fe8[0x10];
    /* 0x04FF8 */ __d_timer_info_c mTimerInfo;
    /* 0x0500C */ dDlst_window_c* mCurrentWindow;
    /* 0x05010 */ void* mCurrentView;
    /* 0x05014 */ void* mCurrentViewport;
    /* 0x05018 */ J2DGrafContext* mCurrentGrafPort;
    /* 0x0501C */ void* mItemTable;
    /* 0x0501D */ u8 field_0x501d[4];
    /* 0x05024 */ char mLastPlayStageName[8];
};

class dComIfG_inf_c {
public:
    dComIfG_inf_c() { this->ct(); }
    ~dComIfG_inf_c() {}
    void ct();

    /* 0x00000 */ dSv_info_c info;
    /* 0x00F38 */ dComIfG_play_c play;
    /* 0x05F64 */ dDlst_list_c drawlist;
    /* 0x1C104 */ u8 field_0x1C104[0x1F4];
    /* 0x1C2F8 */ dRes_control_c mResControl;
    /* 0x1DDF8 */ u8 mFadeBrightness;
    /* 0x1DDF9 */ u8 mWorldDark;
    /* 0x1DDFA */ s8 field_0x1ddfa;
    /* 0x1DDFB */ s8 field_0x1ddfb;
    /* 0x1DDFC */ s8 field_0x1ddfc;
    /* 0x1DE00 */ u32 field_0x1de00;
    /* 0x1DE04 */ u32 field_0x1de04;
    /* 0x1DE08 */ u8 field_0x1de08;
    /* 0x1DE09 */ u8 field_0x1de09;
    /* 0x1DE0A */ u8 field_0x1de0a;
    /* 0x1DE0B */ u8 field_0x1de0b;
    /* 0x1DE0C */ u8 field_0x1de0c;

    static __d_timer_info_c dComIfG_mTimerInfo;
};  // Size: 0x1DE10

STATIC_ASSERT(122384 == sizeof(dComIfG_inf_c));

extern dComIfG_inf_c g_dComIfG_gameInfo;

extern GXColor g_blackColor;
extern GXColor g_clearColor;
extern GXColor g_whiteColor;

void dComIfGp_setItemLifeCount(float, u8);
void dComIfGp_setItemRupeeCount(long);
int dComIfGs_isItemFirstBit(u8);
u16 dComIfGs_getRupee();
void dComIfGp_setSelectItem(int);
u8 dComIfGs_getMixItemIndex(int);
void dComIfGs_setSelectItemIndex(int, u8);
void dComIfGs_setMixItemIndex(int, u8);
u8 dComIfGs_getBottleMax();
u8 dComIfGs_checkGetItem(u8);
void dComIfGs_setSelectEquipClothes(u8);
void dComIfG_get_timelayer(int*);
s32 dComIfGp_offHeapLockFlag(int);
void dComIfGp_createSubExpHeap2D();
void dComIfGp_destroySubExpHeap2D();
int dComIfGp_checkEmptySubHeap2D();
int dComIfGp_searchUseSubHeap2D(int);
void dComIfGs_setLastWarpMarkItemData(const char*, cXyz, s16, s8, u8, u8);
u16 dComIfGs_getMaxLifeGauge();
void dComIfGs_setWarpMarkFlag(u8);
void dComIfGs_setSelectEquipSword(u8);
void dComIfGs_setSelectEquipShield(u8);
void* dComIfG_getStageRes(char const*);
void dComLbG_PhaseHandler(request_of_phase_process_class*, int (**param_1)(void*), void*);
void dComIfGp_addSelectItemNum(int, s16);
BOOL dComIfGs_isOneZoneSwitch(int, int);
u8 dComIfGp_getSelectItem(int);
u8 dComIfGp_TargetWarpPt_get();
void dComIfGp_TargetWarpPt_set(u8);
BOOL dComIfGp_TransportWarp_check();
void dComIfGp_setNextStage(char const*, s16, s8, s8, f32, u32, int, s8, s16, int, int);
cXyz& dComIfGs_getWarpPlayerPos();
const char* dComIfGs_getWarpStageName();
s16 dComIfGs_getWarpPlayerAngleY();
s8 dComIfGs_getWarpRoomNo();
char* dComIfG_getRoomArcName(int);
int dComIfGp_getSelectItemNum(int);
int dComIfGp_getSelectItemMaxNum(int);
void dComIfGp_mapShow();
void dComIfGp_mapHide();
bool dComIfGp_checkMapShow();
s32 dComIfGp_setHeapLockFlag(u8);
s8 dComIfGs_sense_type_change_Get();
u8 dComIfGp_world_dark_get();

inline void dComIfGp_setRStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setRStatus(status, flag);
}

inline void dComIfGp_setDoStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setDoStatus(status, flag);
}

inline void dComIfGp_setAStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setAStatus(status, flag);
}

inline void dComIfGp_setZStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setZStatus(status, flag);
}

inline void dComIfGp_setItemMagicCount(s16 amount) {
    g_dComIfG_gameInfo.play.setItemMagicCount(amount);
}

inline void dComIfGp_setItemMaxMagicCount(s16 max) {
    g_dComIfG_gameInfo.play.setItemMaxMagicCount(max);
}

inline void dComIfGp_setItemArrowNumCount(s16 amount) {
    g_dComIfG_gameInfo.play.setItemArrowNumCount(amount);
}

inline void dComIfGp_setItemPachinkoNumCount(s16 amount) {
    g_dComIfG_gameInfo.play.setItemPachinkoNumCount(amount);
}

inline void dComIfGp_setItemBombNumCount(u8 param_0, s16 amount) {
    g_dComIfG_gameInfo.play.setItemBombNumCount(param_0, amount);
}

inline void dComIfGp_setItemKeyNumCount(s16 amount) {
    g_dComIfG_gameInfo.play.setItemKeyNumCount(amount);
}

inline void dComIfGp_setItemMaxLifeCount(s16 max) {
    g_dComIfG_gameInfo.play.setItemMaxLifeCount(max);
}

inline void dComIfGs_onDungeonItemMap() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onDungeonItemMap();
}

inline void dComIfGs_onDungeonItemCompass() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onDungeonItemCompass();
}

inline void dComIfGs_onDungeonItemWarp() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onDungeonItemWarp();
}

inline void dComIfGs_setItem(int slot, u8 i_no) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setItem(slot, i_no);
}

inline void dComIfGs_setOxygen(int amount) {
    g_dComIfG_gameInfo.play.setOxygen(amount);
}

inline void dComIfGs_setMaxOxygen(int max) {
    g_dComIfG_gameInfo.play.setMaxOxygen(max);
}

inline void dComIfGs_setOil(u16 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setOil(amount);
}

inline void dComIfGs_setMaxOil(u16 max) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxOil(max);
}

inline void dComIfGs_setWalletSize(u8 size) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setWalletSize(size);
}

inline void dComIfGs_setMagic(u8 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMagic(amount);
}

inline void dComIfGs_setMaxMagic(u8 max) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxMagic(max);
}

inline void dComIfGs_setRupee(u16 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setRupee(amount);
}

inline void dComIfGs_setLife(u16 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setLife(amount);
}

inline void dComIfGs_setMaxLife(u8 max) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxLife(max);
}

inline void dComIfGs_onDungeonItemBossKey() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onDungeonItemBossKey();
}

inline void dComIfGs_setCollectSword(u8 sword_id) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_SWORD, sword_id);
}

inline void dComIfGs_setCollectShield(u8 shield_id) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_SHIELD, shield_id);
}

inline void dComIfGs_setCollectClothes(u8 clothes_id) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_CLOTHING, clothes_id);
}

inline void dComIfGs_setRodTypeLevelUp() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setRodTypeLevelUp();
}

inline void dComIfGs_setArrowNum(u8 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setArrowNum(amount);
}

inline void dComIfGs_setArrowMax(u8 max) {
    g_dComIfG_gameInfo.info.getPlayer().getItemMax().setArrowNum(max);
}

inline u8 dComIfGs_getPachinkoMax() {
    return 50;
}

inline void dComIfGs_setEmptyBombBag() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBag();
}

inline void dComIfGs_setEmptyBombBag(u8 type, u8 amount) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBag(type, amount);
}

inline void dComIfGs_setEmptyBombBagItemIn(u8 type, bool unk) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBagItemIn(type, unk);
}

inline void dComIfGs_setEmptyBottle() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottle();
}

inline void dComIfGs_setEmptyBottle(u8 type) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottle(type);
}

inline void dComIfGs_setEmptyBottleItemIn(u8 type) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottleItemIn(type);
}

inline void dComIfGs_setBottleNum(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setBottleNum(param_0, param_1);
}

inline void dComIfGs_onEventBit(u16 id) {
    g_dComIfG_gameInfo.info.getSavedata().getEvent().onEventBit(id);
}

inline void dComIfGs_onLightDropFlag(u8 area_id) {
    g_dComIfG_gameInfo.info.getPlayer().getLightDrop().onLightDropGetFlag(area_id);
}

inline void dComIfGs_onSwitch(int param1, int param2) {
    g_dComIfG_gameInfo.info.onSwitch(param1, param2);
}

inline void dComIfGs_offSwitch(int param1, int param2) {
    g_dComIfG_gameInfo.info.offSwitch(param1, param2);
}

inline BOOL dComIfGs_isSwitch(int param1, int param2) {
    return g_dComIfG_gameInfo.info.isSwitch(param1, param2);
}

inline s32 dComIfGs_isDungeonItemMap() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isDungeonItemMap();
}

inline s32 dComIfGs_isDungeonItemCompass() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isDungeonItemCompass();
}

inline s32 dComIfGs_isDungeonItemBossKey() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isDungeonItemBossKey();
}

inline u8 dComIfGs_getItem(int slot, bool unk) {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().getItem(slot, unk);
}

inline BOOL dComIfGs_isCollectSword(u8 sword_id) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollect(COLLECT_SWORD, sword_id);
}

inline BOOL dComIfGs_isCollectClothing(u8 clothing_id) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollect(COLLECT_CLOTHING,
                                                                      clothing_id);
}

inline u8 dComIfGs_checkBottle(u8 type) {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().checkBottle(type);
}

inline BOOL dComIfGs_isLightDropGetFlag(u8 area_id) {
    return g_dComIfG_gameInfo.info.getPlayer().getLightDrop().isLightDropGetFlag(area_id);
}

inline u8 dComIfGs_getArrowMax() {
    return g_dComIfG_gameInfo.info.getPlayer().getItemMax().getArrowNum();
}

inline u8 dComIfGs_getCollectSmell() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectEquip(3);
}

inline u8 dComIfGs_getPohSpiritNum() {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().getPohNum();
}

inline u8 dComIfGs_getKeyNum() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().getKeyNum();
}

inline void dComIfGs_onItemFirstBit(u8 i_no) {
    g_dComIfG_gameInfo.info.getPlayer().getGetItem().onFirstBit(i_no);
}

inline u16 dComIfGs_getMaxLife() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxLife();
}

inline void dComIfGs_offEventBit(u16 event) {
    g_dComIfG_gameInfo.info.getSavedata().getEvent().offEventBit(event);
}

// inline int dComIfGs_isEventBit__FUs(u16 event) {
//     return g_dComIfG_gameInfo.getSaveFile().getTmp().isEventBit(event);
// }

inline const char* dComIfGs_getLastWarpMarkStageName() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getName();
}

inline cXyz dComIfGs_getLastWarpMarkPlayerPos() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getPos();
}

inline s16 dComIfGs_getLastWarpMarkPlayerAngleY() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getAngleY();
}

inline u8 dComIfGs_getLastWarpMarkRoomNo() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getRoomNo();
}

inline char dComIfGs_getLastWarpAcceptStage() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getWarpAcceptStage();
}

inline u8 dComIfGs_getSelectEquipClothes() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectEquip(COLLECT_CLOTHING);
}

inline u8 dComIfGs_getSelectEquipSword() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectEquip(COLLECT_SWORD);
}

inline u8 dComIfGs_getSelectEquipShield() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectEquip(COLLECT_SHIELD);
}

inline u8 dComIfGs_getLightDropNum(u8 area_id) {
    return g_dComIfG_gameInfo.info.getPlayer().getLightDrop().getLightDropNum(area_id);
}

inline u8 dComIfGs_getSelectItemIndex(int idx) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectItemIndex(idx);
}

inline void dComIfGp_setItem(u8 slot, u8 i_no) {
    g_dComIfG_gameInfo.play.setItem(slot, i_no);
}

inline u32 dComIfGp_getNowVibration() {
    return g_dComIfG_gameInfo.play.getNowVibration();
}

inline const char* dComIfGp_getStartStageName() {
    return g_dComIfG_gameInfo.play.getStartStageName();
}

inline void dComIfGd_reset() {
    g_dComIfG_gameInfo.drawlist.reset();
}

inline u8 dComIfGs_getOptVibration() {
    return g_dComIfG_gameInfo.info.getPlayer().getConfig().getVibration();
}

inline s32 dComIfGp_roomControl_getStayNo() {
    return dStage_roomControl_c::getStayNo();
}

inline void dComIfGp_setStartStage(dStage_startStage_c* pStartStage) {
    g_dComIfG_gameInfo.play.setStartStage(pStartStage);
}

inline s8 dComIfGp_getStartStageRoomNo() {
    return g_dComIfG_gameInfo.play.getStartStageRoomNo();
}

inline s8 dComIfGp_getStartStageLayer() {
    return g_dComIfG_gameInfo.play.getStartStageLayer();
}

inline s8 dComIfGp_getStartStageDarkArea() {
    return g_dComIfG_gameInfo.play.getStartStageDarkArea();
}

inline void dComIfGp_setStartStageDarkArea(s8 darkArea) {
    g_dComIfG_gameInfo.play.setStartStageDarkArea(darkArea);
}

inline roomRead_class* dComIfGp_getStageRoom() {
    return g_dComIfG_gameInfo.play.getStage().getRoom();
}

inline stage_stag_info_class* dComIfGp_getStageStagInfo() {
    return g_dComIfG_gameInfo.play.getStage().getStagInfo();
}

inline BOOL dComIfGs_isTbox(int i_no) {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isTbox(i_no);
}

inline BOOL dComIfGs_isSaveTbox(int i_stageNo, int i_no) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().isTbox(i_no);
}

inline void dComIfGs_onSaveSwitch(int i_stageNo, int i_no) {
    g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().onSwitch(i_no);
}

inline void dComIfGs_offSaveSwitch(int i_stageNo, int i_no) {
    g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().offSwitch(i_no);
}

inline BOOL dComIfGs_isSaveSwitch(int i_stageNo, int i_no) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().isSwitch(i_no);
}

inline BOOL dComIfGs_isSaveSwitch(int i_no) {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isSwitch(i_no);
}

inline void dComIfGs_onStageBossEnemy() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onStageBossEnemy();
}

inline s32 dComIfGs_isDungeonItemWarp() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isDungeonItemWarp();
}

inline u8 dComIfGp_isHeapLockFlag() {
    return g_dComIfG_gameInfo.play.isHeapLockFlag();
}

inline void dComIfGp_setSubHeapLockFlag(int idx, u8 status) {
    g_dComIfG_gameInfo.play.setSubHeapLockFlag(idx, status);
}

inline u8 dComIfGp_getSubHeapLockFlag(int idx) {
    return g_dComIfG_gameInfo.play.getSubHeapLockFlag(idx);
}

inline JKRExpHeap* dComIfGp_getSubExpHeap2D(int idx) {
    return g_dComIfG_gameInfo.play.getSubExpHeap2D(idx);
}

inline void dComIfGp_setSubExpHeap2D(int idx, void* heap) {
    g_dComIfG_gameInfo.play.setSubExpHeap2D(idx, heap);
}

inline void dComIfGp_offEnableNextStage() {
    g_dComIfG_gameInfo.play.offEnableNextStage();
}

inline void dComIfGs_setKeyNum(u8 keyNum) {
    g_dComIfG_gameInfo.info.getMemory().getBit().setKeyNum(keyNum);
}

void dComIfGs_setKeyNum(int i_stageNo, u8 keyNum);

inline int dComIfG_getTimerMode() {
    return g_dComIfG_gameInfo.play.getTimerMode();
}

inline dTimer_c* dComIfG_getTimerPtr() {
    return g_dComIfG_gameInfo.play.getTimerPtr();
}

inline void dComIfGp_roomControl_initZone() {
    g_dComIfG_gameInfo.play.getRoomControl()->initZone();
}

inline int dComIfG_setObjectRes(const char* name, u8 param_1, JKRHeap* heap) {
    return g_dComIfG_gameInfo.mResControl.setObjectRes(name, param_1, heap);
}

inline int dComIfG_syncObjectRes(const char* name) {
    return g_dComIfG_gameInfo.mResControl.syncObjectRes(name);
}

inline JKRExpHeap* dComIfGp_getExpHeap2D() {
    return g_dComIfG_gameInfo.play.getExpHeap2D();
}

inline JKRExpHeap* dComIfGp_getMsgExpHeap() {
    return g_dComIfG_gameInfo.play.getMsgExpHeap();
}

inline s16 dComIfGs_getOil() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getOil();
}

inline s16 dComIfGs_getMaxOil() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxOil();
}

inline s64 dComIfGs_getSaveStartTime() {
    return g_dComIfG_gameInfo.info.getStartTime();
}

inline s64 dComIfGs_getSaveTotalTime() {
    return g_dComIfG_gameInfo.info.getSaveTotalTime();
}

inline dSv_save_c& dComIfGs_getSaveData() {
    return g_dComIfG_gameInfo.info.getSavedata();
}

inline void dComIfGs_setLineUpItem() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setLineUpItem();
}

inline void dComIfGp_setNowVibration(u8 status) {
    g_dComIfG_gameInfo.play.setNowVibration(status);
}

inline s32 dComIfGs_isGetMagicUseFlag() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().isMagicFlag(0);
}

inline void dComIfGs_offTmpBit(u16 flag) {
    g_dComIfG_gameInfo.info.getTmp().offEventBit(flag);
}

inline dAttention_c& dComIfGp_getAttention() {
    return g_dComIfG_gameInfo.play.getAttention();
}

inline BOOL dComIfGs_isDarkClearLV(int param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().isDarkClearLV(param_0);
}

inline BOOL dComIfGs_isTmpBit(u16 flag) {
    return g_dComIfG_gameInfo.info.getTmp().isEventBit(flag);
}

inline BOOL dComIfGs_isTransformLV(int param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().isTransformLV(param_0);
}

inline void dComIfGs_onStageLife() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onStageLife();
}

inline u8 dComIfGs_getBombNum(u8 param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getBombNum(param_0);
}

inline u8 dComIfGs_getPachinkoNum() {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getPachinkoNum();
}

inline u8 dComIfGs_getBottleNum(u8 param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getBottleNum(param_0);
}

inline u8 dComIfGs_getBombMax(u8 param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemMax().getBombNum(param_0);
}

inline void dComIfGs_setBombNum(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setBombNum(param_0, param_1);
}

inline void dComIfGs_setPachinkoNum(u8 param_0) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setPachinkoNum(param_0);
}

inline void dComIfGs_addBottleNum(u8 param_0, s16 param_1) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().addBottleNum(param_0, param_1);
}

inline void dComIfGs_resetLastWarpAcceptStage() {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().resetWarpAcceptStage();
}

inline void dComIfGp_setSelectEquipClothes(u8 i_clothId) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_CLOTHING, i_clothId);
}

inline void dComIfGp_setSelectEquipSword(u8 i_swordId) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_SWORD, i_swordId);
}

inline void dComIfGp_setSelectEquipShield(u8 i_shieldId) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_SHIELD, i_shieldId);
}

inline void dComIfGs_offItemFirstBit(u8 param_0) {
    g_dComIfG_gameInfo.info.getPlayer().getGetItem().offFirstBit(param_0);
}

inline BOOL dComIfGs_isLetterGetFlag(int param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getLetterInfo().isLetterGetFlag(param_0);
}

inline JKRArchive* dComIfGp_getMsgDtArchive(int idx) {
    return g_dComIfG_gameInfo.play.getMsgDtArchive(idx);
}

inline u8 dComIfGs_getArrowNum() {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getArrowNum();
}

inline s16 dComIfGp_getStartStagePoint() {
    return g_dComIfG_gameInfo.play.getStartStagePoint();
}

inline void dComIfGs_initZone() {
    g_dComIfG_gameInfo.info.initZone();
}

inline int dComIfG_deleteObjectResMain(const char* res) {
    return g_dComIfG_gameInfo.mResControl.deleteObjectRes(res);
}

inline void dComIfGp_roomControl_init() {
    g_dComIfG_gameInfo.play.getRoomControl()->init();
}

inline void* dComIfG_getStageRes(const char* arcName, const char* resName) {
    return g_dComIfG_gameInfo.mResControl.getStageRes(arcName, resName);
}

inline void* dComIfG_getObjectRes(const char* arcName, const char* resName) {
    return g_dComIfG_gameInfo.mResControl.getObjectRes(arcName, resName);
}

inline void* dComIfG_getObjectRes(const char* arcName, int param_1) {
    return g_dComIfG_gameInfo.mResControl.getObjectRes(arcName, param_1);
}

inline daPy_py_c* dComIfGp_getLinkPlayer() {
    return (daPy_py_c*)g_dComIfG_gameInfo.play.getPlayerPtr(LINK_PTR);
}

inline daPy_py_c* daPy_getLinkPlayerActorClass() {
    return dComIfGp_getLinkPlayer();
}

inline daAlink_c* daAlink_getAlinkActorClass() {
    return (daAlink_c*)g_dComIfG_gameInfo.play.getPlayerPtr(LINK_PTR);
}

inline JKRArchive* dComIfGp_getMain2DArchive() {
    return g_dComIfG_gameInfo.play.getMain2DArchive();
}

inline JKRArchive* dComIfGp_getAnmArchive() {
    return g_dComIfG_gameInfo.play.getAnmArchive();
}

inline JKRArchive* dComIfGp_getCollectResArchive() {
    return g_dComIfG_gameInfo.play.getCollectResArchive();
}

inline JKRArchive* dComIfGp_getItemIconArchive() {
    return g_dComIfG_gameInfo.play.getItemIconArchive();
}

inline J2DGrafContext* dComIfGp_getCurrentGrafPort() {
    return g_dComIfG_gameInfo.play.getCurrentGrafPort();
}

inline dBgS& dComIfG_Bgsp() {
    return g_dComIfG_gameInfo.play.mDBgS;
}

inline s16 dComIfGs_getStartPoint() {
    return g_dComIfG_gameInfo.info.getRestart().getStartPoint();
}

inline dVibration_c& dComIfGp_getVibration() {
    return g_dComIfG_gameInfo.play.getVibration();
}

inline void dComIfGp_setPlayerStatus0(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.setPlayerStatus(param_0, 0, flag);
}

inline void dComIfGp_setPlayerStatus1(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.setPlayerStatus(param_0, 1, flag);
}

inline dEvent_manager_c* dComIfGp_getPEvtManager() {
    return &g_dComIfG_gameInfo.play.getEvtManager();
}

inline void dComIfGp_evmng_cutEnd(int param_0) {
    dComIfGp_getPEvtManager()->cutEnd(param_0);
}

inline BOOL dComIfGp_checkCameraAttentionStatus(int i, u32 flag) {
    return g_dComIfG_gameInfo.play.checkCameraAttentionStatus(i, flag);
}

inline void dComIfGp_set3DStatus(u8 status, u8 direction, u8 flag) {
    g_dComIfG_gameInfo.play.set3DStatus(status, direction, flag);
}

inline s32 dComIfGs_getLastSceneMode() {
    return g_dComIfG_gameInfo.info.getRestart().getLastMode();
}

inline u32 dComIfGp_particle_set(u32 param_0, u16 param_1, const cXyz* param_2,
                                 const dKy_tevstr_c* param_3, const csXyz* param_4,
                                 const cXyz* param_5, u8 param_6, dPa_levelEcallBack* param_7,
                                 s8 param_8, const GXColor* param_9, const GXColor* param_10,
                                 const cXyz* param_11) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(
        param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9,
        param_10, param_11, 1.0f);
}

inline u32 dComIfGp_particle_set(u16 param_1, const cXyz* param_2, const dKy_tevstr_c* param_3,
                                 const csXyz* param_4, const cXyz* param_5, u8 param_6,
                                 dPa_levelEcallBack* param_7, s8 param_8, const GXColor* param_9,
                                 const GXColor* param_10, const cXyz* param_11) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(param_1, param_2, param_3, param_4,
                                                            param_5, param_6, param_7, param_8,
                                                            param_9, param_10, param_11, 1.0f);
}

inline u32 dComIfGp_particle_set(u16 param_0, const cXyz* param_1, const csXyz* param_2,
                                 const cXyz* param_3) {
    return dComIfGp_particle_set(param_0, param_1, NULL, param_2, param_3, 0xFF, NULL, -1, NULL,
                                 NULL, NULL);
}

inline void dComIfGp_particle_levelEmitterOnEventMove(u32 param_0) {
    g_dComIfG_gameInfo.play.getParticle()->forceOnEventMove(param_0);
}

inline dPa_control_c::level_c::emitter_c* dComIfGp_particle_getEmitter(u32 param_0) {
    return g_dComIfG_gameInfo.play.getParticle()->getEmitter(param_0);
}

inline u32 dComIfGp_particle_setPolyColor(u32 param_0, u16 param_1, cBgS_PolyInfo& param_2,
                                          const cXyz* param_3, const dKy_tevstr_c* param_4,
                                          const csXyz* param_5, const cXyz* param_6, int param_7,
                                          dPa_levelEcallBack* param_8, s8 param_9,
                                          const cXyz* param_10) {
    return g_dComIfG_gameInfo.play.getParticle()->setPoly(param_0, param_1, param_2, param_3,
                                                          param_4, param_5, param_6, param_7,
                                                          param_8, param_9, param_10);
}

inline dRes_info_c* dComIfG_getObjectResInfo(const char* arc_name) {
    return g_dComIfG_gameInfo.mResControl.getObjectResInfo(arc_name);
}

inline void dComIfGp_setXStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setXStatus(status, flag);
}

inline void dComIfGp_setYStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setYStatus(status, flag);
}

inline BOOL dComIfGp_event_compulsory(void* param_0, const char* param_1, u16 param_2) {
    return g_dComIfG_gameInfo.play.getEvent().compulsory(param_0, param_1, param_2);
}

inline void dComIfGs_setTurnRestart(const cXyz& param_0, s16 param_1, s8 param_2, u32 param_3) {
    g_dComIfG_gameInfo.info.getTurnRestart().set(param_0, param_1, param_2, param_3);
}

inline void dComIfGs_setRestartRoom(const cXyz& param_0, s16 param_1, s8 param_2) {
    g_dComIfG_gameInfo.info.getRestart().setRoom(param_0, param_1, param_2);
}

inline s8 dComIfGs_getRestartRoomNo() {
    return g_dComIfG_gameInfo.info.getRestart().getRoomNo();
}

inline void dComIfGs_setRestartRoomParam(u32 param) {
    g_dComIfG_gameInfo.info.getRestart().setRoomParam(param);
}

inline void dComIfGp_clearPlayerStatus0(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.clearPlayerStatus(param_0, 0, flag);
}

inline int* dComIfGp_evmng_getMyIntegerP(int index, char* name) {
    return (int*)dComIfGp_getPEvtManager()->getMySubstanceP(index, name, dEvDtData_c::TYPE_INT);
}

inline char* dComIfGp_evmng_getMyStringP(int index, char* name) {
    return (char*)dComIfGp_getPEvtManager()->getMySubstanceP(index, name, dEvDtData_c::TYPE_STRING);
}

inline f32* dComIfGp_evmng_getMyFloatP(int index, char* name) {
    return (f32*)dComIfGp_getPEvtManager()->getMySubstanceP(index, name, dEvDtData_c::TYPE_FLOAT);
}

inline stage_scls_info_dummy_class* dComIfGp_getStageSclsInfo() {
    return g_dComIfG_gameInfo.play.getStage().getSclsInfo();
}

inline dStage_roomStatus_c* dComIfGp_roomControl_getStatusRoomDt(int room_no) {
    return g_dComIfG_gameInfo.play.getRoomControl()->getStatusRoomDt(room_no);
}

inline void dComIfGp_setItemNowLife(u16 life) {
    g_dComIfG_gameInfo.play.setItemNowLife(life);
}

inline void dComIfGp_setItemNowMagic(s16 magic) {
    g_dComIfG_gameInfo.play.setItemNowMagic(magic);
}

inline u8 dComIfGs_getMagic() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMagic();
}

inline u8 dComIfGs_getMaxMagic() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxMagic();
}

inline void dComIfGp_setOxygen(int oxygen) {
    g_dComIfG_gameInfo.play.setOxygen(oxygen);
}

inline void dComIfGp_setNowOxygen(s32 oxygen) {
    g_dComIfG_gameInfo.play.setNowOxygen(oxygen);
}

inline int dComIfGp_getMaxOxygen() {
    return g_dComIfG_gameInfo.play.getMaxOxygen();
}

inline int dComIfGp_getOxygen() {
    return g_dComIfG_gameInfo.play.getOxygen();
}

inline u8 dComIfGp_getNeedLightDropNum() {
    return g_dComIfG_gameInfo.play.getNeedLightDropNum();
}

inline void dComIfGp_setItemNowOil(s32 oil) {
    g_dComIfG_gameInfo.play.setItemNowOil(oil);
}

inline u8 dComIfGp_getAStatus() {
    return g_dComIfG_gameInfo.play.getAStatus();
}

inline u8 dComIfGp_getXStatus() {
    return g_dComIfG_gameInfo.play.getXStatus();
}

inline u8 dComIfGp_getYStatus() {
    return g_dComIfG_gameInfo.play.getYStatus();
}

inline u8 dComIfGp_getZStatus() {
    return g_dComIfG_gameInfo.play.getZStatus();
}

inline u8 dComIfGp_get3DStatus() {
    return g_dComIfG_gameInfo.play.get3DStatus();
}

inline u8 dComIfGp_getCStickStatus() {
    return g_dComIfG_gameInfo.play.getCStickStatus();
}

inline u8 dComIfGp_getSButtonStatus() {
    return g_dComIfG_gameInfo.play.getSButtonStatus();
}

inline u8 dComIfGp_getNunStatus() {
    return g_dComIfG_gameInfo.play.getNunStatus();
}

inline u8 dComIfGp_getNunZStatus() {
    return g_dComIfG_gameInfo.play.getNunZStatus();
}

inline u8 dComIfGp_getNunCStatus() {
    return g_dComIfG_gameInfo.play.getNunCStatus();
}

inline u8 dComIfGp_getBottleStatus() {
    return g_dComIfG_gameInfo.play.getBottleStatus();
}

inline u8 dComIfGp_getRemoConStatus() {
    return g_dComIfG_gameInfo.play.getRemoConStatus();
}

inline bool dComIfGp_isDoSetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isDoSetFlag(flag);
}

inline bool dComIfGp_isASetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isASetFlag(flag);
}

inline bool dComIfGp_isRSetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isRSetFlag(flag);
}

inline bool dComIfGp_isXSetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isXSetFlag(flag);
}

inline bool dComIfGp_isYSetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isYSetFlag(flag);
}

inline bool dComIfGs_isCollectMirror(u8 param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollectMirror(param_0);
}

inline bool dComIfGs_isCollectCrystal(u8 param_0) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollectCrystal(param_0);
}

inline void dComIfGs_onCollectMirror(u8 param_0) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().onCollectMirror(param_0);
}

inline void dComIfGs_onCollectCrystal(u8 param_0) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().onCollectCrystal(param_0);
}

inline bool dComIfGp_isPauseFlag() {
    return g_dComIfG_gameInfo.play.isPauseFlag();
}

inline void dComIfGp_setNunStatus(u8 param_0, u8 param_1, u8 param_2) {
    g_dComIfG_gameInfo.play.setNunStatus(param_0, param_1, param_2);
}

inline void dComIfGp_setRemoConStatus(u8 param_0, u8 param_1, u8 param_2) {
    g_dComIfG_gameInfo.play.setRemoConStatus(param_0, param_1, param_2);
}

inline void dComIfGp_setNunZStatus(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.play.setNunZStatus(param_0, param_1);
}

inline void dComIfGp_setNunCStatus(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.play.setNunCStatus(param_0, param_1);
}

inline void dComIfGp_setCStickStatus(u8 param_0, u8 param_1, u8 param_2) {
    g_dComIfG_gameInfo.play.setCStickStatus(param_0, param_1, param_2);
}

inline void* dComIfG_getObjectIDRes(const char* arc_name, u16 id) {
    return g_dComIfG_gameInfo.mResControl.getObjectIDRes(arc_name, id);
}

inline void* dComIfGp_getPlayer(int idx) {
    return g_dComIfG_gameInfo.play.getPlayer(idx);
}

inline void dComIfGd_set2DOpa(dDlst_base_c* dlst) {
    g_dComIfG_gameInfo.drawlist.set2DOpa(dlst);
}

inline void dComIfGd_set2DOpaTop(dDlst_base_c* dlst) {
    g_dComIfG_gameInfo.drawlist.set2DOpaTop(dlst);
}

inline dMsgObject_c* dComIfGp_getMsgObjectClass() {
    return g_dComIfG_gameInfo.play.getMsgObjectClass();
}

inline void dComIfGp_offPauseFlag() {
    g_dComIfG_gameInfo.play.offPauseFlag();
}

inline view_class* dComIfGd_getView() {
    return g_dComIfG_gameInfo.drawlist.getView();
}

inline J3DDrawBuffer* dComIfGd_getListFilter() {
    return g_dComIfG_gameInfo.drawlist.getOpaListFilter();
}

inline J3DDrawBuffer* dComIfGd_getOpaListIndScreen() {
    return g_dComIfG_gameInfo.drawlist.getOpaListP0();
}

inline void dComIfGd_setListSky() {
    g_dComIfG_gameInfo.drawlist.setOpaListSky();
    g_dComIfG_gameInfo.drawlist.setXluListSky();
}

inline void dComIfGd_setList() {
    g_dComIfG_gameInfo.drawlist.setOpaList();
    g_dComIfG_gameInfo.drawlist.setXluList();
}

inline void dComIfGd_setXluList2DScreen() {
    g_dComIfG_gameInfo.drawlist.setXluList2DScreen();
}

inline void dComIfGd_setXluListBG() {
    g_dComIfG_gameInfo.drawlist.setXluListBG();
}

inline camera_class* dComIfGp_getCamera(int idx) {
    return g_dComIfG_gameInfo.play.getCamera(idx);
}

inline s32 dComIfGp_checkStatus(u16 flags) {
    return g_dComIfG_gameInfo.play.checkStatus(flags);
}

inline s32 dComIfGp_roomControl_getTimePass() {
    return g_dComIfG_gameInfo.play.getRoomControl()->GetTimePass();
}

inline u16 dComIfGs_getDate() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().getDate();
}

inline void dComIfGs_setDate(u16 date) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().setDate(date);
}

inline f32 dComIfGs_getTime() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().getTime();
}

inline void dComIfGs_setTime(f32 time) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().setTime(time);
}

inline u8 dComIfG_getBrightness() {
    return g_dComIfG_gameInfo.mFadeBrightness;
}

inline void dComIfGd_drawListItem3d() {
    g_dComIfG_gameInfo.drawlist.drawOpaListItem3d();
    g_dComIfG_gameInfo.drawlist.drawXluListItem3d();
}

inline void dComIfGd_init() {
    g_dComIfG_gameInfo.drawlist.init();
}

#endif /* D_COM_D_COM_INF_GAME_H */
