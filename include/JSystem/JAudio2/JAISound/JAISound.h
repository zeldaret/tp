#ifndef __JAISOUND_H__
#define __JAISOUND_H__

#include "dolphin/types.h"

class JAISoundID {
public:
    operator u32() const { return this->mId; }

    JAISoundID(u32 pId) : mId(pId) {}

    JAISoundID(JAISoundID const& other); 

private:
    u32 mId;
};

struct JAISoundParams {
    float field_0x0;
    float field_0x4;
    float field_0x8;
    float field_0xc;
    float field_0x10;
    float field_0x14;
    float field_0x18;
    float field_0x1c;
};

class JAISoundHandle;
class JAIAudible;
class JAIAudience;
class JAISound {
public:
    JAISoundID getID() const { return JAISoundID((u32)this->sound_id); }

    void stop(u32 fadeout);

    u32 getUserData() const {
        return user_data;
    }

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

extern "C" {
    void stop__8JAISoundFUl(JAISound*, u32 fadeout);
    void stop__8JAISoundFv(JAISound*);
}

class JAISoundHandle {
public:
    JAISoundHandle();  // noninline in JAUClusterSound.cpp

    bool isSoundAttached() const { return mSound != NULL; }

    JAISound* operator->() const {
        // assert on null here in DEBUG (see 8039a7c4 in CHN_debug)
        return mSound;
    }

    operator bool() const {
        return isSoundAttached();
    }

    // private:
    JAISound* mSound;
};

#endif