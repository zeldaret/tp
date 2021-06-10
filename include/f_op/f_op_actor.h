#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/mtx/mtx.h"
#include "f_pc/f_pc_leaf.h"

struct JKRSolidHeap;

class dEvt_info_c {
public:
    dEvt_info_c();
    virtual ~dEvt_info_c();
    void setEventName(char*);
    void getEventName();
    void beforeProc();
    void onCondition(u16);
    void offCondition(u16);
    bool checkCommandCatch();
    bool checkCommandDoor();
    bool checkCommandDemoAccrpt();

    void setCommand(u16 command) { mCommand = command; }
    void setMapToolId(u8 id) { mMapToolId = id; }
    void setEventId(s16 id) { mEventId = id; }
    void setCondition(u16 condition) { mCondition = condition; }
    void setArchiveName(char* name) { mArchiveName = name; }
    u8 getMapToolId() { return mMapToolId; }
    s16 getEventId() { return mEventId; }
    u8 getIdx() { return mIndex; }
    char* getArchiveName() { return mArchiveName; }
    bool chkCondition(u16 condition) { return mCondition == condition; }

    bool checkCommandTalk() { return mCommand == 1; }
    bool checkCommandItem() { return mCommand == 4; }

private:
    /*  0x04 */ u16 mCommand;
    /*  0x06 */ u16 mCondition;
    /*  0x08 */ s16 mEventId;
    /*  0x0A */ u8 mMapToolId;

public:
    /*  0x0B */ u8 mIndex;
    /*  0x0C */ char* mArchiveName;
    /*  0x10 */ void* field_0x10;
    /*  0x14 */ void* field_0x14;
};  // Size = 0x18

struct actor_place {
    cXyz mPosition;
    csXyz mAngle;
    u8 mRoomNo;
    u8 field_0x13;
};

class fopAc_ac_c : public leafdraw_class {
public:
    /* 0x0C0 */ int mAcType;
    /* 0x0C4 */ create_tag_class mAcTg;
    /* 0x0D8 */ create_tag_class mDwTg;
    /* 0x0EC */ profile_method_class* mSubMtd;
    /* 0x0F0 */ JKRSolidHeap* mHeap;
    /* 0x0F4 */ dEvt_info_c mEvtInfo;
    /* 0x10C */ u8 unk_0x10c[0x496 - 0x10C];  // dKy_tevstr_c
    /* 0x496 */ u8 unk_0x496;
    /* 0x497 */ u8 unk_0x497;
    /* 0x498 */ u8 mDemoActorId;
    /* 0x499 */ s8 unk_0x499;
    /* 0x49C */ u32 field_0x49c;
    /* 0x4A0 */ u32 field_0x4a0;
    /* 0x4A4 */ u32 field_0x4a4;
    /* 0x4A8 */ actor_place mOrig;
    /* 0x4BC */ actor_place mNext;
    /* 0x4D0 */ actor_place mCurrent;
    /* 0x4E4 */ csXyz mCollisionRot;
    /* 0x4EC */ cXyz mScale;
    /* 0x4F8 */ cXyz mSpeed;
    /* 0x504 */ Mtx* mCullMtx;
    union {
        struct {
            /* 0x508 */ cXyz mMin;
            /* 0x514 */ cXyz mMax;
        } mBox;
        struct {
            /* 0x508 */ cXyz mCenter;
            /* 0x514 */ f32 mRadius;
        } mSphere;
    } mCull;
    /* 0x520 */ u8 unk_0x520[0xC];
    /* 0x52C */ f32 mSpeedF;
    /* 0x530 */ f32 mGravity;
    /* 0x534 */ f32 mMaxFallSpeed;

    /* 80018B64 */ fopAc_ac_c();
    /* 80018C8C */ ~fopAc_ac_c();

    static u8 stopStatus[4];

    const cXyz& getPosition() const { return mCurrent.mPosition; }
    const csXyz& getAngle() const { return mCurrent.mAngle; }
};  // Size: unknown

#endif
