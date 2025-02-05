#ifndef GFGEOMETRY_H
#define GFGEOMETRY_H

#include <dolphin/gx.h>

static inline void GFWriteBPCmd(u32 param_1) {
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = param_1;
}

inline void GFFill(u16 param_1, u32 param_2) {
    GXWGFifo.u8 = 0x10;
    GXWGFifo.u16 = 0;
    GXWGFifo.u16 = param_1;
    GXWGFifo.u32 = param_2;
}

void GFSetGenMode2(u8 param_0, u8 param_1, u8 param_2, u8 param_3, _GXCullMode param_4);

#endif /* GFGEOMETRY_H */
