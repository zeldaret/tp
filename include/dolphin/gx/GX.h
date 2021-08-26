#ifndef GX_H_
#define GX_H_

#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx/GXTexture.h"
#include "dolphin/types.h"

// TODO: maybe split?

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

typedef enum _GXTevStageID {
    /* 0x0 */ GX_TEVSTAGE0,
    /* 0x1 */ GX_TEVSTAGE1,
    /* 0x2 */ GX_TEVSTAGE2,
    /* 0x3 */ GX_TEVSTAGE3,
    /* 0x4 */ GX_TEVSTAGE4,
    /* 0x5 */ GX_TEVSTAGE5,
    /* 0x6 */ GX_TEVSTAGE6,
    /* 0x7 */ GX_TEVSTAGE7,
    /* 0x8 */ GX_TEVSTAGE8,
    /* 0x9 */ GX_TEVSTAGE9,
    /* 0xA */ GX_TEVSTAGE10,
    /* 0xB */ GX_TEVSTAGE11,
    /* 0xC */ GX_TEVSTAGE12,
    /* 0xD */ GX_TEVSTAGE13,
    /* 0xE */ GX_TEVSTAGE14,
    /* 0xF */ GX_TEVSTAGE15,
} GXTevStageID;

typedef enum _GXTexCoordID {
    /* 0x00 */ GX_TEXCOORD0,
    /* 0x01 */ GX_TEXCOORD1,
    /* 0x02 */ GX_TEXCOORD2,
    /* 0x03 */ GX_TEXCOORD3,
    /* 0x04 */ GX_TEXCOORD4,
    /* 0x05 */ GX_TEXCOORD5,
    /* 0x06 */ GX_TEXCOORD6,
    /* 0x07 */ GX_TEXCOORD7,
    /* 0xFF */ GX_TEXCOORD_NULL = 255,
} GXTexCoordID;

typedef enum _GXChannelID {
    /* 0x00 */ GX_COLOR0,
    /* 0x01 */ GX_COLOR1,
    /* 0x02 */ GX_ALPHA0,
    /* 0x03 */ GX_ALPHA1,
    /* 0x04 */ GX_COLOR0A0,
    /* 0x05 */ GX_COLOR1A1,
    /* 0x06 */ GX_COLOR_ZERO,
    /* 0x07 */ GX_ALPHA_BUMP,
    /* 0x08 */ GX_ALPHA_BUMPN,
    /* 0xFF */ GX_COLOR_NULL = 255,
} GXChannelID;

typedef enum _GXColorSrc {
    /* 0x0 */ GX_SRC_REG,
    /* 0x1 */ GX_SRC_VTX,
} GXColorSrc;

typedef enum _GXLightID {
    /* 0x00 */ GX_LIGHT0,
    /* 0x02 */ GX_LIGHT1 = 0x2,
    /* 0x04 */ GX_LIGHT2 = 0x4,
    /* 0x08 */ GX_LIGHT3 = 0x8,
    /* 0x10 */ GX_LIGHT4 = 0x10,
    /* 0x20 */ GX_LIGHT5 = 0x20,
    /* 0x40 */ GX_LIGHT6 = 0x40,
    /* 0x80 */ GX_LIGHT7 = 0x80,
} GXLightID;

typedef enum _GXDiffuseFn {
    /* 0x0 */ GX_DF_NONE,
    /* 0x1 */ GX_DF_SIGN,
    /* 0x2 */ GX_DF_CLAMP,
} GXDiffuseFn;

typedef enum _GXAttnFn {
    /* 0x0 */ GX_AF_SPEC,
    /* 0x1 */ GX_AF_SPOT,
    /* 0x2 */ GX_AF_NONE,
} GXAttnFn;

typedef enum _GXTevMode {
    /* 0x0 */ GX_MODULATE,
    /* 0x1 */ GX_DECAL,
    /* 0x2 */ GX_BLEND,
    /* 0x3 */ GX_REPLACE,
    /* 0x4 */ GX_PASSCLR,
} GXTevMode;

typedef enum _GXBlendMode {
    /* 0x0 */ GX_BM_NONE,
    /* 0x1 */ GX_BM_BLEND,
    /* 0x2 */ GX_BM_LOGIC,
    /* 0x3 */ GX_BM_SUBTRACT,
} GXBlendMode;

typedef enum _GXBlendFactor {
    /* 0x0 */ GX_BL_ZERO,
    /* 0x1 */ GX_BL_ONE,
    /* 0x2 */ GX_BL_SRC_COLOR,
    /* 0x3 */ GX_BL_INV_SRC_COLOR,
    /* 0x4 */ GX_BL_SRC_ALPHA,
    /* 0x5 */ GX_BL_INV_SRC_ALPHA,
    /* 0x6 */ GX_BL_DST_ALPHA,
    /* 0x7 */ GX_BL_INV_DST_ALPHA,
} GXBlendFactor;

typedef enum _GXLogicOp {
    /* 0x0 */ GX_LO_CLEAR,
    /* 0x1 */ GX_LO_AND,
    /* 0x2 */ GX_LO_REV_AND,
    /* 0x3 */ GX_LO_COPY,
    /* 0x4 */ GX_LO_INV_AND,
    /* 0x5 */ GX_LO_NOOP,
    /* 0x6 */ GX_LO_XOR,
    /* 0x7 */ GX_LO_OP,
    /* 0x8 */ GX_LO_NOR,
    /* 0x9 */ GX_LO_EQUIV,
    /* 0xA */ GX_LO_INV,
    /* 0xB */ GX_LO_REV_OR,
    /* 0xC */ GX_LO_INV_COPY,
    /* 0xD */ GX_LO_INV_OR,
    /* 0xE */ GX_LO_NAND,
    /* 0xF */ GX_LO_SET,
} GXLogicOp;

typedef enum _GXVtxFmt {
    /* 0x0 */ GX_VTXFMT0,
    /* 0x1 */ GX_VTXFMT1,
    /* 0x2 */ GX_VTXFMT2,
    /* 0x3 */ GX_VTXFMT3,
    /* 0x4 */ GX_VTXFMT4,
    /* 0x5 */ GX_VTXFMT5,
    /* 0x6 */ GX_VTXFMT6,
    /* 0x7 */ GX_VTXFMT7,
} GXVtxFmt;

typedef enum _GXAttr {
    /* 0x00 */ GX_VA_PTNMTXIDX,
    /* 0x01 */ GX_VA_TEX0MTXIDX,
    /* 0x02 */ GX_VA_TEX1MTXIDX,
    /* 0x03 */ GX_VA_TEX2MTXIDX,
    /* 0x04 */ GX_VA_TEX3MTXIDX,
    /* 0x05 */ GX_VA_TEX4MTXIDX,
    /* 0x06 */ GX_VA_TEX5MTXIDX,
    /* 0x07 */ GX_VA_TEX6MTXIDX,
    /* 0x08 */ GX_VA_TEX7MTXIDX,
    /* 0x09 */ GX_VA_POS,
    /* 0x0A */ GX_VA_NRM,
    /* 0x0B */ GX_VA_CLR0,
    /* 0x0C */ GX_VA_CLR1,
    /* 0x0D */ GX_VA_TEX0,
    /* 0x0E */ GX_VA_TEX1,
    /* 0x0F */ GX_VA_TEX2,
    /* 0x10 */ GX_VA_TEX3,
    /* 0x11 */ GX_VA_TEX4,
    /* 0x12 */ GX_VA_TEX5,
    /* 0x13 */ GX_VA_TEX6,
    /* 0x14 */ GX_VA_TEX7,
    /* 0x15 */ GX_POS_MTX_ARRAY,
    /* 0x16 */ GX_NRM_MTX_ARRAY,
    /* 0x17 */ GX_TEX_MTX_ARRAY,
    /* 0x18 */ GX_LIGHT_ARRAY,
    /* 0x19 */ GX_VA_NBT,
    /* 0x1A */ GX_VA_MAX_ATTR,
    /* 0xFF */ GX_VA_NULL = 255,
} GXAttr;

typedef enum _GXCompCnt {
    /* 0x0 */ GX_TEX_S,
    /* 0x0 */ GX_NRM_XYZ = 0,
    /* 0x0 */ GX_CLR_RGB = 0,
    /* 0x0 */ GX_POS_XY = 0,
    /* 0x1 */ GX_TEX_ST = 1,
    /* 0x1 */ GX_NRM_NBT = 1,
    /* 0x1 */ GX_CLR_RGBA = 1,
    /* 0x1 */ GX_POS_XYZ = 1,
    /* 0x2 */ GX_NRM_NBT3,
} GXCompCnt;

typedef enum _GXCompType {
    /* 0x0 */ GX_U8,
    /* 0x0 */ GX_RGB565 = 0,
    /* 0x1 */ GX_S8,
    /* 0x1 */ GX_RGB8 = 1,
    /* 0x2 */ GX_RGBX8,
    /* 0x2 */ GX_U16 = 2,
    /* 0x3 */ GX_S16,
    /* 0x3 */ GX_RGBA4 = 3,
    /* 0x4 */ GX_RGBA6,
    /* 0x4 */ GX_F32 = 4,
    /* 0x5 */ GX_RGBA8,
} GXCompType;

typedef enum _GXAttrType {
    /* 0x0 */ GX_NONE,
    /* 0x1 */ GX_DIRECT,
    /* 0x2 */ GX_INDEX8,
    /* 0x3 */ GX_INDEX16,
} GXAttrType;

typedef enum _GXTevOp {
    /* 0x0 */ GX_TEV_ADD,
    /* 0x1 */ GX_TEV_SUB,
    /* 0x8 */ GX_TEV_COMP_R8_GT = 8,
    /* 0x9 */ GX_TEV_COMP_R8_EQ,
    /* 0xA */ GX_TEV_COMP_GR16_GT,
    /* 0xB */ GX_TEV_COMP_GR16_EQ,
    /* 0xC */ GX_TEV_COMP_BGR24_GT,
    /* 0xD */ GX_TEV_COMP_BGR24_EQ,
    /* 0xE */ GX_TEV_COMP_A8_GT,
    /* 0xE */ GX_TEV_COMP_RGB8_GT = 14,
    /* 0xF */ GX_TEV_COMP_RGB8_EQ,
    /* 0xF */ GX_TEV_COMP_A8_EQ = 15,
} GXTevOp;

typedef enum _GXTevBias {
    /* 0x0 */ GX_TB_ZERO,
    /* 0x1 */ GX_TB_ADDHALF,
    /* 0x2 */ GX_TB_SUBHALF,
} GXTevBias;

typedef enum _GXTevColorArg {
    /* 0x0 */ GX_CC_CPREV,
    /* 0x1 */ GX_CC_APREV,
    /* 0x2 */ GX_CC_C0,
    /* 0x3 */ GX_CC_A0,
    /* 0x4 */ GX_CC_C1,
    /* 0x5 */ GX_CC_A1,
    /* 0x6 */ GX_CC_C2,
    /* 0x7 */ GX_CC_A2,
    /* 0x8 */ GX_CC_TEXC,
    /* 0x9 */ GX_CC_TEXA,
    /* 0xA */ GX_CC_RASC,
    /* 0xB */ GX_CC_RASA,
    /* 0xC */ GX_CC_ONE,
    /* 0xD */ GX_CC_HALF,
    /* 0xE */ GX_CC_KONST,
    /* 0xF */ GX_CC_ZERO,
} GXTevColorArg;

typedef enum _GXTevScale {
    /* 0x0 */ GX_CS_SCALE_1,
    /* 0x1 */ GX_CS_SCALE_2,
    /* 0x2 */ GX_CS_SCALE_4,
    /* 0x3 */ GX_CS_DIVIDE_2,
} GXTevScale;

typedef enum _GXTevRegID {
    /* 0x0 */ GX_TEVPREV,
    /* 0x1 */ GX_TEVREG0,
    /* 0x2 */ GX_TEVREG1,
    /* 0x3 */ GX_TEVREG2,
} GXTevRegID;

typedef enum _GXTevAlphaArg {
    /* 0x0 */ GX_CA_APREV,
    /* 0x1 */ GX_CA_A0,
    /* 0x2 */ GX_CA_A1,
    /* 0x3 */ GX_CA_A2,
    /* 0x4 */ GX_CA_TEXA,
    /* 0x5 */ GX_CA_TEXB,
    /* 0x6 */ GX_CA_ZERO,
} GXTevAlphaArg;

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

struct _GXTexObj {
    u32 texture_filter;
    u32 texture_lod;
    u32 texture_size;
    u32 texture_address;
    u32 user_data;
    u32 texture_format;
    u32 tlut_name;
    u16 texture_time_count;
    u8 texture_tile_type;
    u8 texture_flags;
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