#ifndef JAUAUDIBLEPARAM_H
#define JAUAUDIBLEPARAM_H

#include "dolphin/types.h"

struct JAUAudibleParam {
    f32 getDopplerPower() const {
        return (u32)((*(u8*)&field_0x0.raw >> 4) & 0xf) * (1.0f / 15.0f);
    }
    union {
        struct {
            u16 f0;
            u16 f1;
        } half;
        struct {
            u8 b0_0 : 1;
            u8 b0_1 : 1;
            u8 b0_2 : 1;
            u8 b0_3 : 1;
            u8 b0_4 : 1;
            u8 b0_5 : 1;
            u8 b0_6 : 1;
            u8 b0_7 : 1;
            u8 b1;
            u8 b2;
            u8 b3;
        } bytes;
        u32 raw;
    } field_0x0;
};

#endif /* JAUAUDIBLEPARAM_H */
