#ifndef D_EVENT_D_EVENT_DATA_H
#define D_EVENT_D_EVENT_DATA_H

#include "d/d_stage.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"

struct event_binary_data_header {};

struct dEvDtData_c {};

struct dEvDtCut_c {
    void startCheck();
};

struct dEvDtStaff_c {
    /* 80043FD8 */ void specialProc_WaitStart(int);
    /* 8004403C */ void specialProc_WaitProc(int);
    /* 80044080 */ void specialProc();
    /* 80044134 */ void init();
    /* 80044170 */ void advanceCut(int);
    /* 80044190 */ void specialProcLight();
    /* 80044324 */ void specialProcMessage();
    /* 80044A58 */ void specialProcSound();
    /* 80044CB8 */ void specialProcCreate();
    /* 80044EE4 */ void specialProcDirector();
    /* 80045878 */ void specialProcPackage();
    /* 80045AFC */ void specialProcTimekeeper();
    /* 80045C34 */ void specialProcEffect();
};

class dEvDtEvent_c {
public:
    void finishCheck();
    void forceFinish();
    void specialStaffProc(dEvDtStaff_c*);

    /* 0x00 */ s32 mEventNum;
};

class dEvDtFlag_c {
public:
    dEvDtFlag_c() {}
    void flagCheck(int);
    void flagSet(int);
    void flagMaxCheck(int);
    void init();

private:
    u32 mFlags[320];
};
#pragma pack(push, 1)
class dEvDtBase_c {
public:
    dEvDtBase_c();
    ~dEvDtBase_c();
    void init();
    void init(char*, int);
    void advanceCut(dEvDtEvent_c*);
    void advanceCutLocal(dEvDtStaff_c*);

    event_binary_data_header* getHeaderP() { return mHeaderP; }
    s32 getEventNum() { return mEventP->mEventNum; }
    s32 roomNo() { return mRoomNo; }

private:
    /* 0x00 */ event_binary_data_header* mHeaderP;
    /* 0x04 */ dEvDtEvent_c* mEventP;
    /* 0x08 */ dEvDtStaff_c* mStaffP;
    /* 0x0C */ dEvDtCut_c* mCutP;
    /* 0x10 */ dEvDtData_c* mDataP;
    /* 0x14 */ float* mFDataP;
    /* 0x18 */ s32* mIDataP;
    /* 0x1C */ char* mSDataP;
    /* 0x20 */ s32 mRoomNo;
}; // Size = 0x24
#pragma pack(pop)

#endif /* D_EVENT_D_EVENT_DATA_H */
