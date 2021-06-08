#ifndef D_EVENT_D_EVENT_MANAGER_H
#define D_EVENT_D_EVENT_MANAGER_H

#include "d/event/d_event_data.h"
#include "dolphin/types.h"

class dEvent_exception_c {
public:
    dEvent_exception_c() {
        mEventInfoIdx = -1;
    }
    void init();
    void setStartDemo(int);
    void getEventName();

private:
    u32 mEventInfoIdx;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u32 mState;
};

class dEvent_manager_c {
public:
    void getSubstance(dEvDtData_c*, int);
    dEvent_manager_c();
    void create();
    void setObjectArchive(char*);
    void demoInit();
    void roomInit(int);
    void roomFinish(int);
    void orderStartDemo();
    void remove();
    void startProc(dEvDtEvent_c*);
    void closeProc(dEvDtEvent_c*);
    void endProc(s16, int);
    void Sequencer();
    void Experts();
    void getEventData(s16);
    dEvDtEvent_c* getEventData(s16, int);
    void getEventIdx(char const*, u8, s32);
    void getEventIdx(fopAc_ac_c*, u8);
    void getEventIdx(fopAc_ac_c*, char const*, u8);
    void isMapToolCamera(u8, s32);
    void order(s16);
    void startCheck(s16);
    void startCheckOld(char const*);
    void endCheck(s16);
    void endCheckOld(char const*);
    void getMyStaffId(char const*, fopAc_ac_c*, int);
    void getIsAddvance(int);
    void getMyActIdx(int, char const* const*, int, int, int);
    void getMyNowCutName(int);
    void getMyDataP(int, char const*, int);
    void getMySubstanceP(int, char const*, int);
    void getMySubstanceNum(int, char const*);
    void cutEnd(int);
    void getEventPrio(fopAc_ac_c*, s16);
    void issueStaff(char const*);
    void cancelStaff(char const*);
    void setGoal(cXyz*);
    void getGoal();
    void getRunEventName();
    void specialCast_Shutter(s16, int);
    void specialCast(char const*, int);
    void ChkPresentEnd();
    void checkStartDemo();

private:
    /* 0x0000 */ dEvDtBase_c mEventList[11];
    /* 0x018C */ s32 mCameraPlay;
    /* 0x0190 */ dEvent_exception_c mEventException;
    /* 0x019C */ cXyz mGoal;
    /* 0x01A8 */ u8 field_0x1a8[2];
    /* 0x01AA */ u16 field_0x1aa;
    /* 0x01AC */ u8 field_0x1ac[4];
    /* 0x01B0 */ u32 field_0x1b0;
    /* 0x01B4 */ u32 field_0x1b4;
    /* 0x01B8 */ u32 field_0x1b8;
    /* 0x01BC */ dEvDtFlag_c mFlags;
    /* 0x06BC */ bool mDataLoaded;
};

#endif /* D_EVENT_D_EVENT_MANAGER_H */
