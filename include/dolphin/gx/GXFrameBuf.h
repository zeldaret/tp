#ifndef GXFRAMEBUF_H
#define GXFRAMEBUF_H

#include "dolphin/gx/GXStruct.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXSetDispCopySrc(u16 left, u16 top, u16 width, u16 height);
void GXSetTexCopySrc(u16 left, u16 top, u16 width, u16 height);
void GXSetDispCopyDst(u16 arg0, u16 arg1);
void GXSetTexCopyDst(u16 width, u16 height, GXTexFmt format, GXBool useMIPmap);
void GXSetDispCopyFrame2Field(GXCopyMode mode);
void GXSetCopyClamp(GXFBClamp clamp);
u16 GXGetNumXfbLines(const u16 efbHeight, f32 yScale);
f32 GXGetYScaleFactor(u16 efb_height, u16 xfb_height);
u32 GXSetDispCopyYScale(f32 y_scale);
void GXSetCopyClear(GXColor color, u32 clear_z);
void GXSetCopyFilter(GXBool antialias, u8 pattern[12][2], GXBool vf, u8 vfilter[7]);
void GXSetDispCopyGamma(GXGamma gamma);
void GXCopyDisp(void* dst, GXBool clear);
void GXCopyTex(void* dst, GXBool clear);
void GXClearBoundingBox(void);

#ifdef __cplusplus
};
#endif

#endif /* GXFRAMEBUF_H */
