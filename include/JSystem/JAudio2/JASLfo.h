#ifndef JASLFO_H
#define JASLFO_H

#include "dolphin/types.h"

struct JASLfo {
    /* 8029BD14 */ JASLfo();
    /* 8029BD44 */ f32 getValue() const;
    /* 8029BDD8 */ void incCounter(f32);
    /* 8029BE2C */ void resetCounter();

    static void updateFreeRun(f32 param_0) { sFreeRunLfo.incCounter(param_0); }

    static JASLfo sFreeRunLfo;

    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
};

#endif /* JASLFO_H */
