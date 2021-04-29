#ifndef GXTEXTURE_H
#define GXTEXTURE_H

#include "dolphin/types.h"

struct _GXColor {
    void operator=(const _GXColor& rhs) {
        r = rhs.r;
        g = rhs.g;
        b = rhs.b;
        a = rhs.a;
    }

    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

struct GXColorS10 {
    s16 r;
    s16 g;
    s16 b;
    s16 a;
};

#endif /* GXTEXTURE_H */
