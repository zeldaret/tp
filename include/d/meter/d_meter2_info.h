#ifndef D_METER_D_METER2_INFO_H
#define D_METER_D_METER2_INFO_H

#include "JSystem/JUtility/JUTTexture.h"
#include "d/d_resorce.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
//#include "JSystem/JUtility/JUTFont.h"

struct dSv_event_flag_c {
    static u8 saveBitLabels[1644 + 4 /* padding */];
};

struct dMsgObject_c {
    /* 802384C4 */ void setLetterNameID(u16);
};

struct dMsgFlow_c {
    /* 80249F00 */ dMsgFlow_c();
    /* 80249F48 */ ~dMsgFlow_c();
    /* 80249F90 */ void init(fopAc_ac_c*, int, int, fopAc_ac_c**);
    /* 8024A2D8 */ void doFlow(fopAc_ac_c*, fopAc_ac_c**, int);
    /* 8024A538 */ void getMsgNo();
};

class dMeterMap_c {
public:
    /* 8020D900 */ bool isMapOpenCheck();
};

struct J2DPicture {};

struct JMSMesgEntry_c {};

struct J2DTextBox {
    /* 8021C7F4 */ void getFont() const;
};

struct JUTFont {};

struct dMenu_Letter {
    static u8 letter_data[512];
};

struct dItem_data {
    static void* item_resource[1530];
};

struct CPaneMgr {};

class dMeter2_c {};

class dMw_c {};

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
    void setFloatingMessage(u16, s16, bool);
    void setFloatingFlow(u16, s16, bool);
    int isFloatingMessageVisible(void);
    int decFloatingMessageTimer(void);
    void resetFloatingMessage(void);
    void decMsgKeyWaitTimer(void);
    void getString(u32, char*, JMSMesgEntry_c*);  // define JMSMesgEntry
    void getStringKana(u32, char*, JMSMesgEntry_c*);
    void getStringKanji(u32, char*, JMSMesgEntry_c*);
    double getStringLength(J2DTextBox*, char*);  // define J2DTextBox
    dMeter2Info_c* getStringLength(JUTFont*, float, float, char*);
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
    u8& getDirectUseItem() { return mDirectUseItem; }
    dMeterMap_c* getMeterMapClass() { return mMeterMap; }

private:
    /* 0x04 */ u8 unk4[4];
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 unk12;
    /* 0x10 */ void* mMsgResource;
    /* 0x14 */ void* mStageMsgResource;
    /* 0x18 */ void* mMsgUnitResource;
    /* 0x1C */ dMeter2_c* mMeterClass;
    /* 0x20 */ dMeterMap_c* mMeterMap;
    /* 0x24 */ dMw_c* mMenuWindowClass;
    /* 0x28 */ CPaneMgr* mMeterItemPanePtr[4];
    /* 0x38 */ WarpInfo_c mWarpInfo;
    /* 0x54 */ float unk84;
    /* 0x58 */ float unk88;
    /* 0x5C */ float unk92;
    /* 0x60 */ float unk96;
    /* 0x64 */ float unk100;
    /* 0x68 */ float unk104;
    /* 0x6C */ float unk108;
    /* 0x70 */ float m2DWidth;
    /* 0x74 */ float m2DHeight;
    /* 0x78 */ float m2DPosH;
    /* 0x7C */ float m2DPosV;
    /* 0x80 */ float unk128;
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
    /* 0xBD */ u8 mShopTalkFlag;
    /* 0xBE */ u8 unk190;
    /* 0xBF */ u8 mMapStatus;
    /* 0xC0 */ u8 mWarpStatus;
    /* 0xC1 */ u8 mPauseStatus;
    /* 0xC2 */ u8 mGameOverType;
    /* 0xC3 */ u8 mInsectSelectType;
    /* 0xC4 */ u32 unk196;
    /* 0xC8 */ u32 unk200;
    /* 0xCC */ u8 unk204;
    /* 0xCD */ u8 unk205;
    /* 0xCE */ u8 unk206;
    /* 0xCF */ u8 unk207;
    /* 0xD0 */ f64 unk208;
    /* 0xD8 */ u8 unk216;
    /* 0xD9 */ u8 unk217;
    /* 0xDA */ u8 unk218;
    /* 0xDB */ u8 unk219;
    /* 0xDC */ u8 mRentalBombBag;
    /* 0xDD */ u8 mMiniGameItemSetFlag;
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
    /* 0xF1 */ u8 mFloatingMessageWakuVisible;
    /* 0xF2 */ u8 mMapDrugFlag;
    /* 0xF3 */ u8 unk243[5];
};

extern dMeter2Info_c g_meter2_info;

inline dMeterMap_c* dMeter2Info_getMeterMapClass() {
    return g_meter2_info.getMeterMapClass();
}

inline void dMeter2Info_Initialize() {
    g_meter2_info.init();
}

#endif /* D_METER_D_METER2_INFO_H */
