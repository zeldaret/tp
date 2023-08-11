#ifndef JPARANDOM_H
#define JPARANDOM_H

#include "dolphin/types.h"

struct JPARandom {
public:
    JPARandom() { mSeed = 0; }
    void set_seed(u32 seed) { mSeed = seed; }

    u32 get_rndm_u() { return mSeed = mSeed * 0x19660du + 0x3c6ef35fu; }

    f32 get_rndm_f() {
        union {
            u32 u;
            f32 f;
        } a;
        a.u = ((get_rndm_u() >> 9) | 0x3f800000);
        return a.f - 1.0f;
    }

    f32 get_rndm_zp() {
        f32 f = get_rndm_f();
        return (f + f) - 1.0f;
    }

    f32 get_rndm_zh() {
        f32 f = get_rndm_f();
        return f - 0.5f;
    }

    s16 get_rndm_ss() { return (s16)(get_rndm_u() >> 16); }

public:
    u32 mSeed;
};

#endif