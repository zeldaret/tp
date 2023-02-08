#ifndef GXPIXEL_H
#define GXPIXEL_H

#include "dolphin/gx/GXStruct.h"
#include "dolphin/gx/GXEnum.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXSetFog(GXFogType type, f32 startZ, f32 endZ, f32 nearZ, f32 farZ, GXColor color);
void GXSetFogRangeAdj(GXBool enable, u16 center, GXFogAdjTable* table);
void GXSetBlendMode(GXBlendMode mode, GXBlendFactor src_factor, GXBlendFactor dst_factor, GXLogicOp op);
void GXSetColorUpdate(GXBool enable_update);
void GXSetAlphaUpdate(GXBool enable_update);
void GXSetZMode(GXBool enable_compare, GXCompare comp, GXBool enable_update);
void GXSetZCompLoc(GXBool z_buf_before_tex);
void GXSetPixelFmt(GXPixelFmt pixel_fmt, GXZFmt16 z_fmt);
void GXSetDither(GXBool enable_dither);
void GXSetDstAlpha(GXBool enable, u8 alpha);
void GXSetFieldMask(GXBool odd_mask, GXBool even_mask);
void GXSetFieldMode(GXBool field_mode, GXBool half_aspect_ratio);

#ifdef __cplusplus
};
#endif

#endif /* GXPIXEL_H */
