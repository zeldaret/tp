#ifndef GX_H_
#define GX_H_

#include "dolphin/types.h"

typedef enum _GXCullMode {
    GX_CULL_NONE = 0,
    GX_CULL_FRONT = 1,
    GX_CULL_BACK = 2,
    GX_CULL_ALL = 3
} GXCullMode;

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

struct GXColorS10 {
    s16 r;
    s16 g;
    s16 b;
    s16 a;
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

typedef enum GXTexFmt8 { /* 8-bit version of GXTexFmt for use in structures */
                         GX_CTF_A8 = 39,
                         GX_CTF_B8 = 42,
                         GX_CTF_G8 = 41,
                         GX_CTF_GB8 = 44,
                         GX_CTF_R4 = 32,
                         GX_CTF_R8 = 40,
                         GX_CTF_RA4 = 34,
                         GX_CTF_RA8 = 35,
                         GX_CTF_RG8 = 43,
                         GX_CTF_YUVA8 = 38,
                         GX_CTF_Z16L = 60,
                         GX_CTF_Z4 = 48,
                         GX_CTF_Z8L = 58,
                         GX_CTF_Z8M = 57,
                         GX_TF_CMPR = 14,
                         GX_TF_I4 = 0,
                         GX_TF_I8 = 1,
                         GX_TF_IA4 = 2,
                         GX_TF_IA8 = 3,
                         GX_TF_RGB565 = 4,
                         GX_TF_RGB5A3 = 5,
                         GX_TF_RGBA8 = 6,
                         GX_TF_Z16 = 19,
                         GX_TF_Z24X8 = 22,
                         GX_TF_Z8 = 17
} GXTexFmt8;

typedef enum GXTexWrapMode8 { /* Same as GXTexWrapMode, but as 1 byte for use inside structures */
                              GX_CLAMP = 0,
                              GX_MIRROR = 2,
                              GX_REPEAT = 1
} GXTexWrapMode8;

typedef enum GXTexFilter8 { /* Same as GXTexFilter, but as 1 byte for use within structures that
                               store the value as a byte */
                            GX_LINEAR = 1,
                            GX_LIN_MIP_LIN = 5,
                            GX_LIN_MIP_NEAR = 3,
                            GX_NEAR = 0,
                            GX_NEAR_MIP_LIN = 4,
                            GX_NEAR_MIP_NEAR = 2
} GXTexFilter8;

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

struct OSThread;
OSThread* GXSetCurrentGXThread(void);
OSThread* GXGetCurrentGXThread(void);

// Below needs proper symbols
void GXClearVtxDesc(void);
void GXCopyTex(void);
void GXGetProjectionv(void);
u32 GXGetTexBufferSize(u16 width, u16 height, u32 format, s32 is_mip_map, u8 max_lod);
void GXGetViewportv(void);
void GXInitLightColor(void);
void GXInitLightDir(void);
void GXInitLightDistAttn(void);
void GXInitLightPos(void);
void GXInitLightSpot(void);
void GXInvalidateTexAll(void);
void GXLoadLightObjImm(void);
void GXLoadPosMtxImm(void);
void GXLoadTexMtxImm(void);
void GXPixModeSync(void);
void GXProject(void);
void GXSetAlphaCompare(void);
void GXSetAlphaUpdate(void);
void GXSetChanMatColor(void);
void GXSetClipMode(void);
void GXSetCoPlanar(void);
void GXSetCopyFilter(void);
void GXSetCullMode(void);
void GXSetCurrentMtx(void);
void GXSetDither(void);
void GXSetFog(void);
void GXSetFogRangeAdj(void);
void GXSetNumIndStages(void);
void GXSetProjection(void);
void GXSetScissor(void);
void GXSetTevColorS10(void);
void GXSetTevKAlphaSel(void);
void GXSetTevSwapMode(void);
void GXSetTevSwapModeTable(void);
void GXSetTexCoordGen2(void);
void GXSetTexCopyDst(void);
void GXSetTexCopySrc(void);
void GXSetViewport(void);
void GXSetZCompLoc(void);
void GXSetZMode(void);
void GXSetZTexture(void);
};

#endif