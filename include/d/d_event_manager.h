#ifndef D_EVENT_D_EVENT_MANAGER_H
#define D_EVENT_D_EVENT_MANAGER_H

#include "SSystem/SComponent/c_xyz.h"
#include "d/d_event_data.h"

class fopAc_ac_c;

class dEvent_exception_c {
public:
    dEvent_exception_c() { mEventInfoIdx = -1; }
    void init();
    s32 setStartDemo(int mapToolID);
    const char* getEventName();

    // private:
    /* 0x0 */ s32 mEventInfoIdx;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
    /* 0x8 */ s32 mState;
};

#define EVT_SE_RIDDLE_A 1
#define EVT_SE_RIDDLE_B 2

#ifdef DEBUG
#define EVENT_LIST_NUM 12
#else
#define EVENT_LIST_NUM 11
#endif

class dEvent_manager_c {
public:
    enum Event_Cut_Nums {
        /* 0x1 */ NUM_EVT_CUTS_e = 0x1,
    };

    void* getSubstance(dEvDtData_c* p_data, int type);
    void setDbgData(const char*);
    dEvent_manager_c();
    ~dEvent_manager_c() {}
    int create();
    bool setObjectArchive(char* arcName);
    void demoInit();
    void roomInit(int roomNo);
    void roomFinish(int roomNo);
    int orderStartDemo();
    void remove();
    void startProc(dEvDtEvent_c* p_evnt);
    void closeProc(dEvDtEvent_c* p_evnt);
    void endProc(s16 eventID, int close);
    void Sequencer();
    void Experts();
    dEvDtEvent_c* getEventData(s16 eventCompositId);
    dEvDtEvent_c* getEventData(s16, int);
    s16 getEventIdx(char const* eventName, u8 mapToolID, s32 roomNo);
    s16 getEventIdx(fopAc_ac_c* pActor, u8 mapToolID);
    s16 getEventIdx(fopAc_ac_c* pActor, char const* eventName, u8 mapToolID);
    int isMapToolCamera(u8 mapToolID, s32 roomNo);
    int order(s16 eventCompositId);
    int startCheck(s16 eventCompositId);
    int startCheckOld(char const* name);
    int endCheck(s16);
    int endCheckOld(char const* name);
    int getMyStaffId(char const* staffName, fopAc_ac_c* pActor, int tagId);
    int getIsAddvance(int staffIdx);
    int getMyActIdx(int staffIdx, char const* const* param_1, int param_2, int param_3,
                    int param_4);
    char* getMyNowCutName(int cutIndex);
    dEvDtData_c* getMyDataP(int index, char const* name, int type);
    void* getMySubstanceP(int index, char const* name, int type);
    int getMySubstanceNum(int index, char const* name);
    void cutEnd(int cutIndex);
    int getEventPrio(fopAc_ac_c* pActor, s16 eventCompositId);
    void issueStaff(char const* name);
    void cancelStaff(char const* name);
    void setGoal(cXyz* p_goal);
    cXyz* getGoal();
    const char* getRunEventName();
    fopAc_ac_c* specialCast_Shutter(s16 bsTypeId, int param_1);
    fopAc_ac_c* specialCast(char const* name, int param_1);
    int ChkPresentEnd();
    int checkStartDemo();

    int setStartDemo(int param_0) { return mEventException.setStartDemo(param_0); }
    void setCameraPlay(int status) { mCameraPlay = status; }
    dEvDtBase_c& getBase() { return mEventList[mCurrentEventType]; }
    void setFlag(int flag) { mFlags.flagSet(flag); }
    bool dataLoaded() { return mDataLoaded; }
    int flagCheck(int flag) { return mFlags.flagCheck(flag); }
    int cameraPlay() { return mCameraPlay; }

    event_binary_data_header* getHeader(u8 idx) {return mEventList[idx].getHeaderP(); }
    dEvDtEvent_c* getEventList(u8 idx) { return mEventList[idx].getEventP(); }

    inline static s16 getIndexCompositId(s16 param_0) { return param_0 != -1 ? (s16)(param_0 & 0xff) : (s16)-1; }
    static int getTypeCompositId(s16 param_0) { return param_0 == -1 ? 0 : param_0 >> 8; }

    static s16 makeCompositId(s16 a, int b) { return a | (b << 8); }

private:
    /* 0x0000 */ dEvDtBase_c mEventList[EVENT_LIST_NUM];
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
