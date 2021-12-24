#ifndef GX_H_
#define GX_H_

#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/mtx/mtx44.h"
#include "dolphin/types.h"
#include "global.h"

typedef struct _GXColor {
    /* 0x0 */ u8 r;
    /* 0x1 */ u8 g;
    /* 0x2 */ u8 b;
    /* 0x3 */ u8 a;

    _GXColor& operator=(const _GXColor& o) {
        r = o.r;
        g = o.g;
        b = o.b;
        a = o.a;
        return *this;
    }
} GXColor;

typedef struct _GXColorS10 {
    /* 0x0 */ s16 r;
    /* 0x2 */ s16 g;
    /* 0x4 */ s16 b;
    /* 0x6 */ s16 a;
} GXColorS10;

typedef struct _GXRenderModeObj {
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
} GXRenderModeObj;

STATIC_ASSERT(sizeof(_GXRenderModeObj) == 60);

typedef struct _GXTexObj {
    /* 0x00 */ u32 texture_filter;
    /* 0x04 */ u32 texture_lod;
    /* 0x08 */ u32 texture_size;
    /* 0x0C */ u32 texture_address;
    /* 0x10 */ u32 user_data;
    /* 0x14 */ u32 texture_format;
    /* 0x18 */ u32 tlut_name;
    /* 0x1C */ u16 texture_time_count;
    /* 0x1E */ u8 texture_tile_type;
    /* 0x1F */ u8 texture_flags;
} GXTexObj;

typedef struct _GXTlutObj {
    /* 0x0 */ u32 format;
    /* 0x4 */ u32 address;
    /* 0x8 */ u32 numEntries;
} GXTlutObj;

typedef struct _GXLightObj {
    /* 0x0 */ u32 data[16];
} GXLightObj;

typedef struct _GXFogAdjTable {
    /* 0x0 */ u16 r[10];
} GXFogAdjTable;

typedef enum _GXPrimitive {
    /* 0x80 */ GX_QUADS = 0x80,
    /* 0x90 */ GX_TRIANGLES = 0x90,
    /* 0x98 */ GX_TRIANGLESTRIP = 0x98,
    /* 0xA0 */ GX_TRIANGLEFAN = 0xA0,
    /* 0xA8 */ GX_LINES = 0xA8,
    /* 0xB0 */ GX_LINESTRIP = 0xB0,
    /* 0xB8 */ GX_POINTS = 0xB8,
} GXPrimitive;

typedef enum _GXCullMode {
    /* 0x0 */ GX_CULL_NONE,
    /* 0x1 */ GX_CULL_FRONT,
    /* 0x2 */ GX_CULL_BACK,
    /* 0x3 */ GX_CULL_ALL
} GXCullMode;

typedef enum _GXBool {
    /* 0x0 */ GX_FALSE,
    /* 0x1 */ GX_TRUE,
    /* 0x0 */ GX_DISABLE = 0,
    /* 0x1 */ GX_ENABLE
} GXBool;

typedef enum _GXTexMapID {
    /* 0x000 */ GX_TEXMAP0,
    /* 0x001 */ GX_TEXMAP1,
    /* 0x002 */ GX_TEXMAP2,
    /* 0x003 */ GX_TEXMAP3,
    /* 0x004 */ GX_TEXMAP4,
    /* 0x005 */ GX_TEXMAP5,
    /* 0x006 */ GX_TEXMAP6,
    /* 0x007 */ GX_TEXMAP7,
    /* 0x008 */ GX_MAX_TEXMAP,
    /* 0x0FF */ GX_TEXMAP_NULL = 255,
    /* 0x100 */ GX_TEXMAP_DISABLE,
} GXTexMapID;

typedef enum _GXTevStageID {
    /* 0x00 */ GX_TEVSTAGE0,
    /* 0x01 */ GX_TEVSTAGE1,
    /* 0x02 */ GX_TEVSTAGE2,
    /* 0x03 */ GX_TEVSTAGE3,
    /* 0x04 */ GX_TEVSTAGE4,
    /* 0x05 */ GX_TEVSTAGE5,
    /* 0x06 */ GX_TEVSTAGE6,
    /* 0x07 */ GX_TEVSTAGE7,
    /* 0x08 */ GX_TEVSTAGE8,
    /* 0x09 */ GX_TEVSTAGE9,
    /* 0x0A */ GX_TEVSTAGE10,
    /* 0x0B */ GX_TEVSTAGE11,
    /* 0x0C */ GX_TEVSTAGE12,
    /* 0x0D */ GX_TEVSTAGE13,
    /* 0x0E */ GX_TEVSTAGE14,
    /* 0x0F */ GX_TEVSTAGE15,
    /* 0x10 */ GX_MAX_TEVSTAGE,
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
    /* 0x08 */ GX_MAXCOORD,
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
    /* 0x000 */ GX_LIGHT_NULL,
    /* 0x001 */ GX_LIGHT0,
    /* 0x002 */ GX_LIGHT1,
    /* 0x004 */ GX_LIGHT2 = 0x4,
    /* 0x008 */ GX_LIGHT3 = 0x8,
    /* 0x010 */ GX_LIGHT4 = 0x10,
    /* 0x020 */ GX_LIGHT5 = 0x20,
    /* 0x040 */ GX_LIGHT6 = 0x40,
    /* 0x080 */ GX_LIGHT7 = 0x80,
    /* 0x100 */ GX_MAX_LIGHT = 0x100,
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

typedef enum _GXDistAttnFn {
    /* 0x0 */ GX_DA_OFF,
    /* 0x1 */ GX_DA_GENTLE,
    /* 0x2 */ GX_DA_MEDIUM,
    /* 0x3 */ GX_DA_STEEP
} GXDistAttnFn;

typedef enum _GXSpotFn {
    /* 0x0 */ GX_SP_OFF,
    /* 0x1 */ GX_SP_FLAT,
    /* 0x2 */ GX_SP_COS,
    /* 0x3 */ GX_SP_COS2,
    /* 0x4 */ GX_SP_SHARP,
    /* 0x5 */ GX_SP_RING1,
    /* 0x6 */ GX_SP_RING2
} GXSpotFn;

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
    /* 0x4 */ GX_MAX_BLENDMODE,
} GXBlendMode;

typedef enum _GXBlendFactor {
    /* 0x0 */ GX_BL_ZERO,
    /* 0x1 */ GX_BL_ONE,
    /* 0x2 */ GX_BL_SRC_COLOR,
    /* 0x2 */ GX_BL_DST_COLOR = 2,
    /* 0x3 */ GX_BL_INV_SRC_COLOR,
    /* 0x3 */ GX_BL_INV_DST_COLOR = 3,
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
    /* 0x7 */ GX_LO_OR,
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
    /* 0x8 */ GX_MAX_VTXFMT,
} GXVtxFmt;

typedef enum _GXAttr {
    /* 0x00 */ GX_VA_PNMTXIDX,
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
    /* 0x0 */ GX_POS_XY = 0,
    /* 0x1 */ GX_POS_XYZ = 1,
    /* 0x0 */ GX_NRM_XYZ = 0,
    /* 0x1 */ GX_NRM_NBT = 1,
    /* 0x2 */ GX_NRM_NBT3 = 2,
    /* 0x0 */ GX_CLR_RGB = 0,
    /* 0x1 */ GX_CLR_RGBA = 1,
    /* 0x0 */ GX_TEX_S = 0,
    /* 0x1 */ GX_TEX_ST = 1,
} GXCompCnt;

typedef enum _GXCompType {
    /* 0x0 */ GX_U8,
    /* 0x1 */ GX_S8,
    /* 0x2 */ GX_U16,
    /* 0x3 */ GX_S16,
    /* 0x4 */ GX_F32,
    /* 0x0 */ GX_RGB565 = 0,
    /* 0x1 */ GX_RGB8,
    /* 0x2 */ GX_RGBX8,
    /* 0x3 */ GX_RGBA4,
    /* 0x4 */ GX_RGBA6,
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
    /* 0x3 */ GX_MAX_TEVBIAS,
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

typedef enum _GXTevColor {
    /* 0x0 */ GX_CH_RED,
    /* 0x1 */ GX_CH_GREEN,
    /* 0x2 */ GX_CH_BLUE,
    /* 0x3 */ GX_CH_ALPHA,
} GXTevColor;

typedef enum _GXTevScale {
    /* 0x0 */ GX_CS_SCALE_1,
    /* 0x1 */ GX_CS_SCALE_2,
    /* 0x2 */ GX_CS_SCALE_4,
    /* 0x3 */ GX_CS_DIVIDE_2,
    /* 0x4 */ GX_MAX_TEVSCALE
} GXTevScale;

typedef enum _GXTevRegID {
    /* 0x0 */ GX_TEVPREV,
    /* 0x1 */ GX_TEVREG0,
    /* 0x2 */ GX_TEVREG1,
    /* 0x3 */ GX_TEVREG2,
    /* 0x4 */ GX_MAX_TEVREG
} GXTevRegID;

typedef enum _GXTevAlphaArg {
    /* 0x0 */ GX_CA_APREV,
    /* 0x1 */ GX_CA_A0,
    /* 0x2 */ GX_CA_A1,
    /* 0x3 */ GX_CA_A2,
    /* 0x4 */ GX_CA_TEXA,
    /* 0x5 */ GX_CA_RASA,
    /* 0x6 */ GX_CA_KONST,
    /* 0x7 */ GX_CA_ZERO,
} GXTevAlphaArg;

typedef enum _GXTexFmt {
    /* 0x0 */ GX_TF_I4,
    /* 0x1 */ GX_TF_I8,
    /* 0x2 */ GX_TF_IA4,
    /* 0x3 */ GX_TF_IA8,
    /* 0x4 */ GX_TF_RGB565,
    /* 0x5 */ GX_TF_TGB5A3,
    /* 0x6 */ GX_TF_RGBA8,
    /* 0x7 */ GX_TF_CI4,
    /* 0x8 */ GX_TF_CI8,
    /* 0x9 */ GX_TF_CI14,
    /* 0xE */ GX_TF_CMPR = 14,

    /* 0x10 */ _GX_TF_ZTF = 0x10,
    /* 0x20 */ _GX_TF_CTF = 0x20
} GXTexFmt;

typedef enum _GXGamma {
    /* 0x0 */ GX_GM_1_0,
    /* 0x0 */ GX_GM_1_7,
    /* 0x0 */ GX_GM_2_2,
} GXGamma;

typedef enum _GXTlutFmt {
    /* 0x0 */ GX_TL_IA8,
    /* 0x1 */ GX_TL_RGB565,
    /* 0x2 */ GX_TL_RGB5A3,
} GXTlutFmt;

typedef enum _GXTlut {
    /* 0x00 */ GX_TLUT0,
    /* 0x01 */ GX_TLUT1,
    /* 0x02 */ GX_TLUT2,
    /* 0x03 */ GX_TLUT3,
    /* 0x04 */ GX_TLUT4,
    /* 0x05 */ GX_TLUT5,
    /* 0x06 */ GX_TLUT6,
    /* 0x07 */ GX_TLUT7,
    /* 0x08 */ GX_TLUT8,
    /* 0x09 */ GX_TLUT9,
    /* 0x0A */ GX_TLUT10,
    /* 0x0B */ GX_TLUT11,
    /* 0x0C */ GX_TLUT12,
    /* 0x0D */ GX_TLUT13,
    /* 0x0E */ GX_TLUT14,
    /* 0x0F */ GX_TLUT15,
    /* 0x10 */ GX_BIGTLUT0,
    /* 0x11 */ GX_BIGTLUT1,
    /* 0x12 */ GX_BIGTLUT2,
    /* 0x13 */ GX_BIGTLUT3,
} GXTlut;

/* 8-bit version of GXTexFmt for use in structures */
typedef enum _GXTexFmt8 {
    /* 0x20 */ GX_CTF_R4 = (0x0 | _GX_TF_CTF),
    /* 0x22 */ GX_CTF_RA4 = (0x2 | _GX_TF_CTF),
    /* 0x23 */ GX_CTF_RA8 = (0x3 | _GX_TF_CTF),
    /* 0x26 */ GX_CTF_YUVA8 = (0x6 | _GX_TF_CTF),
    /* 0x27 */ GX_CTF_A8 = (0x7 | _GX_TF_CTF),
    /* 0x28 */ GX_CTF_R8 = (0x8 | _GX_TF_CTF),
    /* 0x29 */ GX_CTF_G8 = (0x9 | _GX_TF_CTF),
    /* 0x2A */ GX_CTF_B8 = (0xA | _GX_TF_CTF),
    /* 0x2B */ GX_CTF_RG8 = (0xB | _GX_TF_CTF),
    /* 0x2C */ GX_CTF_GB8 = (0xC | _GX_TF_CTF),
} GXTexFmt8;

typedef enum _GXZTexFmt {
    /* 0x11 */ GX_TF_Z8 = (0x1 | _GX_TF_ZTF),
    /* 0x13 */ GX_TF_Z16 = (0x3 | _GX_TF_ZTF),
    /* 0x16 */ GX_TF_Z24X8 = (0x6 | _GX_TF_ZTF),
    /* 0x30 */ GX_CTF_Z4 = (0x0 | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x39 */ GX_CTF_Z8M = (0x9 | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x3A */ GX_CTF_Z8L = (0xA | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x3C */ GX_CTF_Z16L = (0xC | _GX_TF_ZTF | _GX_TF_CTF),
} GXZTexFmt;

typedef enum _GXTexWrapMode {
    /* 0x0 */ GX_CLAMP,
    /* 0x1 */ GX_REPEAT,
    /* 0x2 */ GX_MIRROR,
    /* 0x3 */ GX_MAX_TEXWRAP_MODE,
} GXTexWrapMode;

typedef enum _GXTexFilter {
    /* 0x0 */ GX_NEAR,
    /* 0x1 */ GX_LINEAR,
    /* 0x2 */ GX_NEAR_MIP_NEAR,
    /* 0x3 */ GX_LIN_MIP_NEAR,
    /* 0x4 */ GX_NEAR_MIP_LIN,
    /* 0x5 */ GX_LIN_MIP_LIN,
} GXTexFilter;

typedef enum _GXAnisotropy {
    /* 0x0 */ GX_ANISO_1,
    /* 0x1 */ GX_ANISO_2,
    /* 0x2 */ GX_ANISO_4,
    /* 0x3 */ GX_MAX_ANISOTROPY,
} GXAnisotropy;

enum GXCITexFmt {
    /* 0x8 */ GX_TF_C4 = 8,
    /* 0x8 */ GX_TF_C8,
    /* 0xA */ GX_TF_C14X2
};

typedef enum _GXTexMtxType {
    /* 0x0 */ GX_MTX3x4,
    /* 0x1 */ GX_MTX2x4
} GXTexMtxType;

typedef enum _GXCompare {
    /* 0x0 */ GX_NEVER,
    /* 0x1 */ GX_LESS,
    /* 0x2 */ GX_EQUAL,
    /* 0x3 */ GX_LEQUAL,
    /* 0x4 */ GX_GREATER,
    /* 0x5 */ GX_NEQUAL,
    /* 0x6 */ GX_GEQUAL,
    /* 0x7 */ GX_ALWAYS,
} GXCompare;

typedef enum _GXAlphaOp {
    /* 0x0 */ GX_AOP_AND,
    /* 0x1 */ GX_AOP_OR,
    /* 0x2 */ GX_AOP_XOR,
    /* 0x3 */ GX_AOP_XNOR,
    /* 0x4 */ GX_MAX_ALPHAOP
} GXAlphaOp;

typedef enum _GXFogType {
    /* 0x0 */ GX_FOG_NONE,
    /* 0x2 */ GX_FOG_LIN = 2,
    /* 0x2 */ GX_FOG_PERSP_LIN = 2,
    /* 0x4 */ GX_FOG_EXP = 4,
    /* 0x4 */ GX_FOG_PERSP_EXP = 4,
    /* 0x5 */ GX_FOG_EXP2,
    /* 0x5 */ GX_FOG_PERSP_EXP2 = 5,
    /* 0x6 */ GX_FOG_REVEXP,
    /* 0x6 */ GX_FOG_PERSP_REVEXP = 6,
    /* 0x7 */ GX_FOG_REVEXP2,
    /* 0x7 */ GX_FOG_PERSP_REVEXP2 = 7,
    /* 0xA */ GX_FOG_ORTHO_LIN = 10,
    /* 0xC */ GX_FOG_ORTHO_EXP = 12,
    /* 0xD */ GX_FOG_ORTHO_EXP2,
    /* 0xE */ GX_FOG_ORTHO_REVEXP,
    /* 0xF */ GX_FOG_ORTHO_REVEXP2,
} GXFogType;

typedef enum _GXProjectionType {
    /* 0x0 */ GX_PERSPECTIVE,
    /* 0x1 */ GX_ORTHOGRAPHIC
} GXProjectionType;

typedef enum _GXTevKAlphaSel {
    /* 0x00 */ GX_TEV_KASEL_1,
    /* 0x01 */ GX_TEV_KASEL_7_8,
    /* 0x02 */ GX_TEV_KASEL_3_4,
    /* 0x03 */ GX_TEV_KASEL_5_8,
    /* 0x04 */ GX_TEV_KASEL_1_2,
    /* 0x05 */ GX_TEV_KASEL_3_8,
    /* 0x06 */ GX_TEV_KASEL_1_4,
    /* 0x07 */ GX_TEV_KASEL_1_8,

    /* 0x10 */ GX_TEV_KASEL_K0_R = 0x10,
    /* 0x11 */ GX_TEV_KASEL_K1_R,
    /* 0x12 */ GX_TEV_KASEL_K2_R,
    /* 0x13 */ GX_TEV_KASEL_K3_R,
    /* 0x14 */ GX_TEV_KASEL_K0_G,
    /* 0x15 */ GX_TEV_KASEL_K1_G,
    /* 0x16 */ GX_TEV_KASEL_K2_G,
    /* 0x17 */ GX_TEV_KASEL_K3_G,
    /* 0x18 */ GX_TEV_KASEL_K0_B,
    /* 0x19 */ GX_TEV_KASEL_K1_B,
    /* 0x1A */ GX_TEV_KASEL_K2_B,
    /* 0x1B */ GX_TEV_KASEL_K3_B,
    /* 0x1C */ GX_TEV_KASEL_K0_A,
    /* 0x1D */ GX_TEV_KASEL_K1_A,
    /* 0x1E */ GX_TEV_KASEL_K2_A,
    /* 0x1F */ GX_TEV_KASEL_K3_A,
} GXTevKAlphaSel;

typedef enum _GXTevKColorSel {
    /* 0x00 */ GX_TEV_KCSEL_1,
    /* 0x01 */ GX_TEV_KCSEL_7_8,
    /* 0x02 */ GX_TEV_KCSEL_3_4,
    /* 0x03 */ GX_TEV_KCSEL_5_8,
    /* 0x04 */ GX_TEV_KCSEL_1_2,
    /* 0x05 */ GX_TEV_KCSEL_3_8,
    /* 0x06 */ GX_TEV_KCSEL_1_4,
    /* 0x07 */ GX_TEV_KCSEL_1_8,
    /* 0x0C */ GX_TEV_KCSEL_K0 = 0xC,
    /* 0x0D */ GX_TEV_KCSEL_K1,
    /* 0x0E */ GX_TEV_KCSEL_K2,
    /* 0x0F */ GX_TEV_KCSEL_K3,
    /* 0x10 */ GX_TEV_KCSEL_K0_R,
    /* 0x11 */ GX_TEV_KCSEL_K1_R,
    /* 0x12 */ GX_TEV_KCSEL_K2_R,
    /* 0x13 */ GX_TEV_KCSEL_K3_R,
    /* 0x14 */ GX_TEV_KCSEL_K0_G,
    /* 0x15 */ GX_TEV_KCSEL_K1_G,
    /* 0x16 */ GX_TEV_KCSEL_K2_G,
    /* 0x17 */ GX_TEV_KCSEL_K3_G,
    /* 0x18 */ GX_TEV_KCSEL_K0_B,
    /* 0x19 */ GX_TEV_KCSEL_K1_B,
    /* 0x1A */ GX_TEV_KCSEL_K2_B,
    /* 0x1B */ GX_TEV_KCSEL_K3_B,
    /* 0x1C */ GX_TEV_KCSEL_K0_A,
    /* 0x1D */ GX_TEV_KCSEL_K1_A,
    /* 0x1E */ GX_TEV_KCSEL_K2_A,
    /* 0x1F */ GX_TEV_KCSEL_K3_A,
} GXTevKColorSel;

typedef enum _GXTevSwapSel {
    /* 0x0 */ GX_TEV_SWAP0,
    /* 0x1 */ GX_TEV_SWAP1,
    /* 0x2 */ GX_TEV_SWAP2,
    /* 0x3 */ GX_TEV_SWAP3,
    /* 0x4 */ GX_MAX_TEVSWAP,
} GXTevSwapSel;

typedef enum _GXTexGenType {
    /* 0x0 */ GX_TG_MTX3x4,
    /* 0x1 */ GX_TG_MTX2x4,
    /* 0x2 */ GX_TG_BUMP0,
    /* 0x3 */ GX_TG_BUMP1,
    /* 0x4 */ GX_TG_BUMP2,
    /* 0x5 */ GX_TG_BUMP3,
    /* 0x6 */ GX_TG_BUMP4,
    /* 0x7 */ GX_TG_BUMP5,
    /* 0x8 */ GX_TG_BUMP6,
    /* 0x9 */ GX_TG_BUMP7,
    /* 0xA */ GX_TG_SRTG,
} GXTexGenType;

typedef enum _GXTexGenSrc {
    /* 0x00 */ GX_TG_POS,
    /* 0x01 */ GX_TG_NRM,
    /* 0x02 */ GX_TG_BINRM,
    /* 0x03 */ GX_TG_TANGENT,
    /* 0x04 */ GX_TG_TEX0,
    /* 0x05 */ GX_TG_TEX1,
    /* 0x06 */ GX_TG_TEX2,
    /* 0x07 */ GX_TG_TEX3,
    /* 0x08 */ GX_TG_TEX4,
    /* 0x09 */ GX_TG_TEX5,
    /* 0x0A */ GX_TG_TEX6,
    /* 0x0B */ GX_TG_TEX7,
    /* 0x0C */ GX_TG_TEXCOORD0,
    /* 0x0D */ GX_TG_TEXCOORD1,
    /* 0x0E */ GX_TG_TEXCOORD2,
    /* 0x0F */ GX_TG_TEXCOORD3,
    /* 0x10 */ GX_TG_TEXCOORD4,
    /* 0x11 */ GX_TG_TEXCOORD5,
    /* 0x12 */ GX_TG_TEXCOORD6,
} GXTexGenSrc;

typedef enum _GXZTexOp {
    /* 0x0 */ GX_ZT_DISABLE,
    /* 0x1 */ GX_ZT_ADD,
    /* 0x2 */ GX_ZT_REPLACE,
    /* 0x3 */ GX_MAX_ZTEXOP,
} GXZTexOp;

typedef enum _GXIndTexStageID {
    /* 0x0 */ GX_INDTEXSTAGE0,
    /* 0x1 */ GX_INDTEXSTAGE1,
    /* 0x2 */ GX_INDTEXSTAGE2,
    /* 0x3 */ GX_INDTEXSTAGE3,
    /* 0x4 */ GX_MAX_INDTEXSTAGE,
} GXIndTexStageID;

typedef enum _GXIndTexScale {
    /* 0x0 */ GX_ITS_1,
    /* 0x1 */ GX_ITS_2,
    /* 0x2 */ GX_ITS_4,
    /* 0x3 */ GX_ITS_8,
    /* 0x4 */ GX_ITS_16,
    /* 0x5 */ GX_ITS_32,
    /* 0x6 */ GX_ITS_64,
    /* 0x7 */ GX_ITS_128,
    /* 0x8 */ GX_ITS_256,
    /* 0x9 */ GX_MAX_ITSCALE,
} GXIndTexScale;

typedef enum _GXIndTexMtxID {
    /* 0x0 */ GX_ITM_OFF,
    /* 0x1 */ GX_ITM_0,
    /* 0x2 */ GX_ITM_1,
    /* 0x3 */ GX_ITM_2,
    /* 0x5 */ GX_ITM_S0 = 5,
    /* 0x6 */ GX_ITM_S1,
    /* 0x7 */ GX_ITM_S2,
    /* 0x9 */ GX_ITM_T0 = 9,
    /* 0xA */ GX_ITM_T1,
    /* 0xB */ GX_ITM_T2,
} GXIndTexMtxID;

typedef enum _GXIndTexFormat {
    /* 0x0 */ GX_ITF_8,
    /* 0x1 */ GX_ITF_5,
    /* 0x2 */ GX_ITF_4,
    /* 0x3 */ GX_ITF_3,
} GXIndTexFormat;

typedef enum _GXIndTexBiasSel {
    /* 0x0 */ GX_ITB_NONE,
    /* 0x1 */ GX_ITB_S,
    /* 0x2 */ GX_ITB_T,
    /* 0x3 */ GX_ITB_ST,
    /* 0x4 */ GX_ITB_U,
    /* 0x5 */ GX_ITB_SU,
    /* 0x6 */ GX_ITB_TU,
    /* 0x7 */ GX_ITB_STU,
} GXIndTexBiasSel;

typedef enum _GXIndTexAlphaSel {
    /* 0x0 */ GX_ITBA_OFF,
    /* 0x1 */ GX_ITBA_S,
    /* 0x2 */ GX_ITBA_T,
    /* 0x3 */ GX_ITBA_U,
} GXIndTexAlphaSel;

typedef enum _GXIndTexWrap {
    /* 0x0 */ GX_ITW_OFF,
    /* 0x1 */ GX_ITW_256,
    /* 0x2 */ GX_ITW_128,
    /* 0x3 */ GX_ITW_64,
    /* 0x4 */ GX_ITW_32,
    /* 0x5 */ GX_ITW_16,
    /* 0x6 */ GX_ITW_0,
} GXIndTexWrap;

typedef enum _GXTexOffset {
    /* 0x0 */ GX_TO_ZERO,
    /* 0x1 */ GX_TO_SIXTEENTH,
    /* 0x2 */ GX_TO_EIGHTH,
    /* 0x3 */ GX_TO_FOURTH,
    /* 0x4 */ GX_TO_HALF,
    /* 0x5 */ GX_TO_ONE,
    /* 0x6 */ GX_MAX_TEXOFFSET,
} GXTexOffset;

typedef enum _GXTevKColorID {
    /* 0x0 */ GX_KCOLOR0,
    /* 0x1 */ GX_KCOLOR1,
    /* 0x2 */ GX_KCOLOR2,
    /* 0x3 */ GX_KCOLOR3,
} GXTevKColorID;

typedef enum _GXTexCacheSize {
    /* 0x0 */ GX_TEXCACHE_32K,
    /* 0x1 */ GX_TEXCACHE_128K,
    /* 0x2 */ GX_TEXCACHE_512K,
    /* 0x3 */ GX_TEXCACHE_NONE,
} GXTexCacheSize;

typedef enum _GXPosNrmMtx {
    GX_PNMTX0 = 3 * 0,
    GX_PNMTX1 = 3 * 1,
    GX_PNMTX2 = 3 * 2,
    GX_PNMTX3 = 3 * 3,
    GX_PNMTX4 = 3 * 4,
    GX_PNMTX5 = 3 * 5,
    GX_PNMTX6 = 3 * 6,
    GX_PNMTX7 = 3 * 7,
    GX_PNMTX8 = 3 * 8,
    GX_PNMTX9 = 3 * 9,
} GXPosNrmMtx;

typedef enum _GXTexMtx {
    GX_TEXMTX0 = 30 + 0 * 3,
    GX_TEXMTX1 = 30 + 1 * 3,
    GX_TEXMTX2 = 30 + 2 * 3,
    GX_TEXMTX3 = 30 + 3 * 3,
    GX_TEXMTX4 = 30 + 4 * 3,
    GX_TEXMTX5 = 30 + 5 * 3,
    GX_TEXMTX6 = 30 + 6 * 3,
    GX_TEXMTX7 = 30 + 7 * 3,
    GX_TEXMTX8 = 30 + 8 * 3,
    GX_TEXMTX9 = 30 + 9 * 3,
    GX_IDENTITY = 60,
};

typedef enum _GXPTTexMtx {
    GX_PTTEXMTX0 = 64 + 0 * 3,
    GX_PTTEXMTX1 = 64 + 1 * 3,
    GX_PTTEXMTX2 = 64 + 2 * 3,
    GX_PTTEXMTX3 = 64 + 3 * 3,
    GX_PTTEXMTX4 = 64 + 4 * 3,
    GX_PTTEXMTX5 = 64 + 5 * 3,
    GX_PTTEXMTX6 = 64 + 6 * 3,
    GX_PTTEXMTX7 = 64 + 7 * 3,
    GX_PTTEXMTX8 = 64 + 8 * 3,
    GX_PTTEXMTX9 = 64 + 9 * 3,
    GX_PTTEXMTX10 = 64 + 10 * 3,
    GX_PTTEXMTX11 = 64 + 11 * 3,
    GX_PTTEXMTX12 = 64 + 12 * 3,
    GX_PTTEXMTX13 = 64 + 13 * 3,
    GX_PTTEXMTX14 = 64 + 14 * 3,
    GX_PTTEXMTX15 = 64 + 15 * 3,
    GX_PTTEXMTX16 = 64 + 16 * 3,
    GX_PTTEXMTX17 = 64 + 17 * 3,
    GX_PTTEXMTX18 = 64 + 18 * 3,
    GX_PTTEXMTX19 = 64 + 19 * 3,
    GX_PTIDENTITY = 125,
};

typedef struct _GXVtxDescList {
    GXAttr attr;
    GXAttrType type;
} GXVtxDescList;

extern "C" {
f32 GXGetYScaleFactor(u16 efb_height, u16 xfb_height);
u16 GXGetNumXfbLines(u32 efb_height, f32 y_scale);

void GXBegin(GXPrimitive, GXVtxFmt, u16);
void GXLoadTexObj(GXTexObj*, GXTexMapID);
void GXInitTexObjLOD(GXTexObj*, GXTexFilter, GXTexFilter, f32, f32, f32, GXBool, GXBool,
                     GXAnisotropy);
void GXInitTexObj(GXTexObj*, void*, u16, u16, GXTexFmt, GXTexWrapMode, GXTexWrapMode, GXBool);
void GXInitTlutObj(GXTlutObj*, void*, GXTlutFmt, u16);
void GXLoadTlut(GXTlutObj*, u32);
void GXInitTexObjCI(GXTexObj*, void*, u16, u16, GXCITexFmt, GXTexWrapMode, GXTexWrapMode, GXBool,
                    u32);
void GXSetNumChans(u8);
void GXSetNumTevStages(u8);
void GXSetNumTexGens(u8);
void GXSetTevOrder(GXTevStageID, GXTexCoordID, GXTexMapID, GXChannelID);
void GXSetChanCtrl(GXChannelID, GXBool, GXColorSrc, GXColorSrc, GXLightID, GXDiffuseFn, GXAttnFn);
void GXSetTevOp(GXTevStageID, GXTevMode);
void GXSetTevColor(GXTevRegID, GXColor);
void GXSetTevColorIn(GXTevStageID, GXTevColorArg, GXTevColorArg, GXTevColorArg, GXTevColorArg);
void GXSetTevAlphaIn(GXTevStageID, GXTevAlphaArg, GXTevAlphaArg, GXTevAlphaArg, GXTevAlphaArg);
void GXSetTevColorOp(GXTevStageID, GXTevOp, GXTevBias, GXTevScale, GXBool, GXTevRegID);
void GXSetTevAlphaOp(GXTevStageID, GXTevOp, GXTevBias, GXTevScale, GXBool, GXTevRegID);
void GXSetTevIndirect(GXTevStageID, _GXIndTexStageID, GXIndTexFormat, GXIndTexBiasSel,
                      GXIndTexMtxID, GXIndTexWrap, GXIndTexWrap, GXBool, GXBool, GXIndTexAlphaSel);
void GXSetBlendMode(GXBlendMode, GXBlendFactor, GXBlendFactor, GXLogicOp);
void GXSetVtxAttrFmt(GXVtxFmt, GXAttr, GXCompCnt, GXCompType, u32);
void GXClearVtxDesc(void);
void GXSetVtxDesc(GXAttr, GXAttrType);
void GXSetArray(GXAttr, const void*, u8);
typedef void (*GXDrawDoneCallback)(void);
void GXSetDrawDoneCallback(GXDrawDoneCallback);
void GXDrawDone(void);
void GXAbortFrame(void);
void GXFlush(void);

struct OSThread;
OSThread* GXSetCurrentGXThread(void);
OSThread* GXGetCurrentGXThread(void);

void GXCopyTex(void*, GXBool);
void GXGetProjectionv(f32*);
u32 GXGetTexBufferSize(u16 width, u16 height, u32 format, GXBool is_mip_map, u8 max_lod);
void GXGetViewportv(f32*);
void GXInitLightColor(GXLightObj*, GXColor);
void GXInitLightDir(GXLightObj*, f32, f32, f32);
void GXInitLightDistAttn(GXLightObj*, f32, f32, GXDistAttnFn);
void GXInitLightPos(GXLightObj*, f32, f32, f32);
void GXInitLightSpot(GXLightObj*, f32, GXSpotFn);
void GXInvalidateTexAll(void);
void GXLoadLightObjImm(GXLightObj*, GXLightID);
void GXLoadPosMtxImm(Mtx, u32);
void GXLoadTexMtxImm(Mtx, u32, GXTexMtxType);
void GXPixModeSync(void);
void GXProject(f32, f32, f32, Mtx, f32*, f32*, f32*, f32*, f32*);
void GXSetAlphaCompare(GXCompare, u8, GXAlphaOp, GXCompare, u8);
void GXSetAlphaUpdate(GXBool);
void GXSetChanAmbColor(GXChannelID, GXColor);
void GXSetChanMatColor(GXChannelID, GXColor);
void GXSetClipMode(GXBool);
void GXSetCoPlanar(GXBool);
void GXSetColorUpdate(GXBool);
void GXSetCopyFilter(GXBool, u8[12][2], GXBool, u8[7]);
void GXSetCullMode(GXCullMode);
void GXSetCurrentMtx(u32);
void GXSetDither(GXBool);
void GXSetFog(GXFogType, f32, f32, f32, f32, GXColor);
void GXSetFogRangeAdj(GXBool, u16, GXFogAdjTable*);
void GXSetNumIndStages(u8);
void GXSetProjection(Mtx44, GXProjectionType);
void GXSetScissor(u32, u32, u32, u32);
void GXSetTevColorS10(GXTevRegID, GXColorS10);
void GXSetTevKAlphaSel(GXTevStageID, GXTevKAlphaSel);
void GXSetTevSwapMode(GXTevStageID, GXTevSwapSel, GXTevSwapSel);
void GXSetTevSwapModeTable(GXTevSwapSel, GXTevColor, GXTevColor, GXTevColor, GXTevColor);
void GXSetTexCoordGen2(GXTexCoordID, GXTexGenType, GXTexGenSrc, u32, GXBool, u32);
void GXSetTexCopyDst(u16, u16, GXTexFmt, GXBool);
void GXSetTexCopySrc(u16, u16, u16, u16);
void GXSetViewport(f32, f32, f32, f32, f32, f32);
void GXSetZCompLoc(GXBool);
void GXSetZMode(GXBool, GXCompare, GXBool);
void GXSetZTexture(GXZTexOp, GXZTexFmt, u32);
void GXSetPointSize(u8, GXTexOffset);
void GXSetLineWidth(u8, GXTexOffset);
void GXSetTevDirect(GXTevStageID);
void GXSetTevKColor(GXTevKColorID, GXColor);
void GXSetTevKColorSel(GXTevStageID, GXTevKColorSel);
void GXGetScissor(u32*, u32*, u32*, u32*);
void GXSetIndTexMtx(GXIndTexMtxID, Mtx23, s8);
void GXSetIndTexCoordScale(GXIndTexStageID, GXIndTexScale, GXIndTexScale);
void GXSetIndTexOrder(GXIndTexStageID, GXTexCoordID, GXTexMapID);
void GXEnableTexOffsets(GXTexCoordID, GXBool, GXBool);

#define GFX_FIFO(T) (*(volatile T*)0xCC008000)

inline void GXPosition3f32(f32 x, f32 y, f32 z) {
    GFX_FIFO(f32) = x;
    GFX_FIFO(f32) = y;
    GFX_FIFO(f32) = z;
}

inline void GXColor1u32(u32 c) {
    GFX_FIFO(u32) = c;
}

inline void GXTexCoord2f32(f32 s, f32 t) {
    GFX_FIFO(f32) = s;
    GFX_FIFO(f32) = t;
}

inline void GXEnd() {}

};

#endif
