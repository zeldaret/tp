#ifndef _DOLPHIN_GF_GFPIXEL_H
#define _DOLPHIN_GF_GFPIXEL_H

#ifdef __REVOLUTION_SDK__
#include <revolution/gf/GFPixel.h>
#else
#include <dolphin/gx.h>

void GFSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color);
void GFSetBlendModeEtc(GXBlendMode type, GXBlendFactor src_factor,
                       GXBlendFactor dst_factor, GXLogicOp logic_op,
                       u8 color_update_enable, u8 alpha_update_enable,
                       u8 dither_enable);
void GFSetZMode(u8 compare_enable, GXCompare func, u8 update_enable);

#endif
#endif /* _DOLPHIN_GF_GFPIXEL_H */
