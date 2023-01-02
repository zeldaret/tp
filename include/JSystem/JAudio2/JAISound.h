#ifndef JAISOUND_H
#define JAISOUND_H

#include "JSystem/JAudio2/JAIAudience.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JAISoundParams.h"
#include "JSystem/JGeometry.h"
#include "dolphin/types.h"
#include "global.h"

class JAISoundID {
public:
    operator u32() const { return this->mId.mFullId; }
    void operator=(JAISoundID const& other) { mId.mFullId = other.mId.mFullId; };

    JAISoundID(u32 pId) { mId.mFullId = pId; };

    JAISoundID(JAISoundID const& other) { mId = other.mId; };

    JAISoundID() {}

    union {
        u32 mFullId;
        struct {
            u16 mSoundType;
            u16 mShortId;
        } mAdvancedId;  // Debug doesn't have an inline for referencing the short ID so I assume
                        // it's similar to this
    } mId;
};

struct JASTrack {
    /* 80291444 */ void setChannelMgrCount(u32);
    /* 802919F4 */ void assignExtBuffer(u32, JASSoundParams*);
    /* 80291C30 */ void openChild(u32);
    /* 80292918 */ void writePort(u32, u16);
    /* 8029297C */ void readPort(u32);

    inline int getChannelMgrCount() { return channelMgrCount; }

    /* 0x0 */ u8 field_0x0[0x1d0];
    /* 0x1d0 */ int channelMgrCount;
};

struct JAISoundStatus_ {
    /* 802A2220 */ s32 lockWhenPrepared();
    /* 802A2244 */ s32 unlockIfLocked();

    void init() {
        field_0x0.value = 0;
        field_0x1.value = 0;
        *((u16*)&state) = 0;
        user_data = 0;
    }

    bool isAlive();  // used in assert

    inline bool isPlaying() { return state.unk == 5; }

    inline bool isPaused() { return field_0x0.flags.paused; }

    /* 0x0 */ union {
        u8 value;
        struct {
            u8 flag1 : 1;
            u8 paused : 1;
            u8 flag3 : 1;
            u8 flag4 : 1;
            u8 flag5 : 1;
            u8 flag6 : 1;
            u8 flag7 : 1;
            u8 flag8 : 1;
        } flags;
    } field_0x0;
    /* 0x1 */ union {
        u8 value;
        struct {
            u8 flag1 : 1;
            u8 flag2 : 1;
            u8 flag3 : 1;
            u8 flag4 : 1;
            u8 flag5 : 1;
            u8 flag6 : 1;
            u8 flag7 : 1;
            u8 flag8 : 1;
        } flags;
    } field_0x1;
    /* 0x2 */ struct {
        u8 unk;
        struct {
            u8 flag1 : 1;
            u8 flag2 : 1;
            u8 flag3 : 1;
            u8 flag4 : 1;
            u8 flag5 : 1;
            u8 flag6 : 1;
            u8 flag7 : 1;
            u8 flag8 : 1;
        } flags;
    } state;
    /* 0x4 */ u32 user_data;
};  // Size: 0x6

struct JAISoundFader {
    void forceIn() {
        mIntensity = 1.0f;
        mTransition.zero();
    }
    void forceOut() {
        mIntensity = 0.0f;
        mTransition.zero();
    }
    void fadeOut(u32 fadeCount) {
        if (fadeCount != 0) {
            mTransition.set(0.0f, mIntensity, fadeCount);
        } else {
            forceOut();
        }
    }
    bool isOut() {
        if (mTransition.mCount != 0 || mIntensity < 0.01f) {
            return true;
        }
        return false;
    }
    inline void calc() { mIntensity = mTransition.apply(mIntensity); }

    /* 0x00 */ f32 mIntensity;
    /* 0x04 */ JAISoundParamsTransition::TTransition mTransition;
};  // Size: 0x10

template <typename A0>
struct JAISoundStrategyMgr {};
/* JAISoundStrategyMgr<JAISe> */
struct JAISoundStrategyMgr__template0 {};
/* JAISoundStrategyMgr<JAISeq> */
struct JAISoundStrategyMgr__template1 {};
/* JAISoundStrategyMgr<JAIStream> */
struct JAISoundStrategyMgr__template2 {};

class JAISoundActivity {
public:
    void init() { field_0x0 = 0; }

    /* 0x0 */ u8 field_0x0;
};

class JAISoundHandle;
class JAIAudible;
class JAIAudience;
class JAISound {
public:
    /* 802A21A0 */ void releaseHandle();
    /* 802A21BC */ void attachHandle(JAISoundHandle*);
    /* 802A22F8 */ JAISound();
    /* 802A2328 */ void start_JAISound_(JAISoundID, JGeometry::TVec3<f32> const*, JAIAudience*);
    /* 802A244C */ bool acceptsNewAudible() const;
    /* 802A2474 */ void newAudible(JGeometry::TVec3<f32> const&, JGeometry::TVec3<f32> const*, u32,
                                   JAIAudience*);
    /* 802A2598 */ void stop();
    /* 802A24DC */ void stop(u32 fadeout);
    /* 802A25F0 */ void die_JAISound_();
    /* 802A266C */ void increasePrepareCount_JAISound_();
    /* 802A26B8 */ bool calc_JAISound_();
    /* 802A29DC */ void initTrack_JAISound_(JASTrack*);

    virtual void getNumChild() = 0;
    virtual void getChild() = 0;
    virtual void releaseChild() = 0;
    /* 802A25D8 */ virtual bool asSe();
    /* 802A25E0 */ virtual bool asSeq();
    /* 802A25E8 */ virtual bool asStream();
    virtual void getTrack() = 0;
    virtual void getChildTrack() = 0;
    virtual void getTempoMgr() = 0;
    virtual bool JAISound_tryDie_() = 0;

    JAISoundID getID() const;
    u32 getUserData() const { return status_.user_data; }
    bool isHandleAttached() const { return handle_ != NULL; }

    void removeLifeTime_() { status_.field_0x1.flags.flag1 = false; }
    void stop_JAISound_() {
        status_.state.flags.flag5 = 0;
        status_.state.flags.flag1 = 1;
    }
    bool isStopping() {
        bool isStopping = false;
        if (status_.state.flags.flag1) {
            isStopping = status_.state.flags.flag5 ? fader.isOut() : true;
        }
        return isStopping;
    }

    /* 0x04 */ JAISoundHandle* handle_;
    /* 0x08 */ JAIAudible* audible_;
    /* 0x0C */ JAIAudience* audience_;
    /* 0x10 */ u32 lifeTime;
    /* 0x14 */ s32 prepareCount;
    /* 0x18 */ JAISoundID soundID;
    /* 0x1C */ JAISoundStatus_ status_;
    /* 0x24 */ JAISoundFader fader;
    /* 0x34 */ s32 mPriority;
    /* 0x38 */ s32 mCount;
    /* 0x3C */ JAISoundParams params;
};  // Size: 0x98

STATIC_ASSERT(sizeof(JAISound) == 0x98);

#endif /* JAISOUND_H */
