#ifndef GFPIXEL_H
#define GFPIXEL_H

#include <dolphin/gx.h>

void GFSetFog(GXFogType param_0, f32 param_1, f32 param_2, f32 param_3, f32 param_4,
    GXColor param_5);
void GFSetBlendModeEtc(GXBlendMode param_0, GXBlendFactor param_1, GXBlendFactor param_2,
        GXLogicOp param_3, u8 param_4, u8 param_5, u8 param_6);
void GFSetZMode(u8 param_0, GXCompare param_1, u8 param_2);

#endif /* GFPIXEL_H */
