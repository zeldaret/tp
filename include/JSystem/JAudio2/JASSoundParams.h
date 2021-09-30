#ifndef JASSOUNDPARAMS_H
#define JASSOUNDPARAMS_H

#include "dolphin/types.h"

struct JASSoundParams {
    /* 8029E3B0 */ void clamp();
    /* 8029E47C */ void combine(JASSoundParams const&, JASSoundParams const&);

    void initVolume() { mVolume = 1.0f; }
    void initFxMix() { mFxMix = 0.0f; }
    void initPitch() { mPitch = 1.0f; }
    void initPan() { mPan = 0.5f; }
    void initDolby() { mDolby = 0.0f; }
    void init() {
        initVolume();
        initPitch();
        initFxMix();
        initPan();
        initDolby();
    }

    JASSoundParams() { init(); }

    /* 0x00 */ f32 mVolume;
    /* 0x04 */ f32 mFxMix;
    /* 0x08 */ f32 mPitch;
    /* 0x0C */ f32 mPan;
    /* 0x10 */ f32 mDolby;
};  // Size: 0x14

#endif /* JASSOUNDPARAMS_H */
