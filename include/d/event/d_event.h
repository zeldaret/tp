#ifndef D_EVENT_D_EVENT_H
#define D_EVENT_D_EVENT_H

#include "d/a/d_a_itembase.h"
#include "dolphin/types.h"
#include "global.h"

struct dStage_MapEvent_dt_c;
class fopAc_ac_c;

#if DEBUG
class dEvDb_bit_c {
public:
    /* 0x00 */ char* mFlagName;
    /* 0x04 */ char* mFlagDescription;
    /* 0x08 */ char* mFlagAuthor;
    /* 0x0C */ u16 mFlagValue;
    /* 0x10 */ char* mArea; // Area in the game where flag is used
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
};

class dEvDb_reg_c {
public:
    /* 0x00 */ char* mFlagName;
    /* 0x04 */ char* mFlagDescription;
    /* 0x08 */ char* mFlagAuthor;
    /* 0x0C */ u16 mFlagValue;
    /* 0x10 */ char* mArea; // Area in the game where flag is used
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
};

class dEvDb_flag_base_c {
public:
    /* 0x00 */ dEvDb_bit_c* mBitTable;
    /* 0x04 */ dEvDb_reg_c* mRegTable;
    /* 0x08 */ int mBitNum;
    /* 0x0C */ int mRegNum;
    /* 0x10 */ field_0x10;
    /* 0x14 */ field_0x14;
}
#endif

class dEvt_order_c {
public:
    ~dEvt_order_c() {}
    dEvt_order_c();

    /* 0x00 */ u16 mEventType;
    /* 0x02 */ u16 mFlag;
    /* 0x04 */ u16 mHindFlag;
    /* 0x08 */ fopAc_ac_c* mActor1;
    /* 0x0C */ fopAc_ac_c* mActor2;
    /* 0x10 */ s16 mEventId;
    /* 0x12 */ u16 mPriority;
    /* 0x14 */ s8 mNextOrderIdx;
    /* 0x15 */ u8 mEventInfoIdx;
};  // Size = 0x18

STATIC_ASSERT(sizeof(dEvt_order_c) == 0x18);

typedef int (*SkipFunc)(void*, int);

enum EventMode {
    /* 0x0 */ EVT_MODE_NONE,
    /* 0x1 */ EVT_MODE_TALK,
    /* 0x2 */ EVT_MODE_DEMO,
    /* 0x3 */
};

enum EventType {
    /* 0x0 */ EVT_TYPE_TALK,
    /* 0x1 */ EVT_TYPE_DOOR,
    /* 0x2 */ EVT_TYPE_OTHER,
    /* 0x3 */ EVT_TYPE_COMPULSORY,
    /* 0x4 */ EVT_TYPE_POTENTIAL,
    /* 0x5 */ EVT_TYPE_ITEM,
    /* 0x6 */ EVT_TYPE_SHOWITEM_X,
    /* 0x7 */ EVT_TYPE_SHOWITEM_Y,
    /* 0xA */ EVT_TYPE_CATCH = 10,
    /* 0xB */ EVT_TYPE_TREASURE,
};

enum EventStatus {
    /* 0x0 */ STATUS_NONE,
};

class dEvt_control_c {
public:
    dEvt_control_c();
    s32 orderOld(u16 eventType, u16 priority, u16 flag, u16 param_3, void* param_4, void* param_5,
                 void const* param_6);
    s32 order(u16 eventType, u16 priority, u16 flag, u16 param_3, void* param_4, void* param_5,
              s16 eventID, u8 infoIdx);
    void setParam(dEvt_order_c* p_order);
    s32 beforeFlagProc(dEvt_order_c* p_order);
    void afterFlagProc(dEvt_order_c* p_order);
    int commonCheck(dEvt_order_c* p_order, u16 condition, u16 command);
    int talkCheck(dEvt_order_c* p_order);
    int talkXyCheck(dEvt_order_c* p_order);
    int catchCheck(dEvt_order_c* p_order);
    int talkEnd();
    int demoCheck(dEvt_order_c* p_order);
    int demoEnd();
    int potentialCheck(dEvt_order_c* p_order);
    int doorCheck(dEvt_order_c* p_order);
    int itemCheck(dEvt_order_c* p_order);
    int endProc();
    int change();
    int entry();
    void reset(void*);
    void reset();
    void clearSkipSystem();
    char* getSkipEventName();
    void setSkipProc(void*, SkipFunc, int);
    void setSkipZev(void*, char*);
    void onSkipFade();
    void offSkipFade();
    bool skipper();
    int Step();
    int moveApproval(void*);
    BOOL compulsory(void*, char const*, u16);
    void remove();
    dStage_MapEvent_dt_c* getStageEventDt();
    void sceneChange(int exitId);
    u32 getPId(void*);
    fopAc_ac_c* convPId(unsigned int);
    void* getStbDemoData(char* resName);
    static dStage_MapEvent_dt_c* searchMapEventData(u8 mapToolID, s32 roomNo);
    static dStage_MapEvent_dt_c* searchMapEventData(u8 mapToolID);
    s16 runningEventID(s16 eventID);
    void setPt1(void* ptr);
    void setPt2(void* ptr);
    void setPtT(void* ptr);
    void setPtI(void* ptr);
    void setPtI_Id(unsigned int id);
    void setPtD(void* ptr);
    void setGtItm(u8 itemNo);
    BOOL isOrderOK();
    /* 807DFAD8 */ void checkSkipEdge();
    /* 807E2908 */ void startCheckSkipEdge(void*);

    u16 chkFlag2(u16 flag) { return flag & mFlag2; }
    bool runCheck() { return mEventStatus != 0; }
    f32 getCullRate() { return mCullRate; }
    u16 chkEventFlag(u16 flag) { return flag & mEventFlag; }
    void onEventFlag(u16 flag) { mEventFlag |= flag; }
    void offEventFlag(u16 flag) { mEventFlag &= ~flag; }
    u8 getMode() const { return mMode; }
    u16 checkHind(u16 flag) { return flag & mHindFlag; }
    u8 checkCompulsory() { return mCompulsory; }
    u8 getMapToolId() { return mMapToolId; }
    void onFlag2(u16 flag) { mFlag2 |= flag; }
    void offFlag2(u16 flag) { mFlag2 &= ~flag; }
    void setCullRate(f32 f) { mCullRate = f; }
    BOOL chkTalkXY() { return field_0xed == 1 || field_0xed == 2; }

    bool i_isOrderOK() { return mEventStatus == 0 || mEventStatus == 2; }
    fopAc_ac_c* getPt1() { return convPId(mPt1); }
    fopAc_ac_c* getPt2() { return convPId(mPt2); }
    fopAc_ac_c* getPtT() { return convPId(mPtT); }
    bool isChangeOK(void* param_0) { return mChangeOK == param_0; }
    u8 getPreItemNo() { return mPreItemNo; }

public:
    /* 0x000 */ u8 field_0x0[4];
    /* 0x004 */ dEvt_order_c mOrder[8];
    /* 0x0C4 */ u32 mPt1;
    /* 0x0C8 */ u32 mPt2;
    /* 0x0CC */ u32 mPtT;
    /* 0x0D0 */ u32 mPtI;
    /* 0x0D4 */ u32 mPtd;
    /* 0x0D8 */ u16 mEventFlag;
    /* 0x0DA */ u16 mFlag2;
    /* 0x0DC */ u16 mHindFlag;
    /* 0x0DE */ s16 mSpecifiedEvent;  // name maybe wrong
    /* 0x0E0 */ s16 mEventID;
    /* 0x0E2 */ s8 mNum;
    /* 0x0E3 */ s8 mOrderIdx;
    /* 0x0E4 */ u8 mMode;
    /* 0x0E5 */ u8 mEventStatus;
    /* 0x0E6 */ u8 field_0xe6;
    /* 0x0E7 */ u8 field_0xe7;
    /* 0x0E8 */ u8 field_0xe8;
    /* 0x0E9 */ u8 mDebugStb;
    /* 0x0EA */ u8 field_0xea;
    /* 0x0EB */ u8 mMapToolId;
    /* 0x0EC */ u8 field_0xec;
    /* 0x0ED */ u8 field_0xed;
    /* 0x0EE */ u8 mPreItemNo;
    /* 0x0EF */ u8 mGtItm;
    /* 0x0F0 */ f32 mCullRate;
    /* 0x0F4 */ dStage_MapEvent_dt_c* mStageEventDt;
    /* 0x0F8 */ void* mChangeOK;
    /* 0x0FC */ u8 field_0xfc[4];
    /* 0x100 */ SkipFunc mSkipFunc;
    /* 0x104 */ u32 field_0x104;
    /* 0x108 */ int mSkipTimer;
    /* 0x10C */ int field_0x10c;
    /* 0x110 */ int mSkipFade;
    /* 0x114 */ char mSkipEventName[20];
    /* 0x128 */ u8 mCompulsory;
    /* 0x129 */ bool mRoomInfoSet;
    /* 0x12C */ int mRoomNo;
};  // Size = 0x130

int dEv_defaultSkipProc(void* param_0, int param_1);
int dEv_defaultSkipZev(void* param_0, int param_1);
int dEv_defaultSkipStb(void* param_0, int param_1);
int dEv_noFinishSkipProc(void* param_0, int param_1);

#endif /* D_EVENT_D_EVENT_H */
