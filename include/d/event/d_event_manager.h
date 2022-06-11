#ifndef D_EVENT_D_EVENT_MANAGER_H
#define D_EVENT_D_EVENT_MANAGER_H

#include "d/event/d_event_data.h"
#include "dolphin/types.h"

class dEvent_exception_c {
public:
    dEvent_exception_c() { mEventInfoIdx = -1; }
    void init();
    s32 setStartDemo(int);
    const char* getEventName();

    // private:
    s32 mEventInfoIdx;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    s32 mState;
};

class dEvent_manager_c {
public:
    void* getSubstance(dEvDtData_c*, int);
    dEvent_manager_c();
    ~dEvent_manager_c() {}
    int create();
    bool setObjectArchive(char*);
    void demoInit();
    void roomInit(int);
    void roomFinish(int);
    int orderStartDemo();
    void remove();
    void startProc(dEvDtEvent_c*);
    void closeProc(dEvDtEvent_c*);
    void endProc(s16, int);
    void Sequencer();
    void Experts();
    dEvDtEvent_c* getEventData(s16);
    dEvDtEvent_c* getEventData(s16, int);
    s16 getEventIdx(char const*, u8, s32);
    s16 getEventIdx(fopAc_ac_c*, u8);
    s16 getEventIdx(fopAc_ac_c*, char const*, u8);
    int isMapToolCamera(u8, s32);
    int order(s16);
    int startCheck(s16);
    int startCheckOld(char const*);
    int endCheck(s16);
    int endCheckOld(char const*);
    s32 getMyStaffId(char const*, fopAc_ac_c*, int);
    int getIsAddvance(int);
    int getMyActIdx(int, char const* const*, int, int, int);
    char* getMyNowCutName(int);
    dEvDtData_c* getMyDataP(int, char const*, int);
    void* getMySubstanceP(int, char const*, int);
    int getMySubstanceNum(int, char const*);
    void cutEnd(int);
    int getEventPrio(fopAc_ac_c*, s16);
    void issueStaff(char const*);
    void cancelStaff(char const*);
    void setGoal(cXyz*);
    cXyz* getGoal();
    const char* getRunEventName();
    fopAc_ac_c* specialCast_Shutter(s16, int);
    fopAc_ac_c* specialCast(char const*, int);
    int ChkPresentEnd();
    int checkStartDemo();

    int setStartDemo(int param_0) { return mEventException.setStartDemo(param_0); }
    void setCameraPlay(int status) { mCameraPlay = status; }
    dEvDtBase_c& getBase() { return mEventList[mCurrentEventType]; }
    void setFlag(int flag) { mFlags.flagSet(flag); }
    bool dataLoaded() { return mDataLoaded; } 

    static int getIndexCompositId(s16 param_0) { return param_0 != -1 ? (u8)param_0 : -1; }
    static int getTypeCompositId(s16 param_0) { return param_0 == -1 ? 0 : param_0 >> 8; }

    static s16 makeCompositId(s16 a, int b) { return a | (b << 8); }

private:
    /* 0x0000 */ dEvDtBase_c mEventList[11];
    /* 0x018C */ s32 mCameraPlay;
    /* 0x0190 */ dEvent_exception_c mEventException;
    /* 0x019C */ cXyz mGoal;
    /* 0x01A8 */ u8 field_0x1a8[2];
    /* 0x01AA */ s16 mCurrentEventCompositId;
    /* 0x01AC */ u8 field_0x1ac[4];
    /* 0x01B0 */ int mRoomNo;
    /* 0x01B4 */ u32 mCurrentEventType;
    /* 0x01B8 */ s32 field_0x1b8;
    /* 0x01BC */ dEvDtFlag_c mFlags;
    /* 0x06BC */ bool mDataLoaded;
};

#endif /* D_EVENT_D_EVENT_MANAGER_H */
