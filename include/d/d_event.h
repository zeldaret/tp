#ifndef D_EVENT_D_EVENT_H
#define D_EVENT_D_EVENT_H

#include "d/actor/d_a_itembase.h"

int dEv_noFinishSkipProc(void*, int);

struct dStage_MapEvent_dt_c;
class fopAc_ac_c;

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
    fopAc_ac_c* convPId(fpc_ProcID);
    void* getStbDemoData(char* resName);
    static dStage_MapEvent_dt_c* searchMapEventData(u8 mapToolID, s32 roomNo);
    static dStage_MapEvent_dt_c* searchMapEventData(u8 mapToolID);
    s16 runningEventID(s16 eventID);
    void setPt1(void* ptr);
    void setPt2(void* ptr);
    void setPtT(void* ptr);
    void setPtI(void* ptr);
    void setPtI_Id(fpc_ProcID id);
    void setPtD(void* ptr);
    void setGtItm(u8 itemNo);

    u16 chkFlag2(u16 flag) { return flag & mFlag2; }
    BOOL runCheck() {
#if DEBUG
        return mEventStatus != 0 || mDebugStb != 0;
#else
        return mEventStatus != 0;
#endif
    }
    f32 getCullRate() { return mCullRate; }
    u16 chkEventFlag(u16 flag) { return flag & mEventFlag; }
    void onEventFlag(u16 flag) { mEventFlag |= flag; }
    void offEventFlag(u16 flag) { mEventFlag &= ~flag; }
    u8 getMode() const { return mMode; }
    void onHindFlag(u16 flag) { mHindFlag |= flag; }
    void offHindFlag(u16 flag) { mHindFlag &= ~flag; }
    u16 checkHind(u16 flag) { return flag & mHindFlag; }
    u8 checkCompulsory() { return mCompulsory; }
    u8 getMapToolId() { return mMapToolId; }
    void onFlag2(u16 flag) { mFlag2 |= flag; }
    void offFlag2(u16 flag) { mFlag2 &= ~flag; }
    void setCullRate(f32 f) { mCullRate = f; }
    BOOL chkTalkXY() { return field_0xed == 1 || field_0xed == 2; }

    BOOL isOrderOK() { return mEventStatus == 0 || mEventStatus == 2; }
    fopAc_ac_c* getPt1() { return convPId(mPt1); }
    fopAc_ac_c* getPt2() { return convPId(mPt2); }
    fopAc_ac_c* getPtT() { return convPId(mPtT); }
    fopAc_ac_c* getPtI() { return convPId(mPtI); }
    fopAc_ac_c* getPtD() { return convPId(mPtd); }
    bool isChangeOK(void* param_0) { return mChangeOK == param_0; }
    u8 getPreItemNo() { return mPreItemNo; }
    u8 getGtItm() { return mGtItm; }
    void startCheckSkipEdge(void* param_0) { setSkipProc(param_0, dEv_noFinishSkipProc, 0); }
    bool checkSkipEdge() { return chkFlag2(8) != false; }
    void setDebugStb(u8 stb) { mDebugStb = stb; }

public:
    /* 0x000 */ u8 field_0x0[4];
    /* 0x004 */ dEvt_order_c mOrder[8];
    /* 0x0C4 */ fpc_ProcID mPt1;
    /* 0x0C8 */ fpc_ProcID mPt2;
    /* 0x0CC */ fpc_ProcID mPtT;
    /* 0x0D0 */ fpc_ProcID mPtI;
    /* 0x0D4 */ fpc_ProcID mPtd;
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
#if PLATFORM_WII || PLATFORM_SHIELD
    /* 0x130 */ u8 field_0x130;
#endif
};  // Size = 0x130

int dEv_defaultSkipProc(void* param_0, int param_1);
int dEv_defaultSkipZev(void* param_0, int param_1);
int dEv_defaultSkipStb(void* param_0, int param_1);
int dEv_noFinishSkipProc(void* param_0, int param_1);

#endif /* D_EVENT_D_EVENT_H */
