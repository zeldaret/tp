#ifndef JAISOUND_H
#define JAISOUND_H

#include "JSystem/JAudio2/JAISoundParams.h"
#include "JSystem/JAudio2/JAIAudible.h"
#include "global.h"

class JAISoundID {
public:
    operator u32() const { return this->mId.mFullId; }

    JAISoundID(u32 pId) { mId.mFullId = pId; };

    JAISoundID(JAISoundID const& other) { mId = other.mId; };

    JAISoundID() {}

    bool isAnonymous() { return mId.mFullId == 0xffffffff; }
    void setAnonymous() { mId.mFullId = -1; }

    union {
        u32 mFullId;
        struct {
            u8 b0;
            u8 b1;
            u8 b2;
            u8 b3;
        } mBytes;
        struct {
            u16 mSoundType;
            u16 mShortId;
        } mAdvancedId;  // Debug doesn't have an inline for referencing the short ID so I assume
                        // it's similar to this
    } mId;
};

class JASTrack;

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
    bool isDead() { return state.unk == 6;}

    inline bool isPlaying() { return state.unk == 5; }
    bool isPrepared() { return state.unk >= 3; }
    inline bool isMute() { return field_0x0.flags.mute; }
    inline bool isPaused() { return field_0x0.flags.paused; }
    void pauseWhenOut() {
        field_0x1.flags.flag6 = 1;
    }

    /* 0x0 */ union {
        u8 value;
        struct {
            u8 mute : 1;
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
            u8 animationState : 2;
            u8 flag5 : 1;
            u8 flag6 : 1;
            u8 flag7 : 1;
            u8 flag8 : 1;
        } flags;
    } state;
    /* 0x4 */ u32 user_data;
};  // Size: 0x8

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
    void fadeIn(u32 param_1) {
        if (param_1 == 0) {
            forceIn();
        } else {
            mTransition.set(1.0f, mIntensity, param_1);
        }
    }
    void fadeInFromOut(u32 param_1) {
        mIntensity = 0.0f;
        fadeIn(param_1);
    }
    bool isOut() {
        return (mTransition.mCount == 0 && mIntensity < 0.01f);
    }
    inline void calc() { mIntensity = mTransition.apply(mIntensity); }
    f32 getIntensity() { return mIntensity; }

    /* 0x00 */ f32 mIntensity;
    /* 0x04 */ JAISoundParamsTransition::TTransition mTransition;
};  // Size: 0x10
template <typename A0>
struct JAISoundStrategyMgr__unknown {
    virtual void virtual2();
    virtual void virtual3(A0*);
    virtual void virtual4(A0*, const JASSoundParams&);
};

template <typename A0>
struct JAISoundStrategyMgr {
    virtual void virtual2();
    virtual JAISoundStrategyMgr__unknown<A0>* virtual3(JAISoundID);
    virtual void virtual4(JAISoundStrategyMgr__unknown<A0>*);
};
/* JAISoundStrategyMgr<JAISe> */
struct JAISoundStrategyMgr__template0 {};
/* JAISoundStrategyMgr<JAISeq> */
struct JAISoundStrategyMgr__template1 {};
/* JAISoundStrategyMgr<JAIStream> */
struct JAISoundStrategyMgr__template2 {};

class JAISoundActivity {
public:
    void init() { field_0x0.value = 0; }

    /* 0x0 */ union {
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
    } field_0x0;
};

class JAITempoMgr {
public:
    /* 0x00 */ f32 mTempo;
    /* 0x04 */ JAISoundParamsTransition::TTransition field_0x4;

    JAITempoMgr() { init(); }
    void init() { setTempo(1.0f); }
    void setTempo(f32 param_0) {
        mTempo = param_0;
        field_0x4.zero();
    }
    f32 getTempo() { return mTempo; }
    void calc() { mTempo = field_0x4.apply(mTempo); }
};

class JAISoundHandle;
class JAIAudible;
class JAIAudience;
class JAISe;
class JAISeq;
class JAISoundChild;
class JAIStream;
class JAITempoMgr;
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

    virtual s32 getNumChild() const = 0;
    virtual JAISoundChild* getChild(int) = 0;
    virtual void releaseChild(int) = 0;
    /* 802A25D8 */ virtual JAISe* asSe();
    /* 802A25E0 */ virtual JAISeq* asSeq();
    /* 802A25E8 */ virtual JAIStream* asStream();
    virtual JASTrack* getTrack() = 0;
    virtual JASTrack* getChildTrack(int) = 0;
    virtual JAITempoMgr* getTempoMgr() = 0;
    virtual bool JAISound_tryDie_() = 0;

    JAISoundID getID() const { return soundID; }
    u8 getAnimationState() const { return status_.state.flags.animationState; }
    bool isAnimated() const { return getAnimationState() != 0; }
    void setAnimationState(u8 pState) {
        status_.state.flags.animationState = pState;
    }
    u32 getUserData() const { return status_.user_data; }
    void setUserData(u32 pUserData) { status_.user_data = pUserData; }
    JAIAudible* getAudible() const { return audible_; }
    bool isHandleAttached() const { return handle_ != NULL; }
    bool hasLifeTime() const { return status_.field_0x1.flags.flag2; }
    void removeLifeTime_() { status_.field_0x1.flags.flag1 = false; }
    bool isPrepared() { return status_.isPrepared(); }
    void unlockIfLocked() { status_.unlockIfLocked(); }
    void lockWhenPrepared() { status_.lockWhenPrepared(); }
    void stop_JAISound_() {
        status_.state.flags.flag5 = 0;
        status_.state.flags.flag1 = 1;
    }

    bool isStopping() {
        bool isStopping = false;
        if (status_.state.flags.flag1) {
            isStopping = !status_.state.flags.flag5 || fader.isOut();
        }
        return isStopping;
    }

    void pause(bool param_0) {
        status_.field_0x0.flags.paused = param_0;
    }

    void updateLifeTime(u32 param_0) {
        if (param_0 > lifeTime) {
            lifeTime = param_0;
        }
    }

    void setLifeTime(u32 param_0, bool param_1) {
        lifeTime = param_0;
        setComesBack(param_1);
        status_.field_0x1.flags.flag2 = 1;
    }

    void setComesBack(bool param_0) {
        status_.field_0x1.flags.flag1 = 1;
        if (param_0) {
            status_.pauseWhenOut();
        }
    }

    bool setPos(const JGeometry::TVec3<f32>& param_1) {
        if (audible_ != NULL) {
            audible_->setPos(param_1);
        }
        return audible_ != NULL;
    }

    JAISoundFader& getFader() { return fader; }
    void fadeIn(u32 i_count) { fader.fadeInFromOut(i_count); }
    void fadeOut(u32 i_count) { fader.fadeOut(i_count); }

    JAISoundParamsProperty& getProperty() { return params.mProperty; }

    s32 getCount() const { return mCount; }

    JAISoundParamsMove& getAuxiliary() { return params.mMove; }

    /* 0x04 */ JAISoundHandle* handle_;
    /* 0x08 */ JAIAudible* audible_;
    /* 0x0C */ JAIAudience* audience_;
    /* 0x10 */ u32 lifeTime;
    /* 0x14 */ s32 prepareCount;
    /* 0x18 */ JAISoundID soundID;
    /* 0x1C */ JAISoundStatus_ status_;
    /* 0x24 */ JAISoundFader fader;
    /* 0x34 */ u32 mPriority;
    /* 0x38 */ s32 mCount;
    /* 0x3C */ JAISoundParams params;
};  // Size: 0x98

STATIC_ASSERT(sizeof(JAISound) == 0x98);

#endif /* JAISOUND_H */
