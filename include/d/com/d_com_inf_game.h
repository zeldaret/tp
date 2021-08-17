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
#include "d/save/d_save.h"
#include "dolphin/types.h"

struct dTimer_c {
    /* 8025D524 */ void deleteCheck();
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

class dComIfG_camera_info_class {
public:
    dComIfG_camera_info_class(void) {}
    /* 80030208 */ ~dComIfG_camera_info_class() {}

private:
    u8 field_0x0[12];
    cXyz field_0xc;
    cXyz field_0x18;
    u8 field_0x24[0x14];
};
STATIC_ASSERT(sizeof(dComIfG_camera_info_class) == 0x38);

class dComIfG_play_c {
public:
    dComIfG_play_c() { this->ct(); }
    void ct(void);
    void init(void);
    void itemInit(void);
    void setItemBombNumCount(u8, s16);
    s16 getItemBombNumCount(u8);
    void clearItemBombNumCount(u8);
    void setNowVibration(u8);
    u32 getNowVibration(void);
    void setStartStage(dStage_startStage_c*);
    int getLayerNo_common_common(char const*, int, int);
    int getLayerNo_common(char const*, int, int);
    int getLayerNo(int);
    void createParticle(void);
    u32 createSimpleModel(void);
    void deleteSimpleModel(void);
    void drawSimpleModel(void);
    u32 addSimpleModel(J3DModelData*, int, u8);
    u32 removeSimpleModel(J3DModelData*, int);
    u32 entrySimpleModel(J3DModel*, int);
    void setTimerNowTimeMs(int);
    int getTimerNowTimeMs(void);
    void setTimerLimitTimeMs(int);
    int getTimerLimitTimeMs(void);
    void setTimerMode(int);
    int getTimerMode(void);
    void setTimerType(u8);
    u8 getTimerType(void);
    void setTimerPtr(dTimer_c*);
    dTimer_c* getTimerPtr(void);
    void setWarpItemData(const char*, cXyz, s16, s8, u8, u8);
    void setSelectItem(int, u8);
    void setSelectItemTest(int, u8);
    ~dComIfG_play_c() {}

    // inlines
    bool& isPauseFlag() { return mPauseFlag; }
    void* getMsgObjectClass() { return mMsgObjectClass; }
    dStage_roomControl_c* getRoomControl() { return &mRoomControl; }
    dEvt_control_c getEvent() { return mEvent; }
    daHorse_c* getHorseActor() { return mHorseActor; }
    u8& getItemLifeCountType() { return mItemLifeCountType; }
    void setItem(u8 slot, u8 i_no) {
        mItemSlot = slot;
        mItemID = i_no;
    }

    void setUnkWarashibe1(u8 num) { mItemSlot = num; }
    void setUnkWarashibe2(u8 num) { mItemID = num; }

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
    void setBottleStatus(u8 status, u8 flag) {
        mBottleStatus = status;
        mBottleSetFlag = flag;
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
    void setMaxOxygen(int max) { mMaxOxygen = max; }
    u8 getDoStatus(void) { return mDoStatus; }
    u8 getRStatus(void) { return mRStatus; }
    inline char* getStartStageName() { return mStartStage.getName(); }

public:
    /* 0x00000 */ dBgS mDBgS;
    /* 0x01404 */ dCcS mDCcS;
    /* 0x03EC8 */ dStage_startStage_c mStartStage;
    /* 0x03ED5 */ u8 field_0x3ed5;  // probably padding
    /* 0x03ED6 */ dStage_nextStage_c mNextStage;
    /* 0x03EE7 */ u8 field_0x3ee7;  // probably padding
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
    /* 0x04E04 */ void* mParticle;
    /* 0x04E08 */ void* mSimpleModel;
    /* 0x04E0C */ u8 mWindowNum;
    /* 0x04E0D */ u8 mLayerOld;
    /* 0x04E0E */ u16 mStatus;
    /* 0x04E10 */ dDlst_window_c mWindow[1];
    /* 0x04E3C */ dComIfG_camera_info_class mCameraInfo[1];
    /* 0x04E74 */ daAlink_c* mPlayer;
    /* 0x04E78 */ s8 mPlayerCameraID[4];
    /* 0x04E7C */ daAlink_c* mPlayerPtr;
    /* 0x04E80 */ daHorse_c* mHorseActor;
    /* 0x04E84 */ void* mMsgObjectClass;
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
    /* 0x04F26 */ u8 field_0x4fbe;  // related to XStatus
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
    /* 0x04FA8 */ u8 field_0x4fa8[2];
    /* 0x04FAA */ u8 field_0x4faa;  // related to setWarpItemData
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
    /* 0x04FE0 */ int mPlayerStatus;
    /* 0x04FE4 */ u8 field_0x4fe4[0x14];
    /* 0x04FF8 */ __d_timer_info_c mTimerInfo;
    /* 0x0500C */ dDlst_window_c* mCurrentWindow;
    /* 0x05010 */ void* mCurrentView;
    /* 0x05014 */ void* mCurrentViewport;
    /* 0x05018 */ void* mCurrentGrafPort;
    /* 0x0501C */ void* mItemTable;
    /* 0x0501D */ u8 field_0x501d[4];
    /* 0x05024 */ char mLastPlayStageName[8];
};

class dRes_control_c {
public:
    dRes_control_c() {}
    /* 8003BFB0 */ ~dRes_control_c();
    /* 8003C078 */ void setRes(char const*, dRes_info_c*, int, char const*, u8, JKRHeap*);
    /* 8003C160 */ void syncRes(char const*, dRes_info_c*, int);
    /* 8003C194 */ void deleteRes(char const*, dRes_info_c*, int);
    /* 8003C37C */ void getRes(char const*, char const*, dRes_info_c*, int);

private:
    /* 0x0000 */ dRes_info_c mResInfos1[0x80];
    /* 0x1200 */ dRes_info_c mResInfos2[0x40];
};  // Size: 0x1B00

#pragma pack(push, 1)
class dComIfG_inf_c {
public:
    dComIfG_inf_c(void) { this->ct(); }
    ~dComIfG_inf_c() {}
    void ct(void);

    // temp for setWarashibeItem
    void setPlayUnkWarashibe1(u8 num) { play.setUnkWarashibe1(num); }
    void setPlayUnkWarashibe2(u8 num) { play.setUnkWarashibe2(num); }
    void setWorldDark(u8 state) { mWorldDark = state; }
    u8 setWorldDark() { return mWorldDark; }

    dSv_player_c& getPlayer() { return info.getPlayer(); }
    dSv_save_c& getSaveFile() { return info.getSavedata(); }
    u32 getNowVibration() { return play.getNowVibration(); }
    dDlst_peekZ_c& getdlstPeekZ() { return draw_list_list.dlstPeekZ; }
    dComIfG_play_c& getPlay() { return play; }
    dSv_memory_c& getMemory() { return info.getMemory(); }
    dSv_event_c& getEvent() { return info.getTmp(); }
    dSv_info_c& getInfo() { return info; }
    inline dDlst_list_c& getDrawlist() { return draw_list_list; }

private:
    /* 0x00000 */ dSv_info_c info;
    /* 0x00F38 */ dComIfG_play_c play;
    /* 0x05F64 */ dDlst_list_c draw_list_list;
    /* 0x1C110 */ u8 field_0x1C114[0x1E8 - 0xA];
    /* 0x1C2F8 */ dRes_control_c mResControl;
    /* 0x1DDF8 */ u8 field_0x1ddf8;
    /* 0x1DDF9 */ u8 mWorldDark;
    /* 0x1DDFA */ u8 field_0x1ddfa;
    /* 0x1DDFB */ u8 field_0x1ddfb;
    /* 0x1DDFC */ u8 field_0x1ddfc;
    /* 0x1DE00 */ u32 field_0x1de00;
    /* 0x1DE04 */ u32 field_0x1de04;
    /* 0x1DE08 */ u8 field_0x1de08;
    /* 0x1DE09 */ u8 field_0x1de09;
    /* 0x1DE0A */ u8 field_0x1de0a;
    u8 _pad[8];

    static __d_timer_info_c dComIfG_mTimerInfo;
};
#pragma pack(pop)

STATIC_ASSERT(122384 == sizeof(dComIfG_inf_c));

extern dComIfG_inf_c g_dComIfG_gameInfo;

/* void dComIfGp_setItemLifeCount(float, u8);
void dComIfGp_setItemRupeeCount(long);
int dComIfGs_isItemFirstBit(u8);

inline void dComIfGp_setRStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.getPlay().setRStatus(status, flag);
}
inline void dComIfGp_setDoStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.getPlay().setDoStatus(status, flag);
}
inline void dComIfGp_setAStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.getPlay().setAStatus(status, flag);
}
inline void dComIfGp_setZStatus(u8 status, u8 flag) {
    g_dComIfG_gameInfo.getPlay().setZStatus(status, flag);
}
inline void dComIfGp_setItemMagicCount(s16 amount) {
    g_dComIfG_gameInfo.getPlay().setItemMagicCount(amount);
}
inline void dComIfGp_setItemMaxMagicCount(s16 max) {
    g_dComIfG_gameInfo.getPlay().setItemMaxMagicCount(max);
}
inline void dComIfGp_setItemArrowNumCount(s16 amount) {
    g_dComIfG_gameInfo.getPlay().setItemArrowNumCount(amount);
}
inline void dComIfGp_setItemPachinkoNumCount(s16 amount) {
    g_dComIfG_gameInfo.getPlay().setItemPachinkoNumCount(amount);
}
inline void dComIfGp_setItemKeyNumCount(s16 amount) {
    g_dComIfG_gameInfo.getPlay().setItemKeyNumCount(amount);
}
inline void dComIfGp_setItemMaxLifeCount(s16 max) {
    g_dComIfG_gameInfo.getPlay().setItemMaxLifeCount(max);
}
inline void dComIfGs_onDungeonItemMap(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemMap();
}
inline void dComIfGs_onDungeonItemCompass(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemCompass();
}
inline void dComIfGs_onDungeonItemWarp(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemWarp();
}
inline void dComIfGs_setItem(int slot, u8 i_no) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setItem(slot, i_no);
}
inline void dComIfGs_setOxygen(int amount) {
    g_dComIfG_gameInfo.getPlay().setOxygen(amount);
}
inline void dComIfGs_setMaxOxygen(int max) {
    g_dComIfG_gameInfo.getPlay().setMaxOxygen(max);
}
inline void dComIfGs_setOil(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setOil(amount);
}
inline void dComIfGs_setMaxOil(u16 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxOil(max);
}
inline void dComIfGs_setWalletSize(u8 size) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setWalletSize(size);
}
inline void dComIfGs_setMagic(u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMagic(amount);
}
inline void dComIfGs_setMaxMagic(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxMagic(max);
}
inline void dComIfGs_setRupee(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setRupee(amount);
}
inline void dComIfGs_setLife(u16 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setLife(amount);
}
inline void dComIfGs_setMaxLife(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().setMaxLife(max);
}
inline void dComIfGs_onDungeonItemBossKey(void) {
    g_dComIfG_gameInfo.getMemory().getTempFlags().onDungeonItemBossKey();
}
inline void dComIfGs_setCollectSword(u8 sword_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(SWORD_BITFIELD, sword_id);
}
inline void dComIfGs_setCollectShield(u8 shield_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(SHIELD_BITFIELD, shield_id);
}
inline void dComIfGs_setCollectClothes(u8 clothes_id) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().setCollect(CLOTHING_BITFIELD, clothes_id);
}
inline void dComIfGs_setRodTypeLevelUp(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setRodTypeLevelUp();
}
inline void dComIfGs_setArrowNum(u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItemRecord().setArrowNum(amount);
}
inline void dComIfGs_setArrowMax(u8 max) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItemMax().setArrowNum(max);
}
inline u8 dComIfGs_getPachinkoMax(void) {
    return 50;
}
inline void dComIfGs_setEmptyBombBag(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBag();
}
inline void dComIfGs_setEmptyBombBag(u8 type, u8 amount) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBag(type, amount);
}
inline void dComIfGs_setEmptyBombBagItemIn(u8 type, bool unk) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBombBagItemIn(type, unk);
}
inline void dComIfGs_setEmptyBottle(void) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottle();
}
inline void dComIfGs_setEmptyBottle(u8 type) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottle(type);
}
inline void dComIfGs_setEmptyBottleItemIn(u8 type) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerItem().setEmptyBottleItemIn(type);
}
inline void dComIfGs_onEventBit(u16 id) {
    g_dComIfG_gameInfo.getSaveFile().getEventFlags().onEventBit(id);
}
inline void dComIfGs_onLightDropFlag(u8 area_id) {
    g_dComIfG_gameInfo.getSaveFile().getLightDrop().onLightDropGetFlag(area_id);
}
inline void dComIfGs_onSwitch(int param1, int param2) {
    g_dComIfG_gameInfo.getInfo().onSwitch(param1, param2);
}
inline bool dComIfGs_isDungeonItemMap(void) {
    return g_dComIfG_gameInfo.getMemory().getTempFlags().isDungeonItemMap();
}
inline bool dComIfGs_isDungeonItemBossKey(void) {
    return g_dComIfG_gameInfo.getMemory().getTempFlags().isDungeonItemBossKey();
}
inline u8 dComIfGs_getItem(int slot, bool unk) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerItem().getItem(slot, unk);
}
inline BOOL dComIfGs_isCollectSword(u8 sword_id) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().isCollect(SWORD_BITFIELD, sword_id);
}
inline BOOL dComIfGs_isCollectClothing(u8 clothing_id) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerCollect().isCollect(CLOTHING_BITFIELD,
                                                                         clothing_id);
}
inline u8 dComIfGs_checkBottle(u8 type) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerItem().checkBottle(type);
}
inline BOOL dComIfGs_isLightDropGetFlag(u8 area_id) {
    return g_dComIfG_gameInfo.getSaveFile().getLightDrop().isLightDropGetFlag(area_id);
}
inline u8 dComIfGs_getArrowMax(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayer().getPlayerItemMax().getArrowNum();
}
inline u8 dComIfGs_getCollectSmell(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayer().getPlayerStatusA().getSelectEquip(3);
}
inline u8 dComIfGs_getPohSpiritNum(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayer().getPlayerCollect().getPohNum();
}
inline u8 dComIfGs_getKeyNum(void) {
    return g_dComIfG_gameInfo.getMemory().getTempFlags().getKeyNum();
}
inline void dComIfGs_onItemFirstBit(u8 i_no) {
    g_dComIfG_gameInfo.getSaveFile().getPlayerGetItem().onFirstBit(i_no);
}
inline u16 dComIfGs_getMaxLife(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getMaxLife();
}
inline void dComIfGs_offEventBit(u16 event) {
    g_dComIfG_gameInfo.getSaveFile().getEventFlags().offEventBit(event);
}
// inline int dComIfGs_isEventBit__FUs(u16 event) {
//     return g_dComIfG_gameInfo.getSaveFile().getEventFlags().isEventBit(event);
// }
inline const char* dComIfGs_getLastWarpMarkStageName(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().getName();
}
inline cXyz dComIfGs_getLastWarpMarkPlayerPos(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().getPos();
}
inline s16 dComIfGs_getLastWarpMarkPlayerAngleY(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().getAngleY();
}
inline s8 dComIfGs_getLastWarpMarkRoomNo(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().getRoomNo();
}
inline char dComIfGs_getLastWarpAcceptStage(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerLastMarkInfo().getWarpAcceptStage();
}
inline u8 dComIfGs_getSelectEquipClothes(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getSelectEquip(CLOTHING_BITFIELD);
}
inline u8 dComIfGs_getSelectEquipSword(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getSelectEquip(SWORD_BITFIELD);
}
inline u8 dComIfGs_getSelectEquipShield(void) {
    return g_dComIfG_gameInfo.getSaveFile().getPlayerStatusA().getSelectEquip(SHIELD_BITFIELD);
}
inline u8 dComIfGs_getLightDropNum(u8 area_id) {
    return g_dComIfG_gameInfo.getSaveFile().getLightDrop().getLightDropNum(area_id);
}
inline u8 dComIfGs_getSelectItemIndex(int idx) {
    return g_dComIfG_gameInfo.getPlayer().getPlayerStatusA().getSelectItemIndex(idx);
}
inline void dComIfGp_setItem(u8 slot, u8 i_no) {
    g_dComIfG_gameInfo.getPlay().setItem(slot, i_no);
}
inline u32 dComIfGp_getNowVibration(void) {
    return g_dComIfG_gameInfo.getPlay().getNowVibration();
}
inline char* dComIfGp_getStartStageName(void) {
    return g_dComIfG_gameInfo.getPlay().getStartStageName();
}
inline void dComIfGd_reset(void) {
    g_dComIfG_gameInfo.getDrawlist().reset();
} */

#endif /* D_COM_D_COM_INF_GAME_H */
