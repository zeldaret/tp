#ifndef JASWAVEINFO_H
#define JASWAVEINFO_H

#include "dolphin/types.h"

struct JASWaveInfo {
    JASWaveInfo() {
        field_0x01 = 0x3c;
        field_0x20 = &one;
    }

    /* 0x00 */ u8 field_0x00;
    /* 0x01 */ u8 field_0x01;
    /* 0x02 */ u8 field_0x02;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ int field_0x08;
    /* 0x0C */ int field_0x0c;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
    /* 0x20 */ const u32* field_0x20;

    static u32 one;
};

#endif /* JASWAVEINFO_H */