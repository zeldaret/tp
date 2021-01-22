#ifndef GX_H_
#define GX_H_

#include "dolphin/types.h"

typedef enum _GXTexMapID {
    GX_TEXMAP1 = 1,
    GX_TEXMAP2 = 2,
    GX_TEXMAP0 = 0,
    GX_TEXMAP5 = 5,
    GX_TEXMAP6 = 6,
    GX_TEXMAP3 = 3,
    GX_TEXMAP4 = 4,
    GX_TEXMAP_NULL = 255,
    GX_TEX_DISABLE = 256,
    GX_TEXMAP7 = 7,
    GX_MAX_TEXMAP = 8
} GXTexMapID;

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

struct GXRenderModeObj {
    s32 vi_tv_mode;
    u16 fb_width;
    u16 efb_height;
    u16 xfb_height;
    u16 vi_x_origin;
    u16 vi_y_origin;
    u16 vi_width;
    u16 vi_height;
    s32 xfb_mode;
    u8 field_rendering;
    u8 antialiasing;
    u8 sample_pattern[12][2];
    u8 vfilter[7];
};

extern "C" {
f32 GXGetYScaleFactor(u16 efb_height, u16 xfb_height);
u16 GXGetNumXfbLines(u32 efb_height, f32 y_scale);

void GXBegin(u8, u8, u16);
void GXLoadTexObj(u32*, s32);
void GXInitTexObjLOD(f32, f32, f32, u32*, s32, s32, u32, u8, u32);
void GXInitTexObj(u32*, u32, u32, u32, u32, u32, u8);

void GXSetNumChans(u32);
void GXSetNumTevStages(u32);
void GXSetNumTexGens(u32);
void GXSetTevOrder(u32, u32, u32, u32);
void GXSetChanCtrl(u32, u32, u32, u32, u32, u32, s32);
void GXSetTevOp(s32, s32);
void GXSetTevColor(s32, _GXColor);
void GXSetTevColorIn(s32, u32, u32, u32, u32);
void GXSetTevAlphaIn(s32, u32, u32, u32, u32);
void GXSetTevColorOp(s32, u32, u32, u32, u32, u32);
void GXSetTevAlphaOp(s32, u32, u32, u32, u32, u32);
void GXSetBlendMode(u32, u32, u32, u32);
void GXSetVtxAttrFmt(u32, u32, u32, u32, u32);
void GXClearVtxDesc();
void GXSetVtxDesc(u32, u32);
typedef void (*GXDrawDoneCallback)(void);
void GXSetDrawDoneCallback(GXDrawDoneCallback);
void GXDrawDone(void);
void GXAbortFrame(void);
void GXFlush(void);
OSThread* GXSetCurrentGXThread(void);
OSThread* GXGetCurrentGXThread(void);
}

#endif