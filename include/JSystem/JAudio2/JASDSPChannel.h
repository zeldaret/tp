#ifndef JASDSPCHANNEL_H
#define JASDSPCHANNEL_H

#include "JSystem/JAudio2/JASDSPInterface.h"

struct JASDSPChannel {
    typedef s32 (*Callback)(u32, JASDsp::TChannel*, void*);

    enum Status {
        /* 0 */ STATUS_ACTIVE,
        /* 1 */ STATUS_INACTIVE,
        /* 2 */ STATUS_DROP,
    };

    enum CallbackType {
        /* 0 */ CB_PLAY,
        /* 1 */ CB_START,
        /* 2 */ CB_STOP,
        /* 3 */ CB_DROP,
    };

    /* 8029D2F4 */ JASDSPChannel();
    /* 8029D320 */ void free();
    /* 8029D330 */ void start();
    /* 8029D340 */ void drop();
    /* 8029D534 */ void setPriority(u8);
    /* 8029D65C */ void updateProc();

    /* 8029D3C8 */ static void initAll();
    /* 8029D44C */ static JASDSPChannel* alloc(u8, Callback, void*);
    /* 8029D4BC */ static JASDSPChannel* allocForce(u8, Callback, void*);
    /* 8029D540 */ static JASDSPChannel* getLowestChannel(int);
    /* 8029D5D0 */ static JASDSPChannel* getLowestActiveChannel();
    /* 8029D89C */ static void updateAll();
    /* 8029D910 */ static int killActiveChannel();
    /* 8029D948 */ static JASDSPChannel* getHandle(u32);

    static JASDSPChannel* sDspChannels;

    /* 0x00 */ s32 mStatus;
    /* 0x04 */ s16 mPriority;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ Callback mCallback;
    /* 0x14 */ void* mCallbackData;
    /* 0x18 */ JASDsp::TChannel* mChannel;
};  // Size: 0x1C

#endif /* JASDSPCHANNEL_H */
