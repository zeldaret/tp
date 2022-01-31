#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/kankyo/d_kankyo.h"
#include "dolphin/mtx/mtx.h"
#include "f_pc/f_pc_leaf.h"

struct JKRSolidHeap;

class dEvt_info_c {
public:
    dEvt_info_c();
    virtual ~dEvt_info_c();
    void setEventName(char*);
    s16 getEventName();
    void beforeProc();
    void onCondition(u16);
    void offCondition(u16);
    bool checkCommandCatch();
    BOOL checkCommandDoor();
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

    /* 0x04 */ u16 mCommand;
    /* 0x06 */ u16 mCondition;
    /* 0x08 */ s16 mEventId;
    /* 0x0A */ u8 mMapToolId;
    /* 0x0B */ u8 mIndex;
    /* 0x0C */ char* mArchiveName;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ void* field_0x14;
};  // Size = 0x18

struct actor_place {
    /* 807E2468 */ void operator=(actor_place const&);

    cXyz mPosition;
    csXyz mAngle;
    s8 mRoomNo;
};

struct actor_attention_types {
    /* 0x00 */ u32 mDistance1;
    /* 0x04 */ u32 mDistance2;
    /* 0x08 */ u32 mDistance3;
    /* 0x0C */ cXyz mPosition;
    /* 0x18 */ u32 mFlags;
};  // Size = 0x1C

class dJntCol_c;

class fopAc_ac_c : public leafdraw_class {
public:
    /* 0x0C0 */ int mAcType;
    /* 0x0C4 */ create_tag_class mAcTg;
    /* 0x0D8 */ create_tag_class mDwTg;
    /* 0x0EC */ profile_method_class* mSubMtd;
    /* 0x0F0 */ JKRSolidHeap* mHeap;
    /* 0x0F4 */ dEvt_info_c mEvtInfo;
    /* 0x10C */ dKy_tevstr_c mTevStr;
    /* 0x494 */ s16 mSetID;
    /* 0x496 */ u8 mGroup;
    /* 0x497 */ u8 mCullType;
    /* 0x498 */ u8 mDemoActorId;
    /* 0x499 */ s8 mSubtype;
    /* 0x49C */ u32 mStatus;
    /* 0x4A0 */ u32 mCondition;
    /* 0x4A4 */ u32 mParentPcId;
    /* 0x4A8 */ actor_place mOrig;
    /* 0x4BC */ actor_place mNext;
    /* 0x4D0 */ actor_place mCurrent;
    /* 0x4E4 */ csXyz mCollisionRot;
    /* 0x4EC */ cXyz mScale;
    /* 0x4F8 */ cXyz mSpeed;
    /* 0x504 */ MtxP mCullMtx;
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
    /* 0x520 */ float mCullSizeFar;
    /* 0x524 */ void* field_0x524;  // possibly J3DModel*
    /* 0x528 */ dJntCol_c* mJntCol;
    /* 0x52C */ f32 mSpeedF;
    /* 0x530 */ f32 mGravity;
    /* 0x534 */ f32 mMaxFallSpeed;
    /* 0x538 */ cXyz mEyePos;
    /* 0x544 */ actor_attention_types mAttentionInfo;
    /* 0x560 */ u8 field_0x560[0x8];  // not 100% sure on this

    fopAc_ac_c();
    ~fopAc_ac_c();

    static u32 stopStatus;

    const cXyz& getPosition() const { return mCurrent.mPosition; }
    const csXyz& getAngle() const { return mCurrent.mAngle; }
};  // Size: 0x568

#endif
