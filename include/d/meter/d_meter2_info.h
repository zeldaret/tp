#ifndef D_METER_D_METER2_INFO_H
#define D_METER_D_METER2_INFO_H

#include "JSystem/JUtility/JUTTexture.h"
#include "d/d_resorce.h"
#include "d/menu/d_menu_window.h"
#include "d/meter/d_meter2.h"
#include "d/msg/d_msg_flow.h"
#include "d/pane/d_pane_class.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

struct JMSMesgEntry_c {
    /* 0x00 */ u32 mStringOffset;
    /* 0x04 */ u16 mStringId;
    /* 0x06 */ u16 field_0x04;
    /* 0x08 */ u8 field_0x08;
    /* 0x09 */ u8 field_0x09;
    /* 0x0A */ u8 field_0x0a;
    /* 0x0B */ u8 field_0x0b;
    /* 0x0C */ u8 field_0x0c;
    /* 0x0D */ u8 field_0x0d;
    /* 0x0E */ u8 field_0x0e;
    /* 0x0F */ u8 field_0x0f;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
};  // Size: 0x14

struct dMenu_LetterData {
    u16 mSubject;
    u16 mName;
    u16 mText;
    u16 mEventFlag;
};

struct dMenu_Letter {
    static u16 getLetterSubject(int idx) { return letter_data[idx].mSubject; }
    static u16 getLetterName(int idx) { return letter_data[idx].mName; }
    static u16 getLetterText(int idx) { return letter_data[idx].mText; }
    static u16 getLetterEventFlag(int idx) { return letter_data[idx].mEventFlag; }

    static dMenu_LetterData letter_data[64];
};

struct dItem_data {
    static void* item_resource[1530];
};

class dMw_c;
class dMeter2_c;
class J2DPicture;
class dMeterMap_c;

class dMeter2Info_c {
public:
    class WarpInfo_c {
    public:
        /* 0x00 */ char mStageName[8];
        /* 0x08 */ cXyz mPosition;
        /* 0x14 */ s16 mAngle;
        /* 0x16 */ u8 mRoomNo;
        /* 0x17 */ u8 unk79;
        /* 0x18 */ u8 mWarpPlayerNo;
    };

    dMeter2Info_c();
    virtual ~dMeter2Info_c();
    void init(void);
    int setFloatingMessage(u16, s16, bool);
    void setFloatingFlow(u16, s16, bool);
    int isFloatingMessageVisible(void);
    int decFloatingMessageTimer(void);
    void resetFloatingMessage(void);
    void decMsgKeyWaitTimer(void);
    void getString(u32, char*, JMSMesgEntry_c*);  // define JMSMesgEntry
    void getStringKana(u32, char*, JMSMesgEntry_c*);
    void getStringKanji(u32, char*, JMSMesgEntry_c*);
    double getStringLength(J2DTextBox*, char*);  // define J2DTextBox
    dMeter2Info_c* getStringLength(JUTFont*, f32, f32, char*);
    void onDirectUseItem(int);
    bool isDirectUseItem(int);
    int setMeterString(s32);
    void resetWarpStatus(void);
    void warpInProc(void);
    void warpOutProc(void);
    void resetMeterString(void);
    void setWarpInfo(const char*, const cXyz&, s16, u8, u8, u8);
    u8 getItemType(u8);
    u8 readItemTexture(u8, void*, J2DPicture*, void*, J2DPicture*, void*, J2DPicture*, void*,
                       J2DPicture*, int);  // define J2DPicture
    void setItemColor(u8, J2DPicture*, J2DPicture*, J2DPicture*, J2DPicture*);
    s8 get2ndTexture(u8);
    s8 get3rdTexture(u8);
    s8 get4thTexture(u8);
    void set1stColor(u8, J2DPicture*);
    void set2ndColor(u8, J2DPicture*);
    void set3rdColor(u8, J2DPicture*);
    void set4thColor(u8, J2DPicture*);
    void setHotSpringTimer(u8);
    void decHotSpringTimer(void);
    void changeWater(u8);
    void setMiniGameItem(u8);
    void resetMiniGameItem(bool);
    void setMiniGameCount(s8);
    void setSaveStageName(const char*);

    void setWindowStatus(u8 status) {
        unk186 = mWindowStatus;
        mWindowStatus = status;
    }
    u8& getDirectUseItem() { return mDirectUseItem; }
    dMeterMap_c* getMeterMapClass() { return mMeterMap; }
    void setMenuWindowClass(dMw_c* p_menu) { mMenuWindowClass = p_menu; }
    dMw_c* getMenuWindowClass() { return mMenuWindowClass; }
    void offUseButton(int pButton) { mUseButton &= ~(u16)pButton; }
    u16 getOilGaugeBackUp() { return mOilGaugeBackUp; }
    u8 getWarpStatus() { return mWarpStatus; }
    u8 getWarpRoomNo() { return mWarpInfo.mRoomNo; }
    u8 getWarpPlayerNo() { return mWarpInfo.mWarpPlayerNo; }
    cXyz& getWarpPos() { return mWarpInfo.mPosition; }
    const char* getWarpStageName() { return mWarpInfo.mStageName; }
    void setNowCount(u8 count) { mNowCount = count; }
    void setMaxCount(u8 count) { mMaxCount = count; }
    void allUseButton() { mUseButton = -1; }
    bool isUseButton(int param_0) { return param_0 & mUseButton; }
    void setMeterMapClass(dMeterMap_c* p_map) { mMeterMap = p_map; }
    void resetGameStatus() { mGameStatus = 0; }
    void setMapStatus(u8 status) { mMapStatus = status; }
    u8 getMapStatus() { return mMapStatus; }
    void setPauseStatus(u8 status) { mPauseStatus = status; }
    void resetPauseStatus() { mPauseStatus = 0; }
    u8 getPauseStatus() { return mPauseStatus; }
    bool isGameStatus(int status) { return mGameStatus & status; }
    void setMapKeyDirection(u16 direction) { mMapKeyDirection = direction; }
    bool isSub2DStatus(int flag) { return mSub2DStatus & (1 << flag); }
    void offMenuInForce(int flag) { unk152 &= ~(1 << flag); }
    bool isMenuInForce(int flag) { return unk152 & (1 << flag); }
    u16 getMapKeyDirection() { return mMapKeyDirection; }
    u8 getWindowStatus() { return mWindowStatus; }
    void setMsgResource(void* res) { mMsgResource = res; }
    void setStageMsgResource(void* res) { mStageMsgResource = res; }
    void setMsgUnitResource(void* res) { mMsgUnitResource = res; }
    void* getMsgResource() { return mMsgResource; }
    void* getStageMsgResource() { return mStageMsgResource; }
    void* getMsgUnitResource() { return mMsgUnitResource; }

public:
    /* 0x04 */ u8 unk4[4];
    /* 0x08 */ u64 unk8;
    /* 0x10 */ void* mMsgResource;
    /* 0x14 */ void* mStageMsgResource;
    /* 0x18 */ void* mMsgUnitResource;
    /* 0x1C */ dMeter2_c* mMeterClass;
    /* 0x20 */ dMeterMap_c* mMeterMap;
    /* 0x24 */ dMw_c* mMenuWindowClass;
    /* 0x28 */ CPaneMgr* mMeterItemPanePtr[4];
    /* 0x38 */ WarpInfo_c mWarpInfo;
    /* 0x54 */ f32 unk84;
    /* 0x58 */ f32 unk88;
    /* 0x5C */ f32 unk92;
    /* 0x60 */ f32 unk96;
    /* 0x64 */ f32 unk100;
    /* 0x68 */ f32 unk104;
    /* 0x6C */ f32 unk108;
    /* 0x70 */ f32 m2DWidth;
    /* 0x74 */ f32 m2DHeight;
    /* 0x78 */ f32 m2DPosH;
    /* 0x7C */ f32 m2DPosV;
    /* 0x80 */ f32 unk128;
    /* 0x84 */ u32 mTimeMs;
    /* 0x88 */ u32 mMsgTimeMs;
    /* 0x8C */ u32 mMeterString;
    /* 0x90 */ u32 mTempBits;
    /* 0x94 */ s16 mMsgKeyWaitTimer;
    /* 0x96 */ u16 mHorseLifeCount;
    /* 0x98 */ u16 unk152;
    /* 0x9A */ u16 mHotSpringTimer[4];
    /* 0xA2 */ u16 mSub2DStatus;
    /* 0xA4 */ u16 mFloatingFlowID;
    /* 0xA6 */ u16 mFloatingMessageID;
    /* 0xA8 */ s16 mFloatingMessageTimer;
    /* 0xAA */ u16 mMapKeyDirection;
    /* 0xAC */ u16 mBlinkButton;
    /* 0xAE */ u16 mUseButton;
    /* 0xB0 */ u16 mGameStatus;
    /* 0xB2 */ u16 mTouchKeyCheck;
    /* 0xB4 */ u16 mWindowAccept;
    /* 0xB6 */ u16 mOilGaugeBackUp;
    /* 0xB8 */ u8 mDirectUseItem;
    /* 0xB9 */ u8 mWindowStatus;
    /* 0xBA */ u8 unk186;
    /* 0xBB */ u8 mMaxCount;
    /* 0xBC */ u8 mNowCount;
    /* 0xBD */ bool mShopTalkFlag;
    /* 0xBE */ u8 unk190;
    /* 0xBF */ u8 mMapStatus;
    /* 0xC0 */ u8 mWarpStatus;
    /* 0xC1 */ u8 mPauseStatus;
    /* 0xC2 */ u8 mGameOverType;
    /* 0xC3 */ u8 mInsectSelectType;
    /* 0xC4 */ u8 unk196[4];
    /* 0xC8 */ u8 unk200[4];
    /* 0xCC */ u8 unk204;
    /* 0xCD */ u8 unk205;  // arrow num
    /* 0xCE */ u8 unk206;  // item 1
    /* 0xCF */ u8 unk207;  // item 2
    /* 0xD0 */ u8 unk208[4];
    /* 0xD4 */ u8 unk212[4];
    /* 0xD8 */ u8 unk216;  // bomb num
    /* 0xD9 */ u8 unk217;  // arrow num?
    /* 0xDA */ u8 unk218;  // item 1?
    /* 0xDB */ u8 unk219;  // item 2
    /* 0xDC */ u8 mRentalBombBag;
    /* 0xDD */ u8 mMiniGameItemSetFlag;  // 1: rented in game, 3: rented not in game
    /* 0xDE */ u8 mMiniGameCount;
    /* 0xDF */ u8 mCollectCursorPosX;
    /* 0xE0 */ u8 mCollectCursorPosY;
    /* 0xE1 */ u8 mTableMapRegionNo;
    /* 0xE2 */ u8 mGoldWolfMapType;
    /* 0xE3 */ u8 mLightDropGetFlag[3];
    /* 0xE6 */ u8 mLifeGaugeSE;
    /* 0xE7 */ u8 unk231;
    /* 0xE8 */ u8 mItemExplainWindowStatus;
    /* 0xE9 */ char mSaveStageName[8];
    /* 0xF1 */ bool mFloatingMessageWakuVisible;
    /* 0xF2 */ u8 mMapDrugFlag;
    /* 0xF3 */ u8 unk243[5];
};

extern dMeter2Info_c g_meter2_info;

void dMeter2Info_setSword(u8, bool);
void dMeter2Info_set2DVibration();
void dMeter2Info_set2DVibrationM();

inline void dMeter2Info_Initialize() {
    g_meter2_info.init();
}

inline dMeterMap_c* dMeter2Info_getMeterMapClass() {
    return g_meter2_info.getMeterMapClass();
}

inline dMw_c* dMeter2Info_getMenuWindowClass() {
    return g_meter2_info.getMenuWindowClass();
}

inline void dMeter2Info_setWindowStatus(u8 status) {
    g_meter2_info.setWindowStatus(status);
}

inline void dMeter2Info_getString(u32 param_0, char* param_1, JMSMesgEntry_c* param_2) {
    g_meter2_info.getString(param_0, param_1, param_2);
}

inline void dMeter2Info_setHotSpringTimer(u8 time) {
    g_meter2_info.setHotSpringTimer(time);
}

inline u16 dMeter2Info_getOilGaugeBackUp() {
    return g_meter2_info.getOilGaugeBackUp();
}

inline void dMeter2Info_setSaveStageName(const char* name) {
    g_meter2_info.setSaveStageName(name);
}

inline u8 dMeter2Info_getWarpStatus() {
    return g_meter2_info.getWarpStatus();
}

inline u8 dMeter2Info_getWarpRoomNo() {
    return g_meter2_info.getWarpRoomNo();
}

inline u8 dMeter2Info_getWarpPlayerNo() {
    return g_meter2_info.getWarpPlayerNo();
}

inline cXyz& dMeter2Info_getWarpPos() {
    return g_meter2_info.getWarpPos();
}

inline const char* dMeter2Info_getWarpStageName() {
    return g_meter2_info.getWarpStageName();
}

inline void dMeter2Info_setNowCount(u8 count) {
    g_meter2_info.setNowCount(count);
}

inline void dMeter2Info_setMaxCount(u8 count) {
    g_meter2_info.setMaxCount(count);
}

inline bool dMeter2Info_isDirectUseItem(int param_0) {
    return g_meter2_info.isDirectUseItem(param_0);
}

inline bool dMeter2Info_isUseButton(int param_0) {
    return g_meter2_info.isUseButton(param_0);
}

inline void dMeter2Info_setMeterMapClass(dMeterMap_c* p_map) {
    g_meter2_info.setMeterMapClass(p_map);
}

inline void dMeter2Info_decHotSpringTimer() {
    g_meter2_info.decHotSpringTimer();
}

inline void dMeter2Info_allUseButton() {
    g_meter2_info.allUseButton();
}

inline void dMeter2Info_resetGameStatus() {
    g_meter2_info.resetGameStatus();
}

inline void dMeter2Info_setMapStatus(u8 status) {
    g_meter2_info.setMapStatus(status);
}

inline u8 dMeter2Info_getMapStatus() {
    return g_meter2_info.getMapStatus();
}

inline void dMeter2Info_setPauseStatus(u8 status) {
    g_meter2_info.setPauseStatus(status);
}

inline void dMeter2Info_resetPauseStatus() {
    g_meter2_info.resetPauseStatus();
}

inline u8 dMeter2Info_getPauseStatus() {
    return g_meter2_info.getPauseStatus();
}

inline bool dMeter2Info_isGameStatus(int status) {
    return g_meter2_info.isGameStatus(status);
}

inline void dMeter2Info_setMapKeyDirection(u16 direction) {
    g_meter2_info.setMapKeyDirection(direction);
}

inline bool dMeter2Info_isSub2DStatus(int flag) {
    return g_meter2_info.isSub2DStatus(flag);
}

inline void dMeter2Info_offMenuInForce(int flag) {
    g_meter2_info.offMenuInForce(flag);
}

inline bool dMeter2Info_isMenuInForce(int flag) {
    return g_meter2_info.isMenuInForce(flag);
}

inline void dMeter2Info_setMenuWindowClass(dMw_c* p_menu) {
    g_meter2_info.setMenuWindowClass(p_menu);
}

inline void dMeter2Info_resetWarpStatus() {
    g_meter2_info.resetWarpStatus();
}

inline u16 dMeter2Info_getMapKeyDirection() {
    return g_meter2_info.getMapKeyDirection();
}

inline u8 dMeter2Info_getWindowStatus() {
    return g_meter2_info.getWindowStatus();
}

inline void dMeter2Info_setMsgResource(void* res) {
    g_meter2_info.setMsgResource(res);
}

inline void dMeter2Info_setStageMsgResource(void* res) {
    g_meter2_info.setStageMsgResource(res);
}

inline void dMeter2Info_setMsgUnitResource(void* res) {
    g_meter2_info.setMsgUnitResource(res);
}

inline void* dMeter2Info_getMsgResource() {
    return g_meter2_info.getMsgResource();
}

inline void* dMeter2Info_getStageMsgResource() {
    return g_meter2_info.getStageMsgResource();
}

inline void* dMeter2Info_getMsgUnitResource() {
    return g_meter2_info.getMsgUnitResource();
}

char* dMeter2Info_getNumberTextureName(int pIndex);

#endif /* D_METER_D_METER2_INFO_H */
