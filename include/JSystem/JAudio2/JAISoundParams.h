#ifndef JAISOUNDPARAMS_H
#define JAISOUNDPARAMS_H

#include "JSystem/JAudio2/JASSoundParams.h"
#include "dolphin/types.h"

struct JAISoundParamsProperty {
    void init() {
        field_0x0 = 1.0f;
        field_0x4 = 0.0f;
        field_0x8 = 1.0f;
    }

    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
};  // Size: 0xC

struct JAISoundParamsTransition {
    struct TTransition {
        void zero() {
            field_0x0 = 0.0f;
            field_0x8 = 0;
            field_0x4 = 0.0f;
        }

        /* 0x0 */ f32 field_0x0;
        /* 0x4 */ f32 field_0x4;
        /* 0x8 */ u32 field_0x8;
    };  // Size: 0xC

    void init() {
        field_0x0.zero();
        field_0xc.zero();
        field_0x18.zero();
        field_0x24.zero();
        field_0x30.zero();
    }

    /* 0x00 */ TTransition field_0x0;
    /* 0x0C */ TTransition field_0xc;
    /* 0x18 */ TTransition field_0x18;
    /* 0x24 */ TTransition field_0x24;
    /* 0x30 */ TTransition field_0x30;
};  // Size: 0x3C

struct JAISoundParamsMove {
    void init() {
        mParams.init();
        mTransition.init();
    }

    /* 802A2DB4 */ void moveVolume(f32, u32);
    /* 802A2E0C */ void movePitch(f32, u32);
    /* 802A2E64 */ void moveFxMix(f32, u32);
    /* 802A2EBC */ void movePan(f32, u32);
    /* 802A2F14 */ void moveDolby(f32, u32);

    /* 0x00 */ JASSoundParams mParams;
    /* 0x14 */ JAISoundParamsTransition mTransition;
};  // Size: 0x50

struct JAISoundParams {
    /* 802A2280 */ void mixOutAll(JASSoundParams const&, JASSoundParams*, f32);

    /* 0x0 */ JAISoundParamsProperty mProperty;
    /* 0xC */ JAISoundParamsMove mMove;
};  // Size: 0x5C
// OG Size: 0x20

#endif /* JAISOUNDPARAMS_H */
