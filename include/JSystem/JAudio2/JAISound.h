#ifndef JAISOUND_H
#define JAISOUND_H

#include "JSystem/JGeometry.h"
#include "dolphin/types.h"
#include "global.h"

class JAISoundID {
public:
    operator u32() const { return this->mId; }
    void operator=(JAISoundID const&);

    JAISoundID(u32 pId);
    // JAISoundID(u32 pId) : mId(pId) {}

    JAISoundID(JAISoundID const& other);

private:
    u32 mId;
};

struct JASSoundParams {};

struct JAISoundParams {
    /* 802A2280 */ void mixOutAll(JASSoundParams const&, JASSoundParams*, f32);

    float field_0x0;
    float field_0x4;
    float field_0x8;
    float field_0xc;
    float field_0x10;
    float field_0x14;
    float field_0x18;
    float field_0x1c;
};

struct JASTrack {
    /* 80291444 */ void setChannelMgrCount(u32);
    /* 802919F4 */ void assignExtBuffer(u32, JASSoundParams*);
    /* 80291C30 */ void openChild(u32);
    /* 80292918 */ void writePort(u32, u16);
    /* 8029297C */ void readPort(u32);
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

    JAISoundID getID() const;
    // JAISoundID getID() const { return JAISoundID((u32)this->sound_id); }
    u32 getUserData() const { return user_data; }

    // TODO: do proper struct later
    void* __vt;
    struct JAISoundHandle* handle;
    struct JAIAudible* audible;
    struct JAIAudience* audience;
    s32 field_0xc;
    s32 num_prepare_steps;
    struct JAISoundID sound_id;
    u8 field_0x18;
    u8 field_0x19;
    u8 field_0x1a;
    u8 field_0x1b;
    u32 user_data;
    float field_0x20;
    float field_0x24;
    float field_0x28;
    s32 field_0x2c;
    s32 audience_priority;
    s32 field_0x34;
    struct JAISoundParams params;
    u8 field_0x58;
    u8 field_0x59;
    u8 field_0x5a;
    u8 field_0x5b;
    u8 field_0x5c;
    u8 field_0x5d;
    u8 field_0x5e;
    u8 field_0x5f;
    u8 field_0x60;
    u8 field_0x61;
    u8 field_0x62;
    u8 field_0x63;
    u8 field_0x64;
    u8 field_0x65;
    u8 field_0x66;
    u8 field_0x67;
    u8 field_0x68;
    u8 field_0x69;
    u8 field_0x6a;
    u8 field_0x6b;
    u8 field_0x6c;
    u8 field_0x6d;
    u8 field_0x6e;
    u8 field_0x6f;
    u8 field_0x70;
    u8 field_0x71;
    u8 field_0x72;
    u8 field_0x73;
    u8 field_0x74;
    u8 field_0x75;
    u8 field_0x76;
    u8 field_0x77;
    u8 field_0x78;
    u8 field_0x79;
    u8 field_0x7a;
    u8 field_0x7b;
    u8 field_0x7c;
    u8 field_0x7d;
    u8 field_0x7e;
    u8 field_0x7f;
    u8 field_0x80;
    u8 field_0x81;
    u8 field_0x82;
    u8 field_0x83;
    u8 field_0x84;
    u8 field_0x85;
    u8 field_0x86;
    u8 field_0x87;
    u8 field_0x88;
    u8 field_0x89;
    u8 field_0x8a;
    u8 field_0x8b;
    u8 field_0x8c;
    u8 field_0x8d;
    u8 field_0x8e;
    u8 field_0x8f;
    u8 field_0x90;
    u8 field_0x91;
    u8 field_0x92;
    u8 field_0x93;
};

class JAISoundHandle {
public:
    JAISoundHandle();  // noninline in JAUClusterSound.cpp
    ~JAISoundHandle();

    bool isSoundAttached() const { return mSound != NULL; }

    JAISound* operator->() const {
        JUT_ASSERT(mSound != NULL);
        return mSound;
    }

    operator bool() const { return isSoundAttached(); }

    void releaseSound();

private:
    JAISound* mSound;
};

class JAISoundHandles {
public:
    JAISoundHandles(JAISoundHandle* pHandle, int param_1) {
        mSoundHandle = pHandle;
        field_0x04 = param_1;
    };

    void getHandleSoundID(JAISoundID);
    void getFreeHandle();

private:
    JAISoundHandle* mSoundHandle;
    int field_0x04;
};

#endif /* JAISOUND_H */
