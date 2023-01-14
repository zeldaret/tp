#ifndef D_COM_D_COM_INF_GAME_H
#define D_COM_D_COM_INF_GAME_H

#include "d/a/d_a_alink.h"
#include "d/bg/d_bg_s.h"
#include "d/cc/d_cc_s.h"
#include "d/d_attention.h"
#include "d/d_drawlist.h"
#include "d/d_resorce.h"
#include "d/d_simple_model.h"
#include "d/d_stage.h"
#include "d/d_vibration.h"
#include "d/event/d_event.h"
#include "d/event/d_event_manager.h"
#include "d/particle/d_particle.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"
#include "f_op/f_op_scene_mng.h"

class dTimer_c;
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
    phaseParam_c(const char* name, JKRHeap* heap) {
        mResName = name;
        mpHeap = heap;
    }

    /* 0x0 */ const char* mResName;
    /* 0x4 */ JKRHeap* mpHeap;
};

class dComIfG_camera_info_class {
public:
    dComIfG_camera_info_class() {}
    ~dComIfG_camera_info_class() {}

    /* 0x00 */ camera_class* mCamera;
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5;
    /* 0x06 */ s8 field_0x6;
    /* 0x07 */ u8 field_0x7;
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

class dComIfG_resLoader_c {
public:
    /* 8002F314 */ dComIfG_resLoader_c();
    /* 8002F328 */ ~dComIfG_resLoader_c();
    /* 8002F3B4 */ int load(char const**, JKRHeap*);

private:
    /* 0x0 */ const char** field_0x0;
    /* 0x4 */ request_of_phase_process_class field_0x4;
    /* 0xC */ u8 field_0xc;
};

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
    void setItemBombNumCount(u8 i_item, s16 count);
    s16 getItemBombNumCount(u8 i_item);
    void clearItemBombNumCount(u8 i_item);
    void setNowVibration(u8 vib_status);
    u32 getNowVibration();
    void setStartStage(dStage_startStage_c* p_startStage);
    static int getLayerNo_common_common(char const* stageName, int roomId, int layer);
    static int getLayerNo_common(char const* stageName, int roomId, int layer);
    static int getLayerNo(int);
    void createParticle();
    dSmplMdl_draw_c* createSimpleModel();
    void deleteSimpleModel();
    void drawSimpleModel();
    int addSimpleModel(J3DModelData* i_modelData, int roomNo, u8 drawBG);
    int removeSimpleModel(J3DModelData* i_modelData, int roomNo);
    void entrySimpleModel(J3DModel* i_model, int roomNo);
    void setTimerNowTimeMs(int time);
    int getTimerNowTimeMs();
    void setTimerLimitTimeMs(int time);
    int getTimerLimitTimeMs();
    void setTimerMode(int mode);
    int getTimerMode();
    void setTimerType(u8 type);
    u8 getTimerType();
    void setTimerPtr(dTimer_c* ptr);
    dTimer_c* getTimerPtr();
    void setWarpItemData(const char* stage, cXyz pos, s16 angle, s8 roomNo, u8, u8);
    ~dComIfG_play_c() {}

    dMsgObject_c* getMsgObjectClass() { return mMsgObjectClass; }
    dStage_roomControl_c* getRoomControl() { return &mRoomControl; }
    dStage_stageDt_c& getStage() { return mStageData; }
    dEvt_control_c& getEvent() { return mEvent; }
    daHorse_c* getHorseActor() { return (daHorse_c*)mPlayerPtr[1]; }
    J2DGrafContext* getCurrentGrafPort() { return mCurrentGrafPort; }
    dVibration_c& getVibration() { return mVibration; }
    camera_class* getCamera(int idx) { return mCameraInfo[idx].mCamera; }
    void* getPlayerPtr(int ptrIdx) { return mPlayerPtr[ptrIdx]; }
    fopAc_ac_c* getPlayer(int idx) { return (fopAc_ac_c*)mPlayer[idx]; }
    dPa_control_c* getParticle() { return mParticle; }
    dEvent_manager_c& getEvtManager() { return mEvtManager; }
    dAttention_c& getAttention() { return mAttention; }
    dStage_startStage_c* getStartStage() { return &mStartStage; }

    void setSelectItem(int idx, u8 i_itemNo) { mSelectItem[idx] = i_itemNo; }
    u8 getSelectItem(int idx) { return mSelectItem[idx]; }
    void setSelectEquip(int idx, u8 item_id) { mSelectEquip[idx] = item_id; }
    void setItem(u8 slot, u8 i_no) {
        mItemSlot = slot;
        mItemID = i_no;
    }

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
    u8 getSButtonStatusForce() { return mSButtonStatusForce; }
    u8 getSButtonSetFlagForce() { return mSButtonSetFlagForce; }
    u8 getCStickStatusForce() { return mCStickStatusForce; }
    u8 getCStickSetFlagForce() { return mCStickSetFlagForce; }
    u8 getCStickDirectionForce() { return mCStickDirectionForce; }
    u8 getFaceAnimeID() { return mFaceAnimeID; }
    u8 getBaseAnimeID() { return mBaseAnimeID; }
    bool isCStickSetFlag(u8 flag) { return mCStickSetFlag & flag; }
    bool isDoSetFlag(u8 flag) { return flag & mDoSetFlag; }
    bool isASetFlag(u8 flag) { return flag & mASetFlag; }
    bool isRSetFlag(u8 flag) { return flag & mRSetFlag; }
    bool isXSetFlag(u8 flag) { return flag & mXSetFlag; }
    bool isYSetFlag(u8 flag) { return flag & mYSetFlag; }

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

    void setCStickStatusForce(u8 status, u8 param_1, u8 flag) {
        mCStickStatusForce = status;
        mCStickDirectionForce = param_1;
        mCStickSetFlagForce = flag;
    }

    void setSButtonStatus(u8 status, u8 flag) {
        mSButtonStatus = status;
        mSButtonSetFlag = flag;
    }

    void setSButtonStatusForce(u8 status, u8 flag) {
        mSButtonStatusForce = status;
        mSButtonSetFlagForce = flag;
    }

    void set3DStatus(u8 status, u8 direction, u8 flag) {
        m3DStatus = status;
        m3DDirection = direction;
        m3DSetFlag = flag;
    }

    void setDoStatusForce(u8 status, u8 flag) {
        mDoStatusForce = status;
        mDoSetFlagForce = flag;
    }

    void setAStatusForce(u8 status, u8 flag) {
        mAStatusForce = status;
        mASetFlagForce = flag;
    }

    void setItemRupeeCount(s32 rupees) { mItemRupeeCount += rupees; }
    void setItemMagicCount(s16 magic) { mItemMagicCount += magic; }
    void setItemMaxMagicCount(s16 max) { mItemMaxMagicCount += max; }
    void setItemArrowNumCount(s16 arrows) { mItemArrowNumCount += arrows; }
    void setItemPachinkoNumCount(s16 seeds) { mItemPachinkoNumCount += seeds; }
    void setItemKeyNumCount(s16 keys) { mItemKeyNumCount += keys; }
    void setItemMaxLifeCount(s16 max) { mItemMaxLifeCount += max; }
    void setOxygen(int oxygen) { mOxygen = oxygen; }
    void setNowOxygen(s32 oxygen) { mNowOxygen = oxygen; }
    void setOxygenCount(s32 oxygen) { mOxygenCount += oxygen; }
    int getOxygen() { return mOxygen; }
    void setMaxOxygen(int max) { mMaxOxygen = max; }
    int getMaxOxygen() { return mMaxOxygen; }
    int getNowOxygen() { return mNowOxygen; }
    void setItemNowLife(u16 life) { mItemNowLife = life; }
    void setItemNowMagic(s16 magic) { mItemNowMagicCount = magic; }
    void setItemNowOil(s32 oil) { mItemNowOil = oil; }
    void setItemOilCount(s32 oil) { mItemOilCount += oil; }
    s16 getItemMaxLifeCount() { return mItemMaxLifeCount; }
    f32 getItemLifeCount() { return mItemLifeCount; }
    s16 getItemMaxArrowNumCount() { return mItemMaxArrowNumCount; }
    void clearNowAnimeID() { mNowAnimeID = -1; }
    void clearMesgCamInfoID() { mMesgCamInfo = (void*)-1; }
    void clearItemMaxLifeCount() { mItemMaxLifeCount = 0; }
    void clearItemLifeCount() {
        mItemLifeCount = 0.0f;
        mItemLifeCountType = 0;
    }

    void setItemLifeCount(f32 hearts, u8 type) {
        mItemLifeCount += hearts;
        mItemLifeCountType = type;
    }

    u8& getItemLifeCountType() { return mItemLifeCountType; }
    s16 getItemPachinkoNumCount() { return mItemPachinkoNumCount; }
    void clearItemPachinkoNumCount() { mItemPachinkoNumCount = 0; }
    u8 getNeedLightDropNum() { return mNeedLightDropNum; }

    const char* getStartStageName() { return mStartStage.getName(); }
    s8 getStartStageRoomNo() { return mStartStage.getRoomNo(); }
    s8 getStartStageLayer() { return mStartStage.getLayer(); }
    s16 getStartStagePoint() { return mStartStage.getPoint(); }
    s8 getStartStageDarkArea() { return mStartStage.getDarkArea(); }
    void setStartStageDarkArea(s8 darkArea) { mStartStage.setDarkArea(darkArea); }
    void setStartStageLayer(s8 layer) { mStartStage.setLayer(layer); }

    const char* getNextStageName() { return mNextStage.getName(); }
    dStage_startStage_c* getNextStartStage() { return &mNextStage; }
    s8 getNextStageRoomNo() { return mNextStage.getRoomNo(); }
    s8 getNextStageLayer() { return mNextStage.getLayer(); }
    s16 getNextStagePoint() { return mNextStage.getPoint(); }
    s8 getNextStageWipe() { return mNextStage.getWipe(); }
    bool isEnableNextStage() { return mNextStage.isEnable(); }
    void offEnableNextStage() { mNextStage.offEnable(); }
    void setNextStage(const char* stage, s8 roomNo, s16 point, s8 layer, s8 wipe, u8 wipe_speed) {
        mNextStage.set(stage, roomNo, point, layer, wipe, wipe_speed);
    }

    u8 isHeapLockFlag() { return mHeapLockFlag; }
    void setHeapLockFlag(u8 status) { mHeapLockFlag = status; }
    void setSubHeapLockFlag(int idx, u8 status) { mSubHeapLockFlag[idx] = status; }
    u8 getSubHeapLockFlag(int idx) { return mSubHeapLockFlag[idx]; }
    void offHeapLockFlag() { mHeapLockFlag = 0; }

    JKRExpHeap* getExpHeap2D() { return mExpHeap2D; }
    JKRExpHeap* getMsgExpHeap() { return mMsgExpHeap; }
    JKRExpHeap* getSubExpHeap2D(int idx) { return mSubExpHeap2D[idx]; }
    void setSubExpHeap2D(int idx, void* heap) { mSubExpHeap2D[idx] = (JKRExpHeap*)heap; }
    void setExpHeap2D(void* heap) { mExpHeap2D = (JKRExpHeap*)heap; }
    void setMsgExpHeap(void* heap) { mMsgExpHeap = (JKRExpHeap*)heap; }

    JKRArchive* getMsgDtArchive(int idx) { return mMsgDtArchive[idx]; }
    JKRArchive* getMsgArchive(int idx) { return mMsgArchive[idx]; }
    JKRArchive* getMain2DArchive() { return mMain2DArchive; }
    JKRArchive* getAnmArchive() { return mAnmArchive; }
    JKRArchive* getCollectResArchive() { return mCollectResArchive; }
    JKRArchive* getItemIconArchive() { return mItemIconArchive; }
    JKRArchive* getNameResArchive() { return mNameResArchive; }
    JKRAramArchive* getFieldMapArchive2() { return (JKRAramArchive*)mFieldMapArchive2; }

    void setFieldMapArchive2(JKRArchive* arc) { mFieldMapArchive2 = arc; }
    void setAnmArchive(JKRArchive* arc) { mAnmArchive = arc; }
    void setFmapResArchive(JKRArchive* arc) { mFmapResArchive = arc; }
    void setDmapResArchive(JKRArchive* arc) { mDmapResArchive = arc; }
    void setCollectResArchive(JKRArchive* arc) { mCollectResArchive = arc; }
    void setItemIconArchive(JKRArchive* arc) { mItemIconArchive = arc; }
    void setAllMapArchive(JKRArchive* arc) { mAllMapArchive = arc; }
    void setRingResArchive(JKRArchive* arc) { mRingResArchive = arc; }
    void setNameResArchive(JKRArchive* arc) { mNameResArchive = arc; }
    void setDemoMsgArchive(JKRArchive* arc) { mDemoMsgArchive = arc; }
    void setMeterButtonArchive(JKRArchive* arc) { mMeterButtonArchive = arc; }
    void setErrorResArchive(JKRArchive* arc) { mErrorResArchive = arc; }
    void setCardIconResArchive(JKRArchive* arc) { mCardIconResArchive = arc; }
    void setMsgDtArchive(int i, JKRArchive* arc) { mMsgDtArchive[i] = arc; }
    void setMsgCommonArchive(JKRArchive* arc) { mMsgCommonArchive = arc; }
    void setMsgArchive(int i, JKRArchive* arc) { mMsgArchive[i] = arc; }
    void setFontArchive(JKRArchive* arc) { mFontArchive = arc; }
    void setRubyArchive(JKRArchive* arc) { mRubyArchive = arc; }
    void setMain2DArchive(JKRArchive* arc) { mMain2DArchive = arc; }
    void setItemTable(void* data) { mItemTable = data; }
    void* getItemTable() { return mItemTable; }

    void setPlayerPtr(int i, fopAc_ac_c* ptr) { mPlayerPtr[i] = ptr; }
    void setPlayer(int i, fopAc_ac_c* player) { mPlayer[i] = (daAlink_c*)player; }
    void setPlayerInfo(int i, fopAc_ac_c* ptr, int camIdx) {
        mPlayer[i] = (daAlink_c*)ptr;
        mPlayerCameraID[camIdx] = 0;
    }
    void setPlayerStatus(int param_0, int i, u32 flag) { mPlayerStatus[i] |= flag; }
    void clearPlayerStatus(int param_0, int i, u32 flag) { mPlayerStatus[i] &= ~flag; }
    bool checkPlayerStatus(int param_0, int i, u32 flag) { return flag & mPlayerStatus[i]; }

    s8 getPlayerCameraID(int i) { return mPlayerCameraID[i]; }
    void setCameraParamFileName(int i, char* name) { mCameraInfo[i].mCameraParamFileName = name; }
    void setCamera(int i, camera_class* cam) { mCameraInfo[i].mCamera = cam; }
    const char* getCameraParamFileName(int i) { return mCameraInfo[i].mCameraParamFileName; }
    BOOL checkCameraAttentionStatus(int i, u32 flag) {
        return mCameraInfo[i].mCameraAttentionStatus & flag;
    }
    void setCameraAttentionStatus(int i, u32 flag) { mCameraInfo[i].mCameraAttentionStatus = flag; }
    void onCameraAttentionStatus(int i, u32 flag) { mCameraInfo[i].mCameraAttentionStatus |= flag; }
    void offCameraAttentionStatus(int i, u32 flag) {
        mCameraInfo[i].mCameraAttentionStatus &= ~flag;
    }
    void setCameraInfo(int camIdx, camera_class* p_cam, int param_2, int param_3, int param_4) {
        mCameraInfo[camIdx].mCamera = p_cam;
        mCameraInfo[camIdx].field_0x4 = param_2;
        mCameraInfo[camIdx].field_0x5 = param_3;
        mCameraInfo[camIdx].field_0x6 = param_4;
        setCameraAttentionStatus(camIdx, 0);
    }

    void setStatus(u16 status) { mStatus = status; }
    s32 checkStatus(u16 flags) { return flags & mStatus; }

    void setDirection(u8 i_dir) { mDirection = i_dir; }

    bool& isPauseFlag() { return mPauseFlag; }
    void offPauseFlag() { mPauseFlag = false; }
    void onPauseFlag() { mPauseFlag = true; }
    u8 getOxygenShowFlag() { return mOxygenShowFlag; }
    void setOxygenShowFlag(u8 flag) { mOxygenShowFlag = flag; }
    void show2dOn() { mShow2D = 1; }
    void show2dOff() { mShow2D = 0; }
    s8 getLayerOld() { return mLayerOld; }
    void setMesgCancelButton(u8 button) { mMesgCancelButton = button; }
    void setMesgBgm(u8 param_0) { mMesgBgm = param_0; }
    int getMessageCountNumber() { return mMessageCountNum; }

    void setWindowNum(u8 num) { mWindowNum = num; }
    int getWindowNum() { return mWindowNum; }
    dDlst_window_c* getWindow(int i) { return &mWindow[i]; }
    void setWindow(int i, f32 param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5,
                   f32 param_6, int camID, int mode) {
        mWindow[i].setViewPort(param_1, param_2, param_3, param_4, param_5, param_6);
        mWindow[i].setScissor(param_1, param_2, param_3, param_4);
        mWindow[i].setCameraID(camID);
        mWindow[i].setMode(mode);
    }

    void setLastPlayStageName(char* name) {
        strncpy(mLastPlayStageName, name, 7);
        mLastPlayStageName[7] = 0;
    }
    char* getLastPlayStageName() { return mLastPlayStageName; }

    u8 getGameoverStatus() { return mGameoverStatus; }

public:
    /* 0x00000 */ dBgS mBgs;
    /* 0x01404 */ dCcS mCcs;
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
    /* 0x04E08 */ dSmplMdl_draw_c* mSimpleModel;
    /* 0x04E0C */ u8 mWindowNum;
    /* 0x04E0D */ s8 mLayerOld;
    /* 0x04E0E */ u16 mStatus;
    /* 0x04E10 */ dDlst_window_c mWindow[1];
    /* 0x04E3C */ dComIfG_camera_info_class mCameraInfo[1];
    /* 0x04E74 */ daAlink_c* mPlayer[1];
    /* 0x04E78 */ s8 mPlayerCameraID[1];
    /* 0x04E7C */ fopAc_ac_c* mPlayerPtr[2];  // 0: Player, 1: Horse ; type may be wrong
    /* 0x04E84 */ dMsgObject_c* mMsgObjectClass;
    /* 0x04E88 */ f32 mItemLifeCount;
    /* 0x04E8C */ s32 mItemRupeeCount;
    /* 0x04E90 */ s16 mItemKeyNumCount;
    /* 0x04E92 */ s16 mItemMaxLifeCount;
    /* 0x04E94 */ s16 mItemMagicCount;
    /* 0x04E96 */ s16 mItemNowMagicCount;
    /* 0x04E98 */ s16 mItemMaxMagicCount;
    /* 0x04E9A */ s16 field_0x4e9a;
    /* 0x04E9C */ s32 mItemOilCount;
    /* 0x04EA0 */ s32 mItemNowOil;
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
    /* 0x04ED0 */ u8 field_0x4ed0[4];
    /* 0x04ED4 */ int mMessageCountNum;
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
    /* 0x04F94 */ char mWarpItemStage[8];
    /* 0x04F9C */ cXyz mWarpItemPos;
    /* 0x04FA8 */ s16 mWarpItemAngle;
    /* 0x04FAA */ s8 mWarpItemRoom;
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
    /* 0x05010 */ view_class* mCurrentView;
    /* 0x05014 */ view_port_class* mCurrentViewport;
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
    dComIfG_play_c& getPlay() { return play; }

    /* 0x00000 */ dSv_info_c info;
    /* 0x00F38 */ dComIfG_play_c play;
    /* 0x05F64 */ dDlst_list_c drawlist;
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

int dComLbG_PhaseHandler(request_of_phase_process_class*, request_of_phase_process_fn, void*);
BOOL dComIfG_resetToOpening(scene_class* scene);
char* dComIfG_getRoomArcName(int roomNo);
void* dComIfG_getStageRes(char const* resName);
void* dComIfG_getOldStageRes(char const* resName);
void dComIfG_get_timelayer(int* layer);
int dComIfG_resDelete(request_of_phase_process_class* i_phase, char const* resName);
int dComIfG_changeOpeningScene(scene_class* scene, s16 procName);
int dComIfG_resLoad(request_of_phase_process_class* i_phase, char const* arc_name);
int dComIfG_resLoad(request_of_phase_process_class* i_phase, char const* resName, JKRHeap* heap);

inline void dComIfG_setBrightness(u8 brightness) {
    g_dComIfG_gameInfo.mFadeBrightness = brightness;
}

inline int dComIfG_getTimerMode() {
    return g_dComIfG_gameInfo.play.getTimerMode();
}

inline void dComIfG_setTimerMode(int mode) {
    return g_dComIfG_gameInfo.play.setTimerMode(mode);
}

inline dTimer_c* dComIfG_getTimerPtr() {
    return g_dComIfG_gameInfo.play.getTimerPtr();
}

inline u8 dComIfG_getTimerType() {
    return g_dComIfG_gameInfo.play.getTimerType();
}

inline int dComIfG_setObjectRes(const char* name, u8 param_1, JKRHeap* heap) {
    return g_dComIfG_gameInfo.mResControl.setObjectRes(name, param_1, heap);
}

inline int dComIfG_setStageRes(const char* name, JKRHeap* heap) {
    return g_dComIfG_gameInfo.mResControl.setStageRes(name, heap);
}

inline int dComIfG_syncObjectRes(const char* name) {
    return g_dComIfG_gameInfo.mResControl.syncObjectRes(name);
}

inline int dComIfG_syncStageRes(const char* name) {
    return g_dComIfG_gameInfo.mResControl.syncStageRes(name);
}

inline int dComIfG_deleteObjectResMain(const char* res) {
    return g_dComIfG_gameInfo.mResControl.deleteObjectRes(res);
}

inline int dComIfG_deleteStageRes(const char* res) {
    return g_dComIfG_gameInfo.mResControl.deleteStageRes(res);
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

inline dBgS& dComIfG_Bgsp() {
    return g_dComIfG_gameInfo.play.mBgs;
}

inline dCcS* dComIfG_Ccsp() {
    return &g_dComIfG_gameInfo.play.mCcs;
}

inline dCcS& dComIfG_Ccsp2() {
    return g_dComIfG_gameInfo.play.mCcs;
}

inline dRes_info_c* dComIfG_getObjectResInfo(const char* arc_name) {
    return g_dComIfG_gameInfo.mResControl.getObjectResInfo(arc_name);
}

inline dRes_info_c* dComIfG_getStageResInfo(const char* arc_name) {
    return g_dComIfG_gameInfo.mResControl.getStageResInfo(arc_name);
}

inline int dComIfG_syncAllObjectRes() {
    return g_dComIfG_gameInfo.mResControl.syncAllObjectRes();
}

inline void* dComIfG_getObjectIDRes(const char* arc_name, u16 id) {
    return g_dComIfG_gameInfo.mResControl.getObjectIDRes(arc_name, id);
}

inline u8 dComIfG_getBrightness() {
    return g_dComIfG_gameInfo.mFadeBrightness;
}

u8 dComIfGs_getMixItemIndex(int i_no);
void dComIfGs_setSelectItemIndex(int i_no, u8 item_index);
void dComIfGs_setMixItemIndex(int i_no, u8 item_index);
u8 dComIfGs_getBottleMax();
u8 dComIfGs_checkGetItem(u8 i_itemNo);
void dComIfGs_setSelectEquipClothes(u8 i_itemNo);
void dComIfGs_setKeyNum(int i_stageNo, u8 i_keyNum);
void dComIfGs_BossLife_public_Set(s8);
s8 dComIfGs_sense_type_change_Get();
cXyz& dComIfGs_getWarpPlayerPos();
const char* dComIfGs_getWarpStageName();
s16 dComIfGs_getWarpPlayerAngleY();
s8 dComIfGs_getWarpRoomNo();
BOOL dComIfGs_isOneZoneSwitch(int i_swBit, int i_roomNo);
void dComIfGs_setLastWarpMarkItemData(const char* stage, cXyz pos, s16 angle, s8 roomNo, u8, u8);
u16 dComIfGs_getMaxLifeGauge();
void dComIfGs_setWarpMarkFlag(u8);
void dComIfGs_setSelectEquipSword(u8 i_itemNo);
void dComIfGs_setSelectEquipShield(u8 i_itemNo);
BOOL dComIfGs_isVisitedRoom(int i_roomNo);
void dComIfGs_onZoneSwitch(int i_swBit, int i_roomNo);
void dComIfGs_onOneZoneSwitch(int i_swBit, int i_roomNo);
void dComIfGs_offZoneSwitch(int i_swBit, int i_roomNo);
void dComIfGs_offOneZoneSwitch(int i_swBit, int i_roomNo);
s8 dComIfGp_getReverb(int i_roomNo);
void dComIfGs_gameStart();
bool dComIfGs_wolfeye_effect_check();
BOOL dComIfGs_Wolf_Change_Check();
void dComIfGs_onVisitedRoom(int param_0);
void dComIfGs_setWarpItemData(char const* stage, cXyz pos, s16 angle, s8 roomNo, u8 param_4,
                              u8 param_5);
BOOL dComIfGs_isStageSwitch(int i_stageNo, int i_no);
void dComIfGs_onStageSwitch(int i_stageNo, int i_no);
void dComIfGs_offStageSwitch(int i_stageNo, int i_no);
void dComIfGs_PolyDamageOff_Set(s8 param_0);
u8 dComIfGs_staffroll_next_go_check();
BOOL dComIfGs_isEventBit(u16 i_flag);
int dComIfGs_isItemFirstBit(u8 i_no);
u16 dComIfGs_getRupee();
static u16 dComIfGs_getLife();
s8 dComIfGs_BossLife_public_Get();

inline void dComIfGs_init() {
    g_dComIfG_gameInfo.info.init();
}

inline int i_dComIfGs_isItemFirstBit(u8 i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getGetItem().isFirstBit(i_no);
}

inline u16 i_dComIfGs_getRupee() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getRupee();
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

inline void dComIfGs_setItem(int i_slotNo, u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setItem(i_slotNo, i_itemNo);
}

inline void dComIfGs_setOil(u16 i_oil) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setOil(i_oil);
}

inline void dComIfGs_setMaxOil(u16 i_maxOil) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxOil(i_maxOil);
}

inline void dComIfGs_setWalletSize(u8 i_size) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setWalletSize(i_size);
}

inline void dComIfGs_setMagic(u8 i_magic) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMagic(i_magic);
}

inline void dComIfGs_setMaxMagic(u8 i_maxMagic) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxMagic(i_maxMagic);
}

inline void dComIfGs_setRupee(u16 i_rupees) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setRupee(i_rupees);
}

inline void dComIfGs_setLife(u16 i_life) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setLife(i_life);
}

inline void dComIfGs_setMaxLife(u8 i_maxLife) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().setMaxLife(i_maxLife);
}

inline void dComIfGs_onDungeonItemBossKey() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onDungeonItemBossKey();
}

inline void dComIfGs_setCollectSword(u8 i_swordNo) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_SWORD, i_swordNo);
}

inline void dComIfGs_setCollectShield(u8 i_shieldNo) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_SHIELD, i_shieldNo);
}

inline void dComIfGs_setCollectClothes(u8 i_clothesNo) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().setCollect(COLLECT_CLOTHING, i_clothesNo);
}

inline void dComIfGs_setRodTypeLevelUp() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setRodTypeLevelUp();
}

inline void dComIfGs_setArrowNum(u8 i_arrowNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setArrowNum(i_arrowNum);
}

inline void dComIfGs_setArrowMax(u8 i_arrowMax) {
    g_dComIfG_gameInfo.info.getPlayer().getItemMax().setArrowNum(i_arrowMax);
}

inline u8 dComIfGs_getPachinkoMax() {
    return 50;
}

inline void dComIfGs_setEmptyBombBag() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBag();
}

inline void dComIfGs_setEmptyBombBag(u8 i_newBomb, u8 i_bombNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBag(i_newBomb, i_bombNum);
}

inline void dComIfGs_setEmptyBombBagItemIn(u8 i_newBomb, bool i_setNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBagItemIn(i_newBomb, i_setNum);
}

inline void dComIfGs_setEmptyBombBagItemIn(u8 i_newBomb, u8 i_bombNum, bool i_setNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBombBagItemIn(i_newBomb, i_bombNum,
                                                                        i_setNum);
}

inline void dComIfGs_setEmptyBottle() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottle();
}

inline void dComIfGs_setEmptyBottle(u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottle(i_itemNo);
}

inline void dComIfGs_setEmptyBottleItemIn(u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setEmptyBottleItemIn(i_itemNo);
}

inline void dComIfGs_setBottleNum(u8 i_bottleIdx, u8 i_bottleNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setBottleNum(i_bottleIdx, i_bottleNum);
}

inline void dComIfGs_onEventBit(u16 i_flag) {
    g_dComIfG_gameInfo.info.getSavedata().getEvent().onEventBit(i_flag);
}

// debug rom says `i_flag` is not const, but it's needed to match in some places?
// missing some other inline maybe?
inline BOOL i_dComIfGs_isEventBit(const u16 i_flag) {
    return g_dComIfG_gameInfo.info.getEvent().isEventBit(i_flag);
}

inline void dComIfGs_onLightDropFlag(u8 i_nowLevel) {
    g_dComIfG_gameInfo.info.getPlayer().getLightDrop().onLightDropGetFlag(i_nowLevel);
}

inline void dComIfGs_onSwitch(int i_no, int i_roomNo) {
    g_dComIfG_gameInfo.info.onSwitch(i_no, i_roomNo);
}

inline void dComIfGs_offSwitch(int i_no, int i_roomNo) {
    g_dComIfG_gameInfo.info.offSwitch(i_no, i_roomNo);
}

inline BOOL dComIfGs_isSwitch(int i_no, int i_roomNo) {
    return g_dComIfG_gameInfo.info.isSwitch(i_no, i_roomNo);
}

inline BOOL dComIfGs_isRegionBit(int i_region) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerFieldLastStayInfo().isRegionBit(i_region);
}

inline void dComIfGs_onRegionBit(int i_region) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerFieldLastStayInfo().onRegionBit(i_region);
}

inline void dComIfGs_onSvZoneSwitch(int i_zoneNo, int i_swBit) {
    g_dComIfG_gameInfo.info.getZone(i_zoneNo).getZoneBit().onSwitch(i_swBit);
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

inline u8 dComIfGs_getItem(int i_slotNo, bool i_checkCombo) {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().getItem(i_slotNo, i_checkCombo);
}

inline BOOL dComIfGs_isCollectSword(u8 i_swordNo) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollect(COLLECT_SWORD, i_swordNo);
}

inline BOOL dComIfGs_isCollectClothing(u8 i_clothesNo) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollect(COLLECT_CLOTHING,
                                                                      i_clothesNo);
}

inline u8 dComIfGs_checkBottle(u8 i_itemNo) {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().checkBottle(i_itemNo);
}

inline u8 dComIfGs_checkOptVibration() {
    return g_dComIfG_gameInfo.info.getPlayer().getConfig().checkVibration();
}

inline BOOL dComIfGs_isLightDropGetFlag(u8 i_nowLevel) {
    return g_dComIfG_gameInfo.info.getPlayer().getLightDrop().isLightDropGetFlag(i_nowLevel);
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

inline void dComIfGs_onItemFirstBit(u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getGetItem().onFirstBit(i_itemNo);
}

inline u16 dComIfGs_getMaxLife() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxLife();
}

inline u16 i_dComIfGs_getLife() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getLife();
}

inline void dComIfGs_offEventBit(u16 i_flag) {
    g_dComIfG_gameInfo.info.getSavedata().getEvent().offEventBit(i_flag);
}

inline const char* dComIfGs_getLastWarpMarkStageName() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().getName();
}

inline cXyz& dComIfGs_getLastWarpMarkPlayerPos() {
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

inline u8 dComIfGs_getLightDropNum(u8 i_nowLevel) {
    return g_dComIfG_gameInfo.info.getPlayer().getLightDrop().getLightDropNum(i_nowLevel);
}

inline u8 dComIfGs_getSelectItemIndex(int i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getSelectItemIndex(i_no);
}

inline u8 dComIfGs_getOptVibration() {
    return g_dComIfG_gameInfo.info.getPlayer().getConfig().getVibration();
}

inline u8 dComIfGs_getOptAttentionType() {
    return g_dComIfG_gameInfo.info.getPlayer().getConfig().getAttentionType();
}

inline BOOL dComIfGs_isTbox(int i_no) {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isTbox(i_no);
}

inline BOOL dComIfGs_isSaveTbox(int i_stageNo, int i_no) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().isTbox(i_no);
}

inline BOOL dComIfGs_isSaveDunSwitch(int i_no) {
    return g_dComIfG_gameInfo.info.getDan().isSwitch(i_no);
}

inline void dComIfGs_onSaveSwitch(int i_stageNo, int i_no) {
    g_dComIfG_gameInfo.info.getSavedata().getSave(i_stageNo).getBit().onSwitch(i_no);
}

inline void dComIfGs_onSaveSwitch(int i_no) {
    g_dComIfG_gameInfo.info.getMemory().getBit().onSwitch(i_no);
}

inline void dComIfGs_offSaveSwitch(int i_no) {
    g_dComIfG_gameInfo.info.getMemory().getBit().offSwitch(i_no);
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

inline s32 dComIfGs_isStageBossEnemy() {
    return g_dComIfG_gameInfo.info.getMemory().getBit().isStageBossEnemy();
}

inline void dComIfGs_setKeyNum(u8 i_keyNum) {
    g_dComIfG_gameInfo.info.getMemory().getBit().setKeyNum(i_keyNum);
}

inline BOOL dComIfGs_isSaveVisitedRoom(int param_0, int i_roomNo) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave2(param_0)->isVisitedRoom(i_roomNo);
}

inline void dComIfGs_onSaveVisitedRoom(int param_0, int i_roomNo) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave2(param_0)->onVisitedRoom(i_roomNo);
}

inline void dComIfGs_offSaveVisitedRoom(int param_0, int i_roomNo) {
    return g_dComIfG_gameInfo.info.getSavedata().getSave2(param_0)->offVisitedRoom(i_roomNo);
}

inline u16 dComIfGs_getOil() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getOil();
}

inline u16 dComIfGs_getMaxOil() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxOil();
}

inline s64 dComIfGs_getSaveStartTime() {
    return g_dComIfG_gameInfo.info.getStartTime();
}

inline s64 dComIfGs_getSaveTotalTime() {
    return g_dComIfG_gameInfo.info.getSaveTotalTime();
}

inline dSv_save_c* dComIfGs_getSaveData() {
    return &g_dComIfG_gameInfo.info.getSavedata();
}

inline void dComIfGs_setLineUpItem() {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setLineUpItem();
}

inline s32 dComIfGs_isGetMagicUseFlag() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().isMagicFlag(0);
}

inline void dComIfGs_offTmpBit(u16 i_flag) {
    g_dComIfG_gameInfo.info.getTmp().offEventBit(i_flag);
}

inline BOOL dComIfGs_isDarkClearLV(int i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().isDarkClearLV(i_no);
}

inline BOOL dComIfGs_isTmpBit(u16 i_flag) {
    return g_dComIfG_gameInfo.info.getTmp().isEventBit(i_flag);
}

inline void dComIfGs_onTmpBit(u16 i_flag) {
    g_dComIfG_gameInfo.info.getTmp().onEventBit(i_flag);
}

inline BOOL dComIfGs_isTransformLV(int i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().isTransformLV(i_no);
}

inline void dComIfGs_onStageLife() {
    g_dComIfG_gameInfo.info.getMemory().getBit().onStageLife();
}

inline u8 dComIfGs_getBombNum(u8 i_bagIdx) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getBombNum(i_bagIdx);
}

inline u8 dComIfGs_getPachinkoNum() {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getPachinkoNum();
}

inline u8 dComIfGs_getBottleNum(u8 i_bottleIdx) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getBottleNum(i_bottleIdx);
}

inline u8 dComIfGs_getBombMax(u8 i_bombType) {
    return g_dComIfG_gameInfo.info.getPlayer().getItemMax().getBombNum(i_bombType);
}

inline void dComIfGs_setBombNum(u8 i_bagIdx, u8 i_bombNum) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setBombNum(i_bagIdx, i_bombNum);
}

inline void dComIfGs_setPachinkoNum(u8 i_num) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().setPachinkoNum(i_num);
}

inline void dComIfGs_addBottleNum(u8 i_bottleIdx, s16 i_num) {
    g_dComIfG_gameInfo.info.getPlayer().getItemRecord().addBottleNum(i_bottleIdx, i_num);
}

inline void dComIfGs_resetLastWarpAcceptStage() {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().resetWarpAcceptStage();
}

inline void dComIfGs_offItemFirstBit(u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getGetItem().offFirstBit(i_itemNo);
}

inline BOOL dComIfGs_isLetterGetFlag(int i_no) {
    return g_dComIfG_gameInfo.info.getPlayer().getLetterInfo().isLetterGetFlag(i_no);
}

inline u8 dComIfGs_getArrowNum() {
    return g_dComIfG_gameInfo.info.getPlayer().getItemRecord().getArrowNum();
}

inline void dComIfGs_initZone() {
    g_dComIfG_gameInfo.info.initZone();
}

inline s16 dComIfGs_getStartPoint() {
    return g_dComIfG_gameInfo.info.getRestart().getStartPoint();
}

inline u32 dComIfGs_getLastSceneMode() {
    return g_dComIfG_gameInfo.info.getRestart().getLastMode();
}

inline void dComIfGs_setTurnRestart(const cXyz& i_position, s16 i_angle, s8 param_2, u32 i_param) {
    g_dComIfG_gameInfo.info.getTurnRestart().set(i_position, i_angle, param_2, i_param);
}

inline void dComIfGs_setRestartRoom(const cXyz& i_position, s16 i_angle, s8 i_roomNo) {
    g_dComIfG_gameInfo.info.getRestart().setRoom(i_position, i_angle, i_roomNo);
}

inline s8 dComIfGs_getRestartRoomNo() {
    return g_dComIfG_gameInfo.info.getRestart().getRoomNo();
}

inline void dComIfGs_setRestartRoomParam(u32 i_param) {
    g_dComIfG_gameInfo.info.getRestart().setRoomParam(i_param);
}

inline u8 dComIfGs_getMagic() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMagic();
}

inline u8 dComIfGs_getMaxMagic() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getMaxMagic();
}

inline bool dComIfGs_isCollectMirror(u8 i_item) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollectMirror(i_item);
}

inline bool dComIfGs_isCollectCrystal(u8 i_item) {
    return g_dComIfG_gameInfo.info.getPlayer().getCollect().isCollectCrystal(i_item);
}

inline void dComIfGs_onCollectMirror(u8 i_item) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().onCollectMirror(i_item);
}

inline void dComIfGs_onCollectCrystal(u8 i_item) {
    g_dComIfG_gameInfo.info.getPlayer().getCollect().onCollectCrystal(i_item);
}

inline u16 dComIfGs_getDate() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().getDate();
}

inline void dComIfGs_setDate(u16 i_date) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().setDate(i_date);
}

inline f32 dComIfGs_getTime() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().getTime();
}

inline void dComIfGs_setTime(f32 i_time) {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().setTime(i_time);
}

inline void dComIfGs_onDarkClearLV(int i_no) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().onDarkClearLV(i_no);
}

inline void dComIfGs_onTransformLV(int i_no) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusB().onTransformLV(i_no);
}

inline void dComIfGs_onSaveDunSwitch(int i_swNo) {
    g_dComIfG_gameInfo.info.getDan().onSwitch(i_swNo);
}

inline void dComIfGs_offSaveDunSwitch(int i_swNo) {
    g_dComIfG_gameInfo.info.getDan().offSwitch(i_swNo);
}

inline u8 dComIfGs_getDataNum() {
    return g_dComIfG_gameInfo.info.getDataNum();
}

inline void dComIfGs_setDataNum(u8 i_num) {
    return g_dComIfG_gameInfo.info.setDataNum(i_num);
}

inline void dComIfGs_setNewFile(u8 i_fileNo) {
    return g_dComIfG_gameInfo.info.setNewFile(i_fileNo);
}

inline char* dComIfGs_getPlayerName() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerInfo().getLinkName();
}

inline u8 dComIfGs_getTransformStatus() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getTransformStatus();
}

inline bool dComIfGs_isPlayerFieldLastStayFieldDataExistFlag() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerFieldLastStayInfo().isFieldDataExistFlag();
}

inline void dComIfGs_setPlayerFieldLastStayInfo(const char* i_stage, cXyz& i_pos, s16 i_angle,
                                                s8 i_point, u8 i_region) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerFieldLastStayInfo().set(i_stage, i_pos, i_angle,
                                                                         i_point, i_region);
}

inline void dComIfGs_setStartPoint(s16 i_point) {
    g_dComIfG_gameInfo.info.getRestart().setStartPoint(i_point);
}

inline void dComIfGs_clearRoomSwitch(int i_zoneNo) {
    g_dComIfG_gameInfo.info.getZone(i_zoneNo).getZoneBit().clearRoomSwitch();
}

inline void dComIfGs_clearRoomItem(int i_zoneNo) {
    g_dComIfG_gameInfo.info.getZone(i_zoneNo).getZoneBit().clearRoomItem();
}

inline void dComIfGs_removeZone(int i_zoneNo) {
    g_dComIfG_gameInfo.info.removeZone(i_zoneNo);
}

inline u32 dComIfGs_getTurnRestartParam() {
    return g_dComIfG_gameInfo.info.getTurnRestart().getParam();
}

inline cXyz& dComIfGs_getTurnRestartPos() {
    return g_dComIfG_gameInfo.info.getTurnRestart().getPos();
}

inline s16 dComIfGs_getTurnRestartAngleY() {
    return g_dComIfG_gameInfo.info.getTurnRestart().getAngleY();
}

inline u32 dComIfGs_getRestartRoomParam() {
    return g_dComIfG_gameInfo.info.getRestart().getRoomParam();
}

inline cXyz& dComIfGs_getRestartRoomPos() {
    return g_dComIfG_gameInfo.info.getRestart().getRoomPos();
}

inline s16 dComIfGs_getRestartRoomAngleY() {
    return g_dComIfG_gameInfo.info.getRestart().getRoomAngleY();
}

inline BOOL dComIfGs_isActor(int i_no, int i_roomNo) {
    return g_dComIfG_gameInfo.info.isActor(i_no, i_roomNo);
}

inline void dComIfGs_putSave(int i_stageNo) {
    g_dComIfG_gameInfo.info.putSave(i_stageNo);
}

inline void dComIfGs_getSave(int i_stageNo) {
    g_dComIfG_gameInfo.info.getSave(i_stageNo);
}

inline void dComIfGs_initDan(s8 i_stageNo) {
    g_dComIfG_gameInfo.info.initDan(i_stageNo);
}

inline void dComIfGs_resetDan() {
    g_dComIfG_gameInfo.info.resetDan();
}

inline u16 dComIfGs_getRupeeMax() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getRupeeMax();
}

inline void dComIfGs_onLightDropGetFlag(u8 i_nowLevel) {
    g_dComIfG_gameInfo.info.getPlayer().getLightDrop().onLightDropGetFlag(i_nowLevel);
}

inline void dComIfGs_setTmpReg(u16 i_reg, u8 i_no) {
    g_dComIfG_gameInfo.info.getTmp().setEventReg(i_reg, i_no);
}

inline int dComIfGs_getTmpReg(u16 i_reg) {
    return g_dComIfG_gameInfo.info.getTmp().getEventReg(i_reg);
}

inline void dComIfGs_setWarashibeItem(u8 i_itemNo) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setWarashibeItem(i_itemNo);
}

inline void dComIfGs_setBottleItemIn(u8 curItem, u8 newItem) {
    g_dComIfG_gameInfo.info.getPlayer().getItem().setBottleItemIn(curItem, newItem);
}

inline u8 dComIfGs_checkInsectBottle() {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().checkInsectBottle();
}

inline u8 dComIfGs_checkBombBag(u8 i_itemNo) {
    return g_dComIfG_gameInfo.info.getPlayer().getItem().checkBombBag(i_itemNo);
}

inline s64 dComIfGs_getTotalTime() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerInfo().getTotalTime();
}

inline void dComIfGs_setSaveTotalTime(s64 i_time) {
    g_dComIfG_gameInfo.info.setSaveTotalTime(i_time);
}

inline void dComIfGs_setSaveStartTime(s64 i_time) {
    g_dComIfG_gameInfo.info.setStartTime(i_time);
}

inline void dComIfGs_setNoFile(u8 i_file) {
    g_dComIfG_gameInfo.info.setNoFile(i_file);
}

inline void* dComIfGs_getPEventBit() {
    return g_dComIfG_gameInfo.info.getEvent().getPEventBit();
}

inline bool dComIfGs_isItem(int i_bitNo, int i_roomNo) {
    return g_dComIfG_gameInfo.info.isItem(i_bitNo, i_roomNo);
}

inline void dComIfGs_onItem(int i_bitNo, int i_roomNo) {
    g_dComIfG_gameInfo.info.onItem(i_bitNo, i_roomNo);
}

inline void dComIfGs_onActor(int i_bitNo, int i_roomNo) {
    g_dComIfG_gameInfo.info.onActor(i_bitNo, i_roomNo);
}

inline void dComIfGs_setLastWarpAcceptStage(s8 param_0) {
    g_dComIfG_gameInfo.info.getPlayer().getPlayerLastMarkInfo().setWarpAcceptStage(param_0);
}

inline void dComIfGs_setOptPointer(u8 i_pointer) {
    g_dComIfG_gameInfo.info.getPlayer().getConfig().setPointer(i_pointer);
}

inline u8 dComIfGs_getNewFile() {
    return g_dComIfG_gameInfo.info.getNewFile();
}

inline void dComIfGs_setInitDataToCard(u8* i_saveData, int i_dataNum) {
    g_dComIfG_gameInfo.info.initdata_to_card((char*)i_saveData, i_dataNum);
}

inline void dComIfGs_setMemoryToCard(u8* i_saveData, int i_dataNum) {
    g_dComIfG_gameInfo.info.memory_to_card((char*)i_saveData, i_dataNum);
}

inline int dComIfGs_createZone(int roomNo) {
    return g_dComIfG_gameInfo.info.createZone(roomNo);
}

void dComIfGp_setSelectItem(int index);
s32 dComIfGp_offHeapLockFlag(int flag);
void dComIfGp_createSubExpHeap2D();
void dComIfGp_destroySubExpHeap2D();
int dComIfGp_checkEmptySubHeap2D();
int dComIfGp_searchUseSubHeap2D(int flag);
void dComIfGp_addSelectItemNum(int index, s16 num);
u8 dComIfGp_getSelectItem(int index);
u8 dComIfGp_TargetWarpPt_get();
void dComIfGp_TargetWarpPt_set(u8);
BOOL dComIfGp_TransportWarp_check();
u8 dComIfGp_SelectWarpPt_get();
void dComIfGp_setNextStage(char const* stage, s16 point, s8 roomNo, s8 layer, f32 lastSpeed,
                           u32 lastMode, int, s8 wipe, s16 lastAngle, int, int);
void dComIfGp_setNextStage(char const* stage, s16 point, s8 roomNo, s8 layer);
s16 dComIfGp_getSelectItemNum(int index);
int dComIfGp_getSelectItemMaxNum(int index);
void dComIfGp_mapShow();
void dComIfGp_mapHide();
bool dComIfGp_checkMapShow();
void dComIfGp_ret_wp_set(s8);
s32 dComIfGp_setHeapLockFlag(u8 flag);
u8 dComIfGp_world_dark_get();
JKRExpHeap* dComIfGp_getSubHeap2D(int flag);
void dComIfGp_world_dark_set(u8);
u8 dComIfGp_getNowLevel();
void dComIfGp_calcNowRegion();
daHorse_c* dComIfGp_getHorseActor();
static BOOL dComIfGp_event_runCheck();
static s32 dComIfGp_evmng_getMyStaffId(const char* pName, fopAc_ac_c* pActor, int param_2);
static u16 dComIfGp_event_chkEventFlag(u16 flag);
static s8 dComIfGp_getPlayerCameraID(int idx);
static dEvent_manager_c& dComIfGp_getEventManager();
static u32 dComIfGp_checkPlayerStatus0(int param_0, u32 param_1);
static u32 dComIfGp_checkPlayerStatus1(int param_0, u32 param_1);
static dEvt_control_c& dComIfGp_getEvent();
static bool dComIfGp_evmng_startCheck(char const* param_0);
static dStage_stageDt_c* dComIfGp_getStage();
void dComIfGp_setItemLifeCount(f32 amount, u8 type);
void dComIfGp_setItemRupeeCount(s32 param_0);
static u8 dComIfGp_getDoStatus();
static u8 dComIfGp_getRStatus();
static dAttCatch_c* dComIfGp_att_getCatghTarget();
static void dComIfGp_setBottleStatus(u8 param_0, u8 param_1);
bool dComIfGp_getMapTrans(int i_roomNo, f32* o_transX, f32* o_transY, s16* o_angle);

inline bool i_dComIfGp_checkPlayerStatus0(int param_0, u32 flag) {
    return g_dComIfG_gameInfo.play.checkPlayerStatus(param_0, 0, flag);
}

inline bool i_dComIfGp_checkPlayerStatus1(int param_0, u32 flag) {
    return g_dComIfG_gameInfo.play.checkPlayerStatus(param_0, 1, flag);
}

inline void i_dComIfGp_setItemLifeCount(float amount, u8 type) {
    g_dComIfG_gameInfo.play.setItemLifeCount(amount, type);
}

inline void i_dComIfGp_setItemRupeeCount(int amount) {
    g_dComIfG_gameInfo.play.setItemRupeeCount(amount);
}

inline dStage_startStage_c* dComIfGp_getStartStage() {
    return g_dComIfG_gameInfo.play.getStartStage();
}

inline dEvent_manager_c* dComIfGp_getPEvtManager() {
    return &g_dComIfG_gameInfo.play.getEvtManager();
}

inline dAttention_c& dComIfGp_getAttention() {
    return g_dComIfG_gameInfo.play.getAttention();
}

inline u8 dComIfGp_att_getCatchChgItem() {
    return dComIfGp_getAttention().getCatchChgItem();
}

inline J2DGrafContext* dComIfGp_getCurrentGrafPort() {
    return g_dComIfG_gameInfo.play.getCurrentGrafPort();
}

inline dVibration_c& dComIfGp_getVibration() {
    return g_dComIfG_gameInfo.play.getVibration();
}

inline daPy_py_c* dComIfGp_getLinkPlayer() {
    return (daPy_py_c*)g_dComIfG_gameInfo.play.getPlayerPtr(LINK_PTR);
}

inline fopAc_ac_c* dComIfGp_getPlayer(int idx) {
    return g_dComIfG_gameInfo.play.getPlayer(idx);
}

inline s8 i_dComIfGp_getPlayerCameraID(int idx) {
    return g_dComIfG_gameInfo.play.getPlayerCameraID(idx);
}

inline daHorse_c* i_dComIfGp_getHorseActor() {
    return (daHorse_c*)g_dComIfG_gameInfo.play.getPlayerPtr(1);
}

inline dMsgObject_c* dComIfGp_getMsgObjectClass() {
    return g_dComIfG_gameInfo.play.getMsgObjectClass();
}

inline camera_class* dComIfGp_getCamera(int idx) {
    return g_dComIfG_gameInfo.play.getCamera(idx);
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

inline JKRArchive* dComIfGp_getNameResArchive() {
    return g_dComIfG_gameInfo.play.getNameResArchive();
}

inline JKRArchive* dComIfGp_getMsgDtArchive(int idx) {
    return g_dComIfG_gameInfo.play.getMsgDtArchive(idx);
}

inline JKRArchive* dComIfGp_getMsgArchive(int idx) {
    return g_dComIfG_gameInfo.play.getMsgArchive(idx);
}

inline void dComIfGp_setFieldMapArchive2(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setFieldMapArchive2(arc);
}

inline void dComIfGp_setAnmArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setAnmArchive(arc);
}

inline void dComIfGp_setFmapResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setFmapResArchive(arc);
}

inline void dComIfGp_setDmapResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setDmapResArchive(arc);
}

inline void dComIfGp_setCollectResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setCollectResArchive(arc);
}

inline void dComIfGp_setItemIconArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setItemIconArchive(arc);
}

inline void dComIfGp_setAllMapArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setAllMapArchive(arc);
}

inline void dComIfGp_setRingResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setRingResArchive(arc);
}

inline void dComIfGp_setNameResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setNameResArchive(arc);
}

inline void dComIfGp_setDemoMsgArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setDemoMsgArchive(arc);
}

inline void dComIfGp_setMeterButtonArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setMeterButtonArchive(arc);
}

inline void dComIfGp_setErrorResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setErrorResArchive(arc);
}

inline void dComIfGp_setCardIconResArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setCardIconResArchive(arc);
}

inline void dComIfGp_setMsgDtArchive(int i, JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setMsgDtArchive(i, arc);
}

inline void dComIfGp_setMsgCommonArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setMsgCommonArchive(arc);
}

inline void dComIfGp_setMsgArchive(int i, JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setMsgArchive(i, arc);
}

inline void dComIfGp_setFontArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setFontArchive(arc);
}

inline void dComIfGp_setRubyArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setRubyArchive(arc);
}

inline void dComIfGp_setMain2DArchive(JKRArchive* arc) {
    g_dComIfG_gameInfo.play.setMain2DArchive(arc);
}

inline void dComIfGp_setItemTable(void* data) {
    g_dComIfG_gameInfo.play.setItemTable(data);
}

inline void* dComIfGp_getItemTable() {
    return g_dComIfG_gameInfo.play.getItemTable();
}

inline JKRExpHeap* dComIfGp_getExpHeap2D() {
    return g_dComIfG_gameInfo.play.getExpHeap2D();
}

inline JKRExpHeap* dComIfGp_getMsgExpHeap() {
    return g_dComIfG_gameInfo.play.getMsgExpHeap();
}

inline JKRExpHeap* dComIfGp_getSubExpHeap2D(int idx) {
    return g_dComIfG_gameInfo.play.getSubExpHeap2D(idx);
}

inline const char* dComIfGp_getStartStageName() {
    return g_dComIfG_gameInfo.play.getStartStageName();
}

inline void dComIfGp_setStartStage(dStage_startStage_c* p_startStage) {
    g_dComIfG_gameInfo.play.setStartStage(p_startStage);
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

inline s16 dComIfGp_getStartStagePoint() {
    return g_dComIfG_gameInfo.play.getStartStagePoint();
}

inline const char* dComIfGp_getNextStageName() {
    return g_dComIfG_gameInfo.play.getNextStageName();
}

inline dStage_startStage_c* dComIfGp_getNextStartStage() {
    return g_dComIfG_gameInfo.play.getNextStartStage();
}

inline s8 dComIfGp_getNextStageRoomNo() {
    return g_dComIfG_gameInfo.play.getNextStageRoomNo();
}

inline s8 dComIfGp_getNextStageLayer() {
    return g_dComIfG_gameInfo.play.getNextStageLayer();
}

inline s32 dComIfGp_getNextStageWipe() {
    return g_dComIfG_gameInfo.play.getNextStageWipe();
}

inline bool dComIfGp_isEnableNextStage() {
    return g_dComIfG_gameInfo.play.isEnableNextStage();
}

inline s16 dComIfGp_getNextStagePoint() {
    return g_dComIfG_gameInfo.play.getNextStagePoint();
}

inline void dComIfGp_setLastPlayStageName(char* name) {
    g_dComIfG_gameInfo.play.setLastPlayStageName(name);
}

inline char* dComIfGp_getLastPlayStageName() {
    return g_dComIfG_gameInfo.play.getLastPlayStageName();
}

inline u8 dComIfGp_getGameoverStatus() {
    return g_dComIfG_gameInfo.play.getGameoverStatus();
}

inline u32 dComIfGp_getNowVibration() {
    return g_dComIfG_gameInfo.play.getNowVibration();
}

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

inline void dComIfGp_set3DStatus(u8 status, u8 direction, u8 flag) {
    g_dComIfG_gameInfo.play.set3DStatus(status, direction, flag);
}

inline void dComIfGp_setXStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setXStatus(status, flag);
}

inline void dComIfGp_setYStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setYStatus(status, flag);
}

inline void dComIfGp_setNunStatus(u8 status, u8 param_1, u8 flag) {
    g_dComIfG_gameInfo.play.setNunStatus(status, param_1, flag);
}

inline void dComIfGp_setRemoConStatus(u8 status, u8 param_1, u8 flag) {
    g_dComIfG_gameInfo.play.setRemoConStatus(status, param_1, flag);
}

inline void dComIfGp_setNunZStatus(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.play.setNunZStatus(param_0, param_1);
}

inline void dComIfGp_setNunCStatus(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.play.setNunCStatus(param_0, param_1);
}

inline void dComIfGp_setCStickStatus(u8 status, u8 param_1, u8 flag) {
    g_dComIfG_gameInfo.play.setCStickStatus(status, param_1, flag);
}

inline void dComIfGp_setCStickStatusForce(u8 status, u8 param_1, u8 flag) {
    g_dComIfG_gameInfo.play.setCStickStatusForce(status, param_1, flag);
}

inline void dComIfGp_setSButtonStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setSButtonStatus(status, flag);
}

inline void dComIfGp_setSButtonStatusForce(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setSButtonStatusForce(status, flag);
}

inline void dComIfGp_setDoStatusForce(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setDoStatusForce(status, flag);
}

inline void dComIfGp_setAStatusForce(u8 status, u8 flag) {
    g_dComIfG_gameInfo.play.setAStatusForce(status, flag);
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

inline u8 dComIfGp_getCStickDirectionForce() {
    return g_dComIfG_gameInfo.play.getCStickDirectionForce();
}

inline u8 dComIfGp_getCStickStatusForce() {
    return g_dComIfG_gameInfo.play.getCStickStatusForce();
}

inline u8 dComIfGp_getCStickSetFlagForce() {
    return g_dComIfG_gameInfo.play.getCStickSetFlagForce();
}

inline u8 dComIfGp_getSButtonStatusForce() {
    return g_dComIfG_gameInfo.play.getSButtonStatusForce();
}

inline u8 dComIfGp_getSButtonSetFlagForce() {
    return g_dComIfG_gameInfo.play.getSButtonSetFlagForce();
}

inline void dComIfGp_setItemMagicCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemMagicCount(count);
}

inline void dComIfGp_setItemMaxMagicCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemMaxMagicCount(count);
}

inline void dComIfGp_setItemArrowNumCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemArrowNumCount(count);
}

inline void dComIfGp_setItemPachinkoNumCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemPachinkoNumCount(count);
}

inline void dComIfGp_setItemBombNumCount(u8 i_item, s16 count) {
    g_dComIfG_gameInfo.play.setItemBombNumCount(i_item, count);
}

inline void dComIfGp_setItemKeyNumCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemKeyNumCount(count);
}

inline void dComIfGp_setItemMaxLifeCount(s16 count) {
    g_dComIfG_gameInfo.play.setItemMaxLifeCount(count);
}

inline void dComIfGp_setItem(u8 slot, u8 i_no) {
    g_dComIfG_gameInfo.play.setItem(slot, i_no);
}

inline roomRead_class* dComIfGp_getStageRoom() {
    return g_dComIfG_gameInfo.play.getStage().getRoom();
}

inline stage_stag_info_class* dComIfGp_getStageStagInfo() {
    return g_dComIfG_gameInfo.play.getStage().getStagInfo();
}

inline stage_envr_info_class* dComIfGp_getStageEnvrInfo() {
    return g_dComIfG_gameInfo.play.getStage().getEnvrInfo();
}

inline stage_palette_info_class* dComIfGp_getStagePaletteInfo() {
    return g_dComIfG_gameInfo.play.getStage().getPaletteInfo();
}

inline stage_pselect_info_class* dComIfGp_getStagePselectInfo() {
    return g_dComIfG_gameInfo.play.getStage().getPselectInfo();
}

inline stage_vrbox_info_class* dComIfGp_getStageVrboxcolInfo() {
    return g_dComIfG_gameInfo.play.getStage().getVrboxInfo();
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

inline void dComIfGp_setSubExpHeap2D(int idx, void* heap) {
    g_dComIfG_gameInfo.play.setSubExpHeap2D(idx, heap);
}

inline void dComIfGp_setExpHeap2D(void* heap) {
    g_dComIfG_gameInfo.play.setExpHeap2D(heap);
}

inline void dComIfGp_setMsgExpHeap(void* heap) {
    g_dComIfG_gameInfo.play.setMsgExpHeap(heap);
}

inline void dComIfGp_offEnableNextStage() {
    g_dComIfG_gameInfo.play.offEnableNextStage();
}

inline void dComIfGp_setNowVibration(u8 status) {
    g_dComIfG_gameInfo.play.setNowVibration(status);
}

inline void dComIfGp_setSelectEquipClothes(u8 i_clothNo) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_CLOTHING, i_clothNo);
}

inline void dComIfGp_setSelectEquipSword(u8 i_swordNo) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_SWORD, i_swordNo);
}

inline void dComIfGp_setSelectEquipShield(u8 i_shieldNo) {
    g_dComIfG_gameInfo.play.setSelectEquip(COLLECT_SHIELD, i_shieldNo);
}

inline void dComIfGp_setStatus(u16 status) {
    g_dComIfG_gameInfo.play.setStatus(status);
}

inline void dComIfGp_setAdvanceDirection(u8 i_dir) {
    g_dComIfG_gameInfo.play.setDirection(i_dir);
}

inline void dComIfGp_setLinkPlayer(fopAc_ac_c* ptr) {
    g_dComIfG_gameInfo.play.setPlayerPtr(0, ptr);
}

inline void dComIfGp_setPlayerPtr(int i, fopAc_ac_c* ptr) {
    g_dComIfG_gameInfo.play.setPlayerPtr(i, ptr);
}

inline void dComIfGp_setPlayer(int i, fopAc_ac_c* player) {
    g_dComIfG_gameInfo.play.setPlayer(i, player);
}

inline void dComIfGp_setPlayerInfo(int plyrIdx, fopAc_ac_c* ptr, int camIdx) {
    g_dComIfG_gameInfo.play.setPlayerInfo(plyrIdx, ptr, camIdx);
}

inline void dComIfGp_setPlayerStatus0(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.setPlayerStatus(param_0, 0, flag);
}

inline void dComIfGp_setPlayerStatus1(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.setPlayerStatus(param_0, 1, flag);
}

inline BOOL dComIfGp_checkCameraAttentionStatus(int i, u32 flag) {
    return g_dComIfG_gameInfo.play.checkCameraAttentionStatus(i, flag);
}

inline void dComIfGp_onCameraAttentionStatus(int i, u32 flag) {
    g_dComIfG_gameInfo.play.onCameraAttentionStatus(i, flag);
}

inline void dComIfGp_offCameraAttentionStatus(int i, u32 flag) {
    g_dComIfG_gameInfo.play.offCameraAttentionStatus(i, flag);
}

inline void dComIfGp_setCameraInfo(int camIdx, camera_class* p_cam, int param_2, int param_3,
                                   int param_4) {
    g_dComIfG_gameInfo.play.setCameraInfo(camIdx, p_cam, param_2, param_3, param_4);
}

inline void dComIfGp_clearPlayerStatus0(int param_0, u32 flag) {
    g_dComIfG_gameInfo.play.clearPlayerStatus(param_0, 0, flag);
}

inline dStage_stageDt_c* i_dComIfGp_getStage() {
    return &g_dComIfG_gameInfo.play.getStage();
}

inline stage_scls_info_dummy_class* dComIfGp_getStageSclsInfo() {
    return g_dComIfG_gameInfo.play.getStage().getSclsInfo();
}

inline void dComIfGp_setItemNowLife(u16 life) {
    g_dComIfG_gameInfo.play.setItemNowLife(life);
}

inline void dComIfGp_setItemNowMagic(s16 magic) {
    g_dComIfG_gameInfo.play.setItemNowMagic(magic);
}

inline void dComIfGp_setOxygen(int oxygen) {
    g_dComIfG_gameInfo.play.setOxygen(oxygen);
}

inline void dComIfGp_setNowOxygen(s32 oxygen) {
    g_dComIfG_gameInfo.play.setNowOxygen(oxygen);
}

inline void dComIfGp_setOxygenCount(s32 oxygen) {
    g_dComIfG_gameInfo.play.setOxygenCount(oxygen);
}

inline s32 dComIfGp_getMaxOxygen() {
    return g_dComIfG_gameInfo.play.getMaxOxygen();
}

inline int dComIfGp_getOxygen() {
    return g_dComIfG_gameInfo.play.getOxygen();
}

inline int dComIfGp_getNowOxygen() {
    return g_dComIfG_gameInfo.play.getNowOxygen();
}

inline u8 dComIfGp_getOxygenShowFlag() {
    return g_dComIfG_gameInfo.play.getOxygenShowFlag();
}

inline void dComIfGp_onOxygenShowFlag() {
    g_dComIfG_gameInfo.play.setOxygenShowFlag(1);
}

inline void dComIfGp_offOxygenShowFlag() {
    g_dComIfG_gameInfo.play.setOxygenShowFlag(0);
}

inline u8 dComIfGp_getNeedLightDropNum() {
    return g_dComIfG_gameInfo.play.getNeedLightDropNum();
}

inline void dComIfGp_setItemNowOil(s32 oil) {
    g_dComIfG_gameInfo.play.setItemNowOil(oil);
}

inline void dComIfGp_setItemOilCount(s32 oil) {
    g_dComIfG_gameInfo.play.setItemOilCount(oil);
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

inline bool dComIfGp_isPauseFlag() {
    return g_dComIfG_gameInfo.play.isPauseFlag();
}

inline bool dComIfGp_isCStickSetFlag(u8 flag) {
    return g_dComIfG_gameInfo.play.isCStickSetFlag(flag);
}

inline void dComIfGp_offPauseFlag() {
    g_dComIfG_gameInfo.play.offPauseFlag();
}

inline void dComIfGp_setMesgCancelButton(u8 button) {
    g_dComIfG_gameInfo.play.setMesgCancelButton(button);
}

inline void dComIfGp_setMesgBgmOn() {
    g_dComIfG_gameInfo.play.setMesgBgm(1);
}

inline s32 dComIfGp_checkStatus(u16 flags) {
    return g_dComIfG_gameInfo.play.checkStatus(flags);
}

inline s16 dComIfGp_getItemPachinkoNumCount() {
    return g_dComIfG_gameInfo.play.getItemPachinkoNumCount();
}

inline void dComIfGp_clearItemPachinkoNumCount() {
    g_dComIfG_gameInfo.play.clearItemPachinkoNumCount();
}

inline void dComIfGp_2dShowOn() {
    g_dComIfG_gameInfo.play.show2dOn();
}

inline void dComIfGp_2dShowOff() {
    g_dComIfG_gameInfo.play.show2dOff();
}

inline s16 dComIfGp_getItemMaxLifeCount() {
    return g_dComIfG_gameInfo.play.getItemMaxLifeCount();
}

inline f32 dComIfGp_getItemLifeCount() {
    return g_dComIfG_gameInfo.play.getItemLifeCount();
}

inline s16 dComIfGp_getItemMaxArrowNumCount() {
    return g_dComIfG_gameInfo.play.getItemMaxArrowNumCount();
}

inline void dComIfGp_clearItemMaxLifeCount() {
    g_dComIfG_gameInfo.play.clearItemMaxLifeCount();
}

inline void dComIfGp_clearItemLifeCount() {
    g_dComIfG_gameInfo.play.clearItemLifeCount();
}

inline u8 dComIfGp_getItemLifeCountType() {
    return g_dComIfG_gameInfo.play.getItemLifeCountType();
}

inline int dComIfGp_getMessageCountNumber() {
    return g_dComIfG_gameInfo.play.getMessageCountNumber();
}

inline u8 dComIfGp_getMesgFaceAnimeAttrInfo() {
    return g_dComIfG_gameInfo.play.getFaceAnimeID();
}

inline u8 dComIfGp_getMesgAnimeAttrInfo() {
    return g_dComIfG_gameInfo.play.getBaseAnimeID();
}

inline void dComIfGp_setCameraParamFileName(int i, char* name) {
    g_dComIfG_gameInfo.play.setCameraParamFileName(i, name);
}

inline void dComIfGp_setCamera(int i, camera_class* cam) {
    g_dComIfG_gameInfo.play.setCamera(i, cam);
}

inline const char* dComIfGp_getCameraParamFileName(int i) {
    return g_dComIfG_gameInfo.play.getCameraParamFileName(i);
}

inline void dComIfGp_setWindowNum(int num) {
    g_dComIfG_gameInfo.play.setWindowNum(num);
}

inline int dComIfGp_getWindowNum() {
    return g_dComIfG_gameInfo.play.getWindowNum();
}

inline dDlst_window_c* dComIfGp_getWindow(int i) {
    return g_dComIfG_gameInfo.play.getWindow(i);
}

inline void dComIfGp_setWindow(u8 i, f32 param_1, f32 param_2, f32 param_3, f32 param_4,
                               f32 param_5, f32 param_6, int camID, int mode) {
    g_dComIfG_gameInfo.play.setWindow(i, param_1, param_2, param_3, param_4, param_5, param_6,
                                      camID, mode);
}

inline s8 dComIfGp_getLayerOld() {
    return g_dComIfG_gameInfo.play.getLayerOld();
}

inline void dComIfGp_resetOldMulti() {
    g_dComIfG_gameInfo.play.getStage().resetOldMulti();
}

inline void dComIfGp_setOldMulti() {
    g_dComIfG_gameInfo.play.getStage().setOldMulti();
}

inline void dComIfGp_setStartStageLayer(s8 layer) {
    g_dComIfG_gameInfo.play.setStartStageLayer(layer);
}

inline void dComIfGp_drawSimpleModel() {
    g_dComIfG_gameInfo.play.drawSimpleModel();
}

inline dStage_Multi_c* dComIfGp_getMulti() {
    return g_dComIfG_gameInfo.play.getStage().getMulti();
}

inline JKRAramArchive* dComIfGp_getFieldMapArchive2() {
    return g_dComIfG_gameInfo.play.getFieldMapArchive2();
}

inline void dComIfGp_onPauseFlag() {
    g_dComIfG_gameInfo.play.onPauseFlag();
}

inline void dComIfGp_createSimpleModel() {
    g_dComIfG_gameInfo.play.createSimpleModel();
}

inline void dComIfGp_setHitMark(u16 i_hitmark, fopAc_ac_c* param_1, const cXyz* param_2,
                                const csXyz* param_3, const cXyz* param_4, u32 i_atType) {
    g_dComIfG_gameInfo.play.getParticle()->setHitMark(i_hitmark, param_1, param_2, param_3, param_4,
                                                      i_atType);
}

inline s32 dComIfGp_roomControl_getStayNo() {
    return dStage_roomControl_c::getStayNo();
}

inline s32 dComIfGp_roomControl_getZoneNo(int i_roomNo) {
    return dStage_roomControl_c::getZoneNo(i_roomNo);
}

inline void dComIfGp_roomControl_initZone() {
    g_dComIfG_gameInfo.play.getRoomControl()->initZone();
}

inline void dComIfGp_roomControl_init() {
    g_dComIfG_gameInfo.play.getRoomControl()->init();
}

inline dStage_roomStatus_c* dComIfGp_roomControl_getStatusRoomDt(int room_no) {
    return g_dComIfG_gameInfo.play.getRoomControl()->getStatusRoomDt(room_no);
}

inline s32 dComIfGp_roomControl_getTimePass() {
    return g_dComIfG_gameInfo.play.getRoomControl()->GetTimePass();
}

inline void dComIfGp_roomControl_setTimePass(int isPassing) {
    g_dComIfG_gameInfo.play.getRoomControl()->SetTimePass(isPassing);
}

inline int dComIfGp_roomControl_loadRoom(int param_0, u8* param_1, bool param_2) {
    return g_dComIfG_gameInfo.play.getRoomControl()->loadRoom(param_0, param_1, param_2);
}

inline void dComIfGp_roomControl_setStayNo(int stayNo) {
    g_dComIfG_gameInfo.play.getRoomControl()->setStayNo(stayNo);
}

inline void dComIfGp_roomControl_setZoneNo(int roomNo, int zoneNo) {
    g_dComIfG_gameInfo.play.getRoomControl()->setZoneNo(roomNo, zoneNo);
}

inline dKy_tevstr_c* dComIfGp_roomControl_getTevStr(int i_roomNo) {
    return g_dComIfG_gameInfo.play.getRoomControl()->getTevStr(i_roomNo);
}

inline BOOL dComIfGp_roomControl_checkStatusFlag(int i_roomNo, u8 flag) {
    return g_dComIfG_gameInfo.play.getRoomControl()->checkStatusFlag(i_roomNo, flag);
}

inline void dComIfGp_roomControl_offStatusFlag(int i_roomNo, u8 flag) {
    return g_dComIfG_gameInfo.play.getRoomControl()->offStatusFlag(i_roomNo, flag);
}

inline void dComIfGp_roomControl_onStatusFlag(int i_roomNo, u8 flag) {
    return g_dComIfG_gameInfo.play.getRoomControl()->onStatusFlag(i_roomNo, flag);
}

inline void dComIfGp_roomControl_setStatusFlag(int i_roomNo, u8 flag) {
    return g_dComIfG_gameInfo.play.getRoomControl()->setStatusFlag(i_roomNo, flag);
}

inline void dComIfGp_roomControl_zoneCountCheck(int i_roomNo) {
    g_dComIfG_gameInfo.play.mRoomControl.zoneCountCheck(i_roomNo);
}

inline u8 i_dComIfGp_getRStatus() {
    return g_dComIfG_gameInfo.play.getRStatus();
}

inline void i_dComIfGp_setBottleStatus(u8 param_0, u8 param_1) {
    g_dComIfG_gameInfo.play.setBottleStatus(param_0, param_1);
}

inline u8 i_dComIfGp_getDoStatus() {
    return g_dComIfG_gameInfo.play.getDoStatus();
}

inline dEvt_control_c& i_dComIfGp_getEvent() {
    return g_dComIfG_gameInfo.play.getEvent();
}

inline dEvent_manager_c& i_dComIfGp_getEventManager() {
    return g_dComIfG_gameInfo.play.getEvtManager();
}

inline BOOL dComIfGp_event_compulsory(void* param_0, const char* param_1, u16 param_2) {
    return g_dComIfG_gameInfo.play.getEvent().compulsory(param_0, param_1, param_2);
}

inline int dComIfGp_event_moveApproval(void* actor) {
    return g_dComIfG_gameInfo.play.getEvent().moveApproval(actor);
}

inline int dComIfGp_event_order(u16 eventType, u16 priority, u16 flag, u16 param_3, void* param_4,
                                void* param_5, s16 eventID, u8 infoIdx) {
    return g_dComIfG_gameInfo.play.getEvent().order(eventType, priority, flag, param_3, param_4,
                                                    param_5, eventID, infoIdx);
}

inline void dComIfGp_event_setGtItm(int i_itemNo) {
    g_dComIfG_gameInfo.play.getEvent().setGtItm(i_itemNo);
}

inline void i_dComIfGp_event_reset() {
    g_dComIfG_gameInfo.play.getEvent().reset();
}

inline void dComIfGp_evmng_cutEnd(int param_0) {
    dComIfGp_getPEvtManager()->cutEnd(param_0);
}

inline BOOL dComIfGp_evmng_endCheck(const char* event) {
    return g_dComIfG_gameInfo.play.getEvtManager().endCheckOld(event);
}

inline BOOL dComIfGp_evmng_endCheck(s16 eventID) {
    return g_dComIfG_gameInfo.play.getEvtManager().endCheck(eventID);
}

inline void dComIfGp_event_setItemPartnerId(unsigned int id) {
    g_dComIfG_gameInfo.play.getEvent().setPtI_Id(id);
}

inline int dComIfGp_evmng_startDemo(int param_0) {
    return dComIfGp_getPEvtManager()->setStartDemo(param_0);
}

inline void* dComIfGp_event_getTalkPartner() {
    u32 t = g_dComIfG_gameInfo.play.getEvent().mPtT;
    return g_dComIfG_gameInfo.play.getEvent().convPId(t);
}

inline void* dComIfGp_event_getItemPartner() {
    u32 i = g_dComIfG_gameInfo.play.getEvent().mPtI;
    return g_dComIfG_gameInfo.play.getEvent().convPId(i);
}

inline void* dComIfGp_event_getPt1() {
    u32 pt1 = g_dComIfG_gameInfo.play.getEvent().mPt1;
    return g_dComIfG_gameInfo.play.getEvent().convPId(pt1);
}

inline void* dComIfGp_event_getPt2() {
    u32 pt2 = g_dComIfG_gameInfo.play.getEvent().mPt2;
    return g_dComIfG_gameInfo.play.getEvent().convPId(pt2);
}

inline BOOL i_dComIfGp_event_runCheck() {
    return g_dComIfG_gameInfo.play.getEvent().runCheck();
}

inline u16 dComIfGp_event_checkHind(u16 flag) {
    if (!i_dComIfGp_event_runCheck()) {
        return false;
    }
    return g_dComIfG_gameInfo.play.getEvent().checkHind(flag);
}

inline u16 i_dComIfGp_event_chkEventFlag(u16 flag) {
    return g_dComIfG_gameInfo.play.getEvent().chkEventFlag(flag);
}

inline void dComIfGp_event_setCullRate(f32 f) {
    g_dComIfG_gameInfo.play.getEvent().setCullRate(f);
}

inline int i_dComIfGp_evmng_getMyStaffId(const char* pName, fopAc_ac_c* pActor, int param_2) {
    return dComIfGp_getPEvtManager()->getMyStaffId(pName, pActor, param_2);
}

inline int dComIfGp_evmng_getIsAddvance(int param_0) {
    return dComIfGp_getPEvtManager()->getIsAddvance(param_0);
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

inline cXyz* dComIfGp_evmng_getMyXyzP(int index, char* name) {
    return (cXyz*)dComIfGp_getPEvtManager()->getMySubstanceP(index, name, dEvDtData_c::TYPE_VEC);
}

inline int dComIfGp_evmng_getMySubstanceNum(int index, char* name) {
    return dComIfGp_getPEvtManager()->getMySubstanceNum(index, name);
}

inline int dComIfGp_evmng_checkStartDemo() {
    return dComIfGp_getPEvtManager()->checkStartDemo();
}

inline void dComIfGp_evmng_create() {
    g_dComIfG_gameInfo.play.getEvtManager().create();
}

inline void dComIfGp_evmng_remove() {
    g_dComIfG_gameInfo.play.getEvtManager().remove();
}

inline void dComIfGp_particle_createCommon(const void* data) {
    g_dComIfG_gameInfo.play.getParticle()->createCommon(data);
}

inline void dComIfGp_particle_create() {
    g_dComIfG_gameInfo.play.createParticle();
}

inline void dComIfGp_particle_createScene(const void* param_0) {
    g_dComIfG_gameInfo.play.getParticle()->createScene(param_0);
}

inline JKRExpHeap* dComIfGp_particle_getResHeap() {
    return g_dComIfG_gameInfo.play.getParticle()->getResHeap();
}

inline void dComIfGp_particle_readScene(u8 particle_no, mDoDvdThd_toMainRam_c** param_1) {
    g_dComIfG_gameInfo.play.getParticle()->readScene(particle_no, param_1);
}

inline void dComIfGp_particle_calc3D() {
    g_dComIfG_gameInfo.play.getParticle()->calc3D();
}

inline void dComIfGp_particle_calc2D() {
    g_dComIfG_gameInfo.play.getParticle()->calc2D();
}

inline void dComIfGp_particle_cleanup() {
    g_dComIfG_gameInfo.play.getParticle()->cleanup();
}

inline void dComIfGp_particle_removeScene(bool param_0) {
    g_dComIfG_gameInfo.play.getParticle()->removeScene(param_0);
}

inline int dComIfG_getTimerNowTimeMs() {
    return g_dComIfG_gameInfo.play.getTimerNowTimeMs();
}

inline void dComIfG_setTimerNowTimeMs(int time) {
    g_dComIfG_gameInfo.play.setTimerNowTimeMs(time);
}

inline void dComIfGp_clearMesgAnimeTagInfo() {
    g_dComIfG_gameInfo.play.clearNowAnimeID();
}

inline void dComIfGp_clearMesgCameraTagInfo() {
    g_dComIfG_gameInfo.play.clearMesgCamInfoID();
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

inline u32 dComIfGp_particle_set(u32 param_0, u16 param_1, const cXyz* param_2,
                                 const csXyz* param_3, const cXyz* param_4, u8 param_5,
                                 dPa_levelEcallBack* param_6, s8 param_7, const GXColor* param_8,
                                 const GXColor* param_9, const cXyz* param_10) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(
        param_0, param_1, param_2, NULL, param_3, param_4, param_5, param_6, param_7, param_8,
        param_9, param_10, 1.0f);
}

inline u32 dComIfGp_particle_set(u32 param_0, u16 param_1, const cXyz* param_2,
                                 const dKy_tevstr_c* param_3) {
    return dComIfGp_particle_set(param_0, param_1, param_2, param_3, 0, 0, 0xFF, 0, 0xFFFFFFFF, 0,
                                 0, 0);
}

inline JPABaseEmitter* dComIfGp_particle_set(u16 param_1, const cXyz* param_2,
                                             const dKy_tevstr_c* param_3, const csXyz* param_4,
                                             const cXyz* param_5, u8 param_6,
                                             dPa_levelEcallBack* param_7, s8 param_8,
                                             const GXColor* param_9, const GXColor* param_10,
                                             const cXyz* param_11) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(param_1, param_2, param_3, param_4,
                                                            param_5, param_6, param_7, param_8,
                                                            param_9, param_10, param_11, 1.0f);
}

inline JPABaseEmitter* dComIfGp_particle_set(u16 param_1, const cXyz* param_2, const csXyz* param_3,
                                             const cXyz* param_4, u8 param_5,
                                             dPa_levelEcallBack* param_6, s8 param_7,
                                             const GXColor* param_8, const GXColor* param_9,
                                             const cXyz* param_10) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(param_1, param_2, NULL, param_3,
                                                            param_4, param_5, param_6, param_7,
                                                            param_8, param_9, param_10, 1.0f);
}

inline JPABaseEmitter* dComIfGp_particle_set(u16 param_0, const cXyz* param_1, const csXyz* param_2,
                                             const cXyz* param_3) {
    return dComIfGp_particle_set(param_0, param_1, NULL, param_2, param_3, 0xFF, NULL, -1, NULL,
                                 NULL, NULL);
}

inline JPABaseEmitter* dComIfGp_particle_set(u16 param_0, const cXyz* param_1,
                                             const dKy_tevstr_c* param_2, const csXyz* param_3,
                                             const cXyz* param_4) {
    return dComIfGp_particle_set(param_0, param_1, param_2, param_3, param_4, 0xFF, NULL, -1, NULL,
                                 NULL, NULL);
}

inline u32 dComIfGp_particle_set(u32 param_0, u16 param_1, const cXyz* param_2,
                                 const csXyz* param_3, const cXyz* param_4) {
    return dComIfGp_particle_set(param_0, param_1, param_2, param_3, param_4, 0xFF, NULL, -1, NULL,
                                 NULL, NULL);
}

inline u32 dComIfGp_particle_setColor(u32 param_0, u16 param_1, const cXyz* param_2,
                                      const dKy_tevstr_c* param_3, const GXColor* param_4,
                                      const GXColor* param_5, f32 param_6, u8 param_7,
                                      const csXyz* param_8, const cXyz* param_9,
                                      dPa_levelEcallBack* param_10, s8 param_11,
                                      const cXyz* param_12) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(
        param_0, param_1, param_2, param_3, param_8, param_9, param_7, param_10, param_11, param_4,
        param_5, param_12, param_6);
}

inline JPABaseEmitter* dComIfGp_particle_setColor(u16 param_0, const cXyz* param_1,
                                                  const dKy_tevstr_c* param_2,
                                                  const GXColor* param_3, const GXColor* param_4,
                                                  f32 param_5, u8 param_6, const csXyz* param_7,
                                                  const cXyz* param_8, dPa_levelEcallBack* param_9,
                                                  s8 param_10, const cXyz* param_11) {
    return g_dComIfG_gameInfo.play.getParticle()->setNormal(param_0, param_1, param_2, param_7,
                                                            param_8, param_6, param_9, param_10,
                                                            param_3, param_4, param_11, param_5);
}

inline JPABaseEmitter* dComIfGp_particle_setColor(u16 param_0, const cXyz* param_1,
                                                  const dKy_tevstr_c* param_2,
                                                  const GXColor* param_3, const GXColor* param_4,
                                                  f32 param_5, u8 param_6) {
    return dComIfGp_particle_setColor(param_0, param_1, param_2, param_3, param_4, param_5, param_6,
                                      NULL, NULL, NULL, -1, NULL);
}

inline void dComIfGp_particle_levelEmitterOnEventMove(u32 param_0) {
    g_dComIfG_gameInfo.play.getParticle()->forceOnEventMove(param_0);
}

inline JPABaseEmitter* dComIfGp_particle_getEmitter(u32 param_0) {
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

int dComIfGd_setSimpleShadow(cXyz* pos, f32 param_1, f32 param_2, cBgS_PolyInfo& param_3, s16 angle,
                             f32 param_5, _GXTexObj* tex);
stage_camera_class* dComIfGp_getRoomCamera(int i_roomNo);
stage_arrow_class* dComIfGp_getRoomArrow(int i_roomNo);
int dComIfGd_setShadow(u32 param_0, s8 param_1, J3DModel* param_2, cXyz* param_3, f32 param_4,
                       f32 param_5, f32 param_6, f32 param_7, cBgS_PolyInfo& param_8,
                       dKy_tevstr_c* param_9, s16 param_10, f32 param_11, _GXTexObj* param_12);

inline int dComIfGd_setRealShadow(u32 param_0, s8 param_1, J3DModel* param_2, cXyz* param_3,
                                  f32 param_4, f32 param_5, dKy_tevstr_c* param_6) {
    return g_dComIfG_gameInfo.drawlist.setRealShadow(param_0, param_1, param_2, param_3, param_4,
                                                     param_5, param_6);
}

inline int dComIfGd_setSimpleShadow(cXyz* pos, f32 param_1, f32 param_2, cXyz* param_3, s16 angle,
                                    f32 param_5, _GXTexObj* tex) {
    return g_dComIfG_gameInfo.drawlist.setSimpleShadow(pos, param_1, param_2, param_3, angle,
                                                       param_5, tex);
}

inline void dComIfGd_drawListItem3d() {
    g_dComIfG_gameInfo.drawlist.drawOpaListItem3d();
    g_dComIfG_gameInfo.drawlist.drawXluListItem3d();
}

inline void dComIfGd_reset() {
    g_dComIfG_gameInfo.drawlist.reset();
}

inline void dComIfGd_set2DOpa(dDlst_base_c* dlst) {
    g_dComIfG_gameInfo.drawlist.set2DOpa(dlst);
}

inline void dComIfGd_set2DXlu(dDlst_base_c* dlst) {
    g_dComIfG_gameInfo.drawlist.set2DXlu(dlst);
}

inline void dComIfGd_set2DOpaTop(dDlst_base_c* dlst) {
    g_dComIfG_gameInfo.drawlist.set2DOpaTop(dlst);
}

inline view_class* dComIfGd_getView() {
    return g_dComIfG_gameInfo.drawlist.getView();
}

inline MtxP dComIfGd_getViewRotMtx() {
    return ((camera_process_class*)g_dComIfG_gameInfo.drawlist.getView())->mViewMtxNoTrans;
}
inline MtxP dComIfGd_getViewMtx() {
    return ((camera_process_class*)g_dComIfG_gameInfo.drawlist.getView())->mViewMtx;
}

inline J3DDrawBuffer* dComIfGd_getListFilter() {
    return g_dComIfG_gameInfo.drawlist.getOpaListFilter();
}

inline J3DDrawBuffer* dComIfGd_getOpaListIndScreen() {
    return g_dComIfG_gameInfo.drawlist.getOpaListP0();
}

inline J3DDrawBuffer* dComIfGd_getListPacket() {
    return g_dComIfG_gameInfo.drawlist.getOpaListPacket();
}

inline void dComIfGd_setListSky() {
    g_dComIfG_gameInfo.drawlist.setOpaListSky();
    g_dComIfG_gameInfo.drawlist.setXluListSky();
}

inline void dComIfGd_setListDark() {
    g_dComIfG_gameInfo.drawlist.setOpaListDark();
    g_dComIfG_gameInfo.drawlist.setXluListDark();
}

inline void dComIfGd_setList() {
    g_dComIfG_gameInfo.drawlist.setOpaList();
    g_dComIfG_gameInfo.drawlist.setXluList();
}

inline void dComIfGd_setListItem3D() {
    g_dComIfG_gameInfo.drawlist.setOpaListItem3D();
    g_dComIfG_gameInfo.drawlist.setXluListItem3D();
}

inline void dComIfGd_setList3Dlast() {
    g_dComIfG_gameInfo.drawlist.setOpaList3Dlast();
    g_dComIfG_gameInfo.drawlist.setXluList3Dlast();
}

inline void dComIfGd_setXluList2DScreen() {
    g_dComIfG_gameInfo.drawlist.setXluList2DScreen();
}

inline void dComIfGd_setXluListBG() {
    g_dComIfG_gameInfo.drawlist.setXluListBG();
}

inline void dComIfGd_setListBG() {
    g_dComIfG_gameInfo.drawlist.setOpaListBG();
    g_dComIfG_gameInfo.drawlist.setXluListBG();
}

inline void dComIfGd_init() {
    g_dComIfG_gameInfo.drawlist.init();
}

inline void dComIfGd_peekZ(s16 param_0, s16 param_1, u32* param_2) {
    g_dComIfG_gameInfo.drawlist.newPeekZdata(param_0, param_1, param_2);
}

inline void dComIfGd_peekZdata() {
    g_dComIfG_gameInfo.drawlist.peekZdata();
}

inline void dComIfGd_setView(view_class* view) {
    g_dComIfG_gameInfo.drawlist.setView(view);
}

inline void dComIfGd_setWindow(dDlst_window_c* window) {
    g_dComIfG_gameInfo.drawlist.setWindow(window);
}

inline void dComIfGd_setViewport(view_port_class* port) {
    g_dComIfG_gameInfo.drawlist.setViewport(port);
}

inline void dComIfGd_entryZSortListZxlu(J3DPacket* i_packet, cXyz& param_1) {
    g_dComIfG_gameInfo.drawlist.entryZSortListZxlu(i_packet, param_1);
}

inline daPy_py_c* daPy_getLinkPlayerActorClass() {
    return dComIfGp_getLinkPlayer();
}

inline daPy_py_c* daPy_getPlayerActorClass() {
    return (daPy_py_c*)dComIfGp_getPlayer(0);
}

inline daAlink_c* daAlink_getAlinkActorClass() {
    return (daAlink_c*)g_dComIfG_gameInfo.play.getPlayerPtr(LINK_PTR);
}

#endif /* D_COM_D_COM_INF_GAME_H */
