#ifndef JAISOUND_H
#define JAISOUND_H

#include "JSystem/JGeometry.h"
#include "JSystem/JAudio2/JAISoundParams.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "dolphin/types.h"
#include "global.h"

class JAISoundID {
public:
    operator u32() const { return this->mId; }
    void operator=(JAISoundID const&);

    JAISoundID(u32 pId);

    JAISoundID(JAISoundID const& other);

private:
    u32 mId;
};

struct JASTrack {
    /* 80291444 */ void setChannelMgrCount(u32);
    /* 802919F4 */ void assignExtBuffer(u32, JASSoundParams*);
    /* 80291C30 */ void openChild(u32);
    /* 80292918 */ void writePort(u32, u16);
    /* 8029297C */ void readPort(u32);
};

struct JAISoundStatus_ {
    /* 802A2220 */ void lockWhenPrepared();
    /* 802A2244 */ void unlockIfLocked();

    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u16 state;  // debug accesses like "state.flags.calcedOnce"
    /* 0x4 */ u32 user_data;
};  // Size: 0x6

struct JAISoundFader {
    /* 0x00 */ f32 mIntensity;
    /* 0x04 */ JAISoundParamsTransition::TTransition field_0x4;
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
    /* 802A244C */ void acceptsNewAudible() const;
    /* 802A2474 */ void newAudible(JGeometry::TVec3<f32> const&, JGeometry::TVec3<f32> const*, u32,
                                   JAIAudience*);
    /* 802A2598 */ void stop();
    /* 802A24DC */ void stop(u32 fadeout);
    /* 802A25D8 */ bool asSe();
    /* 802A25E0 */ bool asSeq();
    /* 802A25E8 */ bool asStream();
    /* 802A25F0 */ void die_JAISound_();
    /* 802A266C */ void increasePrepareCount_JAISound_();
    /* 802A26B8 */ void calc_JAISound_();
    /* 802A29DC */ void initTrack_JAISound_(JASTrack*);

    virtual void getNumChild() = 0;

    JAISoundID getID() const;
    u32 getUserData() const { return status_.user_data; }

    /* 0x04 */ JAISoundHandle* handle;
    /* 0x08 */ struct JAIAudible* audible_;
    /* 0x0C */ struct JAIAudience* audience_;
    /* 0x10 */ s32 lifeTime;
    /* 0x14 */ s32 num_prepare_steps;
    /* 0x18 */ JAISoundID soundID;
    /* 0x1C */ JAISoundStatus_ status_;
    /* 0x24 */ JAISoundFader fader;
    /* 0x34 */ s32 field_0x34;
    /* 0x38 */ s32 mCount;
    /* 0x3C */ JAISoundParams params;
};  // Size: 0x98

STATIC_ASSERT(sizeof(JAISound) == 0x98);

#endif /* JAISOUND_H */
