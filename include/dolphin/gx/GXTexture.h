#ifndef GXTEXTURE_H
#define GXTEXTURE_H

#include "dolphin/types.h"

typedef struct _GXColor {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
} GXColor;

struct _GXColorS10 {
    s16 r;
    s16 g;
    s16 b;
    s16 a;
};

#endif /* GXTEXTURE_H */
