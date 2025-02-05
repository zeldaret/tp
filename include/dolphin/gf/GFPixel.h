#ifndef GFPIXEL_H
#define GFPIXEL_H

#include <dolphin/gx.h>

void GFSetFog(GXFogType type, f32 startz, f32 endz, f32 nearz, f32 farz, GXColor color);
void GFSetBlendModeEtc(GXBlendMode type, GXBlendFactor src_factor,
                       GXBlendFactor dst_factor, GXLogicOp logic_op,
                       u8 color_update_enable, u8 alpha_update_enable,
                       u8 dither_enable);
void GFSetZMode(u8 compare_enable, GXCompare func, u8 update_enable);

#endif /* GFPIXEL_H */
