#ifndef F_OP_ACTOR_H_
#define F_OP_ACTOR_H_

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/kankyo/d_kankyo.h"
#include "dolphin/mtx/mtx.h"
#include "f_pc/f_pc_leaf.h"

struct actor_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition mBase;
    /* 0x24 */ leafdraw_method_class* mSubMtd;
    /* 0x28 */ int field_0x28; // mStatus
    /* 0x2C */ u8 field_0x2c;  // mActorType
    /* 0x2D */ u8 field_0x2d;  // mCullType
    /* 0x2E */ u8 field_0x2e[2]; // Likely padding
};

struct JKRSolidHeap;

class dEvt_info_c {
public:
    dEvt_info_c();
    virtual ~dEvt_info_c() {}
    void setEventName(char*);
    char* getEventName();
    void beforeProc();
    void onCondition(u16);
    void offCondition(u16);
    bool checkCommandCatch();
    BOOL checkCommandDoor();
    BOOL checkCommandDemoAccrpt() { return mCommand == 2; }

    void setCommand(u16 command) { mCommand = command; }
    void setMapToolId(u8 id) { mMapToolId = id; }
    void setEventId(s16 id) { mEventId = id; }
    void setCondition(u16 condition) { mCondition = condition; }
    u16 getCondition() { return mCondition; }
    void setArchiveName(char* name) { mArchiveName = name; }
    u8 getMapToolId() { return mMapToolId; }
    s16 getEventId() { return mEventId; }
    s16 getIdx() { return mIndex; }
    char* getArchiveName() { return mArchiveName; }
    BOOL chkCondition(u16 condition) { return (mCondition & condition) == condition; }
    void i_onCondition(u16 cond) { mCondition |= cond; }
    void i_offCondition(u16 cond) { mCondition &= ~cond; }

    bool checkCommandTalk() { return mCommand == 1; }
    bool checkCommandItem() { return mCommand == 4; }
    BOOL i_checkCommandDoor() { return mCommand == 3; }
    bool i_checkCommandDemoAccrpt() { return mCommand == 2; }

    void suspendProc(void* actor) {
        if (field_0x10 != NULL) {
            field_0x14(actor);
        }
    }

    /* 0x04 */ u16 mCommand;
    /* 0x06 */ u16 mCondition;
    /* 0x08 */ s16 mEventId;
    /* 0x0A */ u8 mMapToolId;
    /* 0x0B */ s8 mIndex;
    /* 0x0C */ char* mArchiveName;
    /* 0x10 */ u8 field_0x10;
    /* 0x14 */ void (*field_0x14)(void*);
};  // Size = 0x18

struct actor_place {
    /* 807E2468 */ //void operator=(actor_place const&);

    /* 0x00 */ cXyz pos;
    /* 0x0C */ csXyz angle;
    /* 0x12 */ s8 mRoomNo;
    /* 0x13 */ u8 field_0x13;
};

struct actor_attention_types {
    void setFlag(u32 flags) { mFlags |= flags; }

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ u8 field_0x4[4];
    /* 0x08 */ u8 field_0x8[2];
    /* 0x0A */ u16 field_0xa;
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
    /* 0x494 */ u16 mSetID;
    /* 0x496 */ u8 mGroup;
    /* 0x497 */ u8 mCullType;
    /* 0x498 */ u8 mDemoActorId;
    /* 0x499 */ s8 mSubtype;
    /* 0x49A */ u8 field_0x49a;
    /* 0x49C */ u32 mStatus;
    /* 0x4A0 */ u32 mCondition;
    /* 0x4A4 */ u32 mParentPcId;
    /* 0x4A8 */ actor_place orig;
    /* 0x4BC */ actor_place next;
    /* 0x4D0 */ actor_place current;
    /* 0x4E4 */ csXyz shape_angle;
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
    /* 0x520 */ f32 mCullSizeFar;
    /* 0x524 */ J3DModel* field_0x524;
    /* 0x528 */ dJntCol_c* mJntCol;
    /* 0x52C */ f32 mSpeedF;
    /* 0x530 */ f32 mGravity;
    /* 0x534 */ f32 mMaxFallSpeed;
    /* 0x538 */ cXyz mEyePos;
    /* 0x544 */ actor_attention_types mAttentionInfo;
    /* 0x560 */ s16 field_0x560;
    /* 0x562 */ s16 field_0x562;
    /* 0x564 */ u8 field_0x564[0x4];

    fopAc_ac_c();
    ~fopAc_ac_c();

    static u32 stopStatus;

    const cXyz& getPosition() const { return current.pos; }
    const csXyz& getAngle() const { return current.angle; }
    s8 getRoomNo() const { return current.mRoomNo; }
};  // Size: 0x568

STATIC_ASSERT(sizeof(fopAc_ac_c) == 0x568);

class fopEn_enemy_c : public fopAc_ac_c {
public:
    /* 80019404 */ bool initBallModel();
    /* 800194FC */ int checkBallModelDraw();
    /* 80019520 */ void setBallModelEffect(dKy_tevstr_c*);
    /* 800196A0 */ void drawBallModel(dKy_tevstr_c*);

    bool checkWolfNoLock() const { return mFlags & 0x200; }
    bool checkHeadLockFlg() const { return mFlags & 0x80; }
    bool checkDownFlg() const { return mFlags & 0x1; }
    cXyz& getDownPos() { return mDownPos; }

    /* 0x568 */ cXyz mDownPos;
    /* 0x574 */ cXyz mHeadLockPos;
    /* 0x580 */ J3DModel* mBallModel;
    /* 0x584 */ J3DAnmTextureSRTKey* mBtk;
    /* 0x588 */ J3DAnmTevRegKey* mBrk;
    /* 0x58C */ u8 field_0x58c;
    /* 0x58D */ u8 mThrowMode;
    /* 0x58E */ u16 mFlags;
    /* 0x590 */ f32 field_0x590;
    /* 0x594 */ u32 mEffectID1;
    /* 0x598 */ u32 mEffectID2;
    /* 0x59C */ u32 mMidnaBindID[3];
    /* 0x5A8 */ u8 field_0x5a8;
};  // Size: 0x5AC

s32 fopAc_IsActor(void* actor);

#endif
