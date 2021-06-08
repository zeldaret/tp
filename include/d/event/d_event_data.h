#ifndef D_EVENT_D_EVENT_DATA_H
#define D_EVENT_D_EVENT_DATA_H

#include "d/d_stage.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"

struct event_binary_data_header {};

struct dEvDtData_c {};

class dEvDtCut_c {
public:
    void startCheck();

private:
    /* 0x00 */ u8 field_0x0[0x20];
    /* 0x20 */ u32 mTagID;
    /* 0x28 */ int field_0x28[3];
    /* 0x34 */ u32 mFlagId;
    /* 0x38 */ u32 mDataTop;
    /* 0x3C */ u32 mNext;
};

class dEvDtStaff_c {
public:
    void specialProc_WaitStart(int);
    void specialProc_WaitProc(int);
    void specialProc();
    void init();
    void advanceCut(int);
    void specialProcLight();
    void specialProcMessage();
    void specialProcSound();
    void specialProcCreate();
    void specialProcDirector();
    void specialProcPackage();
    void specialProcTimekeeper();
    void specialProcEffect();

private:
    /* 0x00 */ u8 field_0x00[4];
    /* 0x04 */ void* field_0x04;
    /* 0x08 */ u32 field_0x08;
    /* 0x0C */ int field_0x0c;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u8 field_0x14[0xC];
    /* 0x20 */ u32 mTagID;
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ u8 field_0x28[4];
    /* 0x2C */ int mType;
    /* 0x30 */ u32 mStartCut;
    /* 0x34 */ u8 field_0x34[2];
    /* 0x36 */ s16 field_0x36;
    /* 0x38 */ int mCurrentCut;
    /* 0x3C */ u32 field_0x3c;
    /* 0x40 */ u8 field_0x40;
    /* 0x41 */ u8 field_0x41;
    /* 0x42 */ s16 field_0x42;
    /* 0x44 */ s16 mSoundWait;
    /* 0x46 */ u8 field_0x46[4];
    /* 0x4A */ int field_0x4a;
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
    bool flagMaxCheck(int);
    void init();

#define FlagMax 0x2800

private:
    u32 mFlags[320];
}; // Size = 0x500

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
