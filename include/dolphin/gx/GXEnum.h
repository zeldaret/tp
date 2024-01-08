#ifndef GXENUM_H
#define GXENUM_H

#include "dolphin/types.h"

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

typedef enum _GXBoolVal {
    /* 0x0 */ GX_FALSE,
    /* 0x1 */ GX_TRUE,
    /* 0x0 */ GX_DISABLE = 0,
    /* 0x1 */ GX_ENABLE
} GXBoolVal;

typedef u8 GXBool;

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
    /* 0x000 */ GX_LIGHT_NULL = 0,
    /* 0x001 */ GX_LIGHT0 = 1 << 0,
    /* 0x002 */ GX_LIGHT1 = 1 << 1,
    /* 0x004 */ GX_LIGHT2 = 1 << 2,
    /* 0x008 */ GX_LIGHT3 = 1 << 3,
    /* 0x010 */ GX_LIGHT4 = 1 << 4,
    /* 0x020 */ GX_LIGHT5 = 1 << 5,
    /* 0x040 */ GX_LIGHT6 = 1 << 6,
    /* 0x080 */ GX_LIGHT7 = 1 << 7,
    /* 0x100 */ GX_MAX_LIGHT = 1 << 8,
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
    /* 0x11 */ GX_TF_Z8 = (0x1 | _GX_TF_ZTF),
    /* 0x13 */ GX_TF_Z16 = (0x3 | _GX_TF_ZTF),
    /* 0x16 */ GX_TF_Z24X8 = (0x6 | _GX_TF_ZTF),
    /* 0x20 */ _GX_TF_CTF = 0x20,
    /* 0x28 */ _GX_CTF_R8 = 0x28,
    /* 0x30 */ GX_CTF_Z4 = (0x0 | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x39 */ GX_CTF_Z8M = (0x9 | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x3A */ GX_CTF_Z8L = (0xA | _GX_TF_ZTF | _GX_TF_CTF),
    /* 0x3C */ GX_CTF_Z16L = (0xC | _GX_TF_ZTF | _GX_TF_CTF),
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
    /* 0x10 */ GX_MAX_TLUT,
    /* 0x10 */ GX_BIGTLUT0 = 0x10,
    /* 0x11 */ GX_BIGTLUT1,
    /* 0x12 */ GX_BIGTLUT2,
    /* 0x13 */ GX_BIGTLUT3,
    /* 0x13 */ GX_MAX_BIGTLUT = 4,
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

typedef enum _GXCITexFmt {
    /* 0x8 */ GX_TF_C4 = 8,
    /* 0x8 */ GX_TF_C8,
    /* 0xA */ GX_TF_C14X2
} GXCITexFmt;

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
    /* 0x13 */ GX_TG_COLOR0,
	/* 0x14 */ GX_TG_COLOR1,
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
    /* 0x4 */ GX_ITM_3,
    /* 0x5 */ GX_ITM_S0 = 5,
    /* 0x6 */ GX_ITM_S1,
    /* 0x7 */ GX_ITM_S2,
    /* 0x8 */ GX_ITM_S3,
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
} GXTexMtx;

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
} GXPTTexMtx;

typedef enum _GXFBClamp {
    /* 0x0 */ GX_CLAMP_NONE,
    /* 0x1 */ GX_CLAMP_TOP,
    /* 0x2 */ GX_CLAMP_BOTTOM,
} GXFBClamp;

typedef enum _GXPixelFmt {
    /* 0x0 */ GX_PF_RGB8_Z24,
    /* 0x1 */ GX_PF_RGBA6_Z24,
    /* 0x2 */ GX_PF_RGB565_Z16,
    /* 0x3 */ GX_PF_Z24,
    /* 0x4 */ GX_PF_Y8,
    /* 0x5 */ GX_PF_U8,
    /* 0x6 */ GX_PF_V8,
    /* 0x7 */ GX_PF_YUV420,
    /* 0x8 */ GX_PF_MAX,
} GXPixelFmt;

typedef enum _GXZFmt16 {
    /* 0x0 */ GX_ZC_LINEAR,
    /* 0x1 */ GX_ZC_NEAR,
    /* 0x2 */ GX_ZC_MID,
    /* 0x3 */ GX_ZC_FAR,
} GXZFmt16;

typedef enum _GXCommand {
    GX_CMD_LOAD_INDX_A = 0x20,
    GX_CMD_LOAD_INDX_B = 0x28,
    GX_CMD_LOAD_INDX_C = 0x30,
    GX_CMD_LOAD_INDX_D = 0x38,

    GX_CMD_LOAD_CP_REG = 0x08,
    GX_CMD_LOAD_XF_REG = 0x10,
} GXCommand;

typedef enum _GXClipMode {
    /* 0x0 */ GX_CLIP_ENABLE,
    /* 0x1 */ GX_CLIP_DISABLE,
} GXClipMode;

typedef enum _GXCopyMode {
    /* 0x0 */ GX_COPY_PROGRESSIVE,
    /* 0x1 */ GX_COPY_INTLC_EVEN,
    /* 0x2 */ GX_COPY_INTLC_ODD,
} GXCopyMode;

typedef enum _GXAlphaReadMode {
    /* 0x0 */ GX_READ_00,
    /* 0x1 */ GX_READ_FF,
    /* 0x2 */ GX_READ_NONE,
} GXAlphaReadMode;

typedef enum _GXTlutSize {
    /* 0x001 */ GX_TLUT_16 = 1,
    /* 0x002 */ GX_TLUT_32 = 2,
    /* 0x004 */ GX_TLUT_64 = 4,
    /* 0x008 */ GX_TLUT_128 = 8,
    /* 0x010 */ GX_TLUT_256 = 16,
    /* 0x020 */ GX_TLUT_512 = 32,
    /* 0x040 */ GX_TLUT_1K = 64,
    /* 0x080 */ GX_TLUT_2K = 128,
    /* 0x100 */ GX_TLUT_4K = 256,
    /* 0x200 */ GX_TLUT_8K = 512,
    /* 0x400 */ GX_TLUT_16K = 1024,
} GXTlutSize;

typedef enum _GXDirtyFlag {
    GX_DIRTY_SU_TEX = (1 << 0),
    GX_DIRTY_BP_MASK = (1 << 1),
    GX_DIRTY_GEN_MODE = (1 << 2),
    GX_DIRTY_VCD = (1 << 3),
    GX_DIRTY_VAT = (1 << 4),
    GX_DIRTY_AMB_COLOR0 = (1 << 8),
    GX_DIRTY_AMB_COLOR1 = (1 << 9),
    GX_DIRTY_MAT_COLOR0 = (1 << 10),
    GX_DIRTY_MAT_COLOR1 = (1 << 11),
    GX_DIRTY_MTX_IDX = (1 << 26),
    GX_DIRTY_PROJECTION = (1 << 27),
    GX_DIRTY_VIEWPORT = (1 << 28),

    GX_DIRTY_VLIM = GX_DIRTY_VCD | GX_DIRTY_VAT,

    GX_AMB_MAT_MASK = GX_DIRTY_AMB_COLOR0 | GX_DIRTY_AMB_COLOR1 |
                      GX_DIRTY_MAT_COLOR0 | GX_DIRTY_MAT_COLOR1,
    GX_LIGHT_CHAN_MASK = 0x100F000,
    GX_TEX_GEN_MASK = 0x2FF0000,
} GXDirtyFlag;

// CP locator for vertex descriptor (lo).
typedef enum _GXCPVCDLo {
	// Position matrix idx [31]
	GX_CP_VCD_LO_POSMTXIDX_ST  = 31,
	GX_CP_VCD_LO_POSMTXIDX_END = 31,

	// Tex 0 matrix idx [30]
	GX_CP_VCD_LO_TEX0MTXIDX_ST  = 30,
	GX_CP_VCD_LO_TEX0MTXIDX_END = 30,

	// Tex 1 matrix idx [29]
	GX_CP_VCD_LO_TEX1MTXIDX_ST  = 29,
	GX_CP_VCD_LO_TEX1MTXIDX_END = 29,

	// Tex 2 matrix idx [28]
	GX_CP_VCD_LO_TEX2MTXIDX_ST  = 28,
	GX_CP_VCD_LO_TEX2MTXIDX_END = 28,

	// Tex 3 matrix idx [27]
	GX_CP_VCD_LO_TEX3MTXIDX_ST  = 27,
	GX_CP_VCD_LO_TEX3MTXIDX_END = 27,

	// Tex 4 matrix idx [26]
	GX_CP_VCD_LO_TEX4MTXIDX_ST  = 26,
	GX_CP_VCD_LO_TEX4MTXIDX_END = 26,

	// Tex 5 matrix idx [25]
	GX_CP_VCD_LO_TEX5MTXIDX_ST  = 25,
	GX_CP_VCD_LO_TEX5MTXIDX_END = 25,

	// Tex 6 matrix idx [24]
	GX_CP_VCD_LO_TEX6MTXIDX_ST  = 24,
	GX_CP_VCD_LO_TEX6MTXIDX_END = 24,

	// Tex 7 matrix idx [23]
	GX_CP_VCD_LO_TEX7MTXIDX_ST  = 23,
	GX_CP_VCD_LO_TEX7MTXIDX_END = 23,

	// Position [21-22]
	GX_CP_VCD_LO_POS_ST  = 21,
	GX_CP_VCD_LO_POS_END = 22,

	// Normal [19-20]
	GX_CP_VCD_LO_NRM_ST  = 19,
	GX_CP_VCD_LO_NRM_END = 20,

	// Color diffused [17-18]
	GX_CP_VCD_LO_CLRDIF_ST  = 17,
	GX_CP_VCD_LO_CLRDIF_END = 18,

	// Color specular [15-16]
	GX_CP_VCD_LO_CLRSPEC_ST  = 15,
	GX_CP_VCD_LO_CLRSPEC_END = 16,
} GXCPVCDLo;

// CP locators for vertex descriptor (hi).
typedef enum _GXCPVCDHi {
	// Tex0 coordinates [30-31]
	GX_CP_VCD_HI_TEX0COORD_ST  = 30,
	GX_CP_VCD_HI_TEX0COORD_END = 31,

	// Tex1 coordinates [28-29]
	GX_CP_VCD_HI_TEX1COORD_ST  = 28,
	GX_CP_VCD_HI_TEX1COORD_END = 29,

	// Tex2 coordinates [26-27]
	GX_CP_VCD_HI_TEX2COORD_ST  = 26,
	GX_CP_VCD_HI_TEX2COORD_END = 27,

	// Tex3 coordinates [24-25]
	GX_CP_VCD_HI_TEX3COORD_ST  = 24,
	GX_CP_VCD_HI_TEX3COORD_END = 25,

	// Tex4 coordinates [22-23]
	GX_CP_VCD_HI_TEX4COORD_ST  = 22,
	GX_CP_VCD_HI_TEX4COORD_END = 23,

	// Tex5 coordinates [20-21]
	GX_CP_VCD_HI_TEX5COORD_ST  = 20,
	GX_CP_VCD_HI_TEX5COORD_END = 21,

	// Tex6 coordinates [18-19]
	GX_CP_VCD_HI_TEX6COORD_ST  = 18,
	GX_CP_VCD_HI_TEX6COORD_END = 19,

	// Tex7 coordinates [16-17]
	GX_CP_VCD_HI_TEX7COORD_ST  = 16,
	GX_CP_VCD_HI_TEX7COORD_END = 17,
} GXCPVCDHi;

// Command processor registers.
typedef enum _GXCPRegs {
	GX_CP_REG_MTXIDXA     = 0x30, // Matrix index A
	GX_CP_REG_MTXIDXB     = 0x40, // Matrix index B
	GX_CP_REG_VCD_LO      = 0x50, // Vertex descriptor (lo)
	GX_CP_REG_VCD_HI      = 0x60, // Vertex descriptor (hi)
	GX_CP_REG_VAT_GRP0    = 0x70, // Vertex attribute table (group 0)
	GX_CP_REG_VAT_GRP1    = 0x80, // Vertex attribute table (group 1)
	GX_CP_REG_VAT_GRP2    = 0x90, // Vertex attribute table (group 2)
	GX_CP_REG_ARRAYBASE   = 0xA0, // Vertex array start/base
	GX_CP_REG_ARRAYSTRIDE = 0xB0, // Vertex array stride
} GXCPRegs;

// Transform unit registers.
typedef enum _GXXFRegs {
	GX_XF_REG_ERROR        = 0x1000,
	GX_XF_REG_DIAGNOSTICS  = 0x1001,
	GX_XF_REG_STATE0       = 0x1002,
	GX_XF_REG_STATE1       = 0x1003,
	GX_XF_REG_CLOCK        = 0x1004,
	GX_XF_REG_CLIPDISABLE  = 0x1005,
	GX_XF_REG_PERF0        = 0x1006,
	GX_XF_REG_PERF1        = 0x1007,
	GX_XF_REG_INVERTEXSPEC = 0x1008,
	GX_XF_REG_NUMCOLORS    = 0x1009,
	GX_XF_REG_AMBIENT0     = 0x100A,
	GX_XF_REG_AMBIENT1     = 0x100B,
	GX_XF_REG_MATERIAL0    = 0x100C,
	GX_XF_REG_MATERIAL1    = 0x100D,
	GX_XF_REG_COLOR0CNTRL  = 0x100E,
	GX_XF_REG_COLOR1CNTRL  = 0x100F,
	GX_XF_REG_ALPHA0CNTRL  = 0x1010,
	GX_XF_REG_ALPHA1CNTRL  = 0x1011,
	GX_XF_REG_DUALTEXTRAN  = 0x1012,
	GX_XF_REG_MATRIXINDEX0 = 0x1018,
	GX_XF_REG_MATRIXINDEX1 = 0x1019,
	GX_XF_REG_SCALEX       = 0x101A,
	GX_XF_REG_SCALEY       = 0x101B,
	GX_XF_REG_SCALEZ       = 0x101C,
	GX_XF_REG_OFFSETX      = 0x101D,
	GX_XF_REG_OFFSETY      = 0x101E,
	GX_XF_REG_OFFSETZ      = 0x101F,
	GX_XF_REG_PROJECTIONA  = 0x1020,
	GX_XF_REG_PROJECTIONB  = 0x1021,
	GX_XF_REG_PROJECTIONC  = 0x1022,
	GX_XF_REG_PROJECTIOND  = 0x1023,
	GX_XF_REG_PROJECTIONE  = 0x1024,
	GX_XF_REG_PROJECTIONF  = 0x1025,
	GX_XF_REG_PROJECTORTHO = 0x1026,
	GX_XF_REG_NUMTEX       = 0x103F,
	GX_XF_REG_TEX0         = 0x1040,
	GX_XF_REG_TEX1         = 0x1041,
	GX_XF_REG_TEX2         = 0x1042,
	GX_XF_REG_TEX3         = 0x1043,
	GX_XF_REG_TEX4         = 0x1044,
	GX_XF_REG_TEX5         = 0x1045,
	GX_XF_REG_TEX6         = 0x1046,
	GX_XF_REG_TEX7         = 0x1047,
	GX_XF_REG_DUALTEX0     = 0x1050,
	GX_XF_REG_DUALTEX1     = 0x1051,
	GX_XF_REG_DUALTEX2     = 0x1052,
	GX_XF_REG_DUALTEX3     = 0x1053,
	GX_XF_REG_DUALTEX4     = 0x1054,
	GX_XF_REG_DUALTEX5     = 0x1055,
	GX_XF_REG_DUALTEX6     = 0x1056,
	GX_XF_REG_DUALTEX7     = 0x1057,
} GXXFRegs;

// Commands for interacting with the GXFifo pipe.
typedef enum _GXFifoCmd {
	GX_FIFO_CMD_NOOP = 0x00, // no operation

	GX_FIFO_CMD_LOAD_BP_REG = 0x61, // load blitting processor reg
	GX_FIFO_CMD_LOAD_CP_REG = 0x08, // load command processor reg
	GX_FIFO_CMD_LOAD_XF_REG = 0x10, // load transform unit reg

	GX_FIFO_CMD_LOAD_INDX_A = 0x20, // load index A
	GX_FIFO_CMD_LOAD_INDX_B = 0x28, // load index B
	GX_FIFO_CMD_LOAD_INDX_C = 0x30, // load index C
	GX_FIFO_CMD_LOAD_INDX_D = 0x38, // load index D

	GX_FIFO_CMD_CALL_DL   = 0x40, // call displaylist
	GX_FIFO_CMD_INVAL_VTX = 0x48, // invalid vertex

} GXFifoCmd;

// CP locator for vertex attribute table (group 0).
typedef enum _GXCPVATGrp0 {
	// Position count [31-31]
	GX_CP_VAT_GRP0_POS_CNT_ST  = 31,
	GX_CP_VAT_GRP0_POS_CNT_END = 31,

	// Position type [28-30]
	GX_CP_VAT_GRP0_POS_TYPE_ST  = 28,
	GX_CP_VAT_GRP0_POS_TYPE_END = 30,

	// Position shift [23-27]
	GX_CP_VAT_GRP0_POS_SHIFT_ST  = 23,
	GX_CP_VAT_GRP0_POS_SHIFT_END = 27,

	// Normal count [22-22]
	GX_CP_VAT_GRP0_NRM_CNT_ST  = 22,
	GX_CP_VAT_GRP0_NRM_CNT_END = 22,

	// Normal type [19-21]
	GX_CP_VAT_GRP0_NRM_TYPE_ST  = 19,
	GX_CP_VAT_GRP0_NRM_TYPE_END = 21,

	// Color diffused count [18-18]
	GX_CP_VAT_GRP0_CLRDIFF_CNT_ST  = 18,
	GX_CP_VAT_GRP0_CLRDIFF_CNT_END = 18,

	// Color diffused type [15-17]
	GX_CP_VAT_GRP0_CLRDIFF_TYPE_ST  = 15,
	GX_CP_VAT_GRP0_CLRDIFF_TYPE_END = 17,

	// Color specular count [14-14]
	GX_CP_VAT_GRP0_CLRSPEC_CNT_ST  = 14,
	GX_CP_VAT_GRP0_CLRSPEC_CNT_END = 14,

	// Color specular type [11-13]
	GX_CP_VAT_GRP0_CLRSPEC_TYPE_ST  = 11,
	GX_CP_VAT_GRP0_CLRSPEC_TYPE_END = 13,

	// Tex0 coord count [10-10]
	GX_CP_VAT_GRP0_TXC0_CNT_ST  = 10,
	GX_CP_VAT_GRP0_TXC0_CNT_END = 10,

	// Tex0 coord type [7-9]
	GX_CP_VAT_GRP0_TXC0_TYPE_ST  = 7,
	GX_CP_VAT_GRP0_TXC0_TYPE_END = 9,

	// Tex0 coord shift [2-6]
	GX_CP_VAT_GRP0_TXC0_SHIFT_ST  = 2,
	GX_CP_VAT_GRP0_TXC0_SHIFT_END = 6,

	// Byte dequantised [1-1]
	GX_CP_VAT_GRP0_BYTEDEQ_ST  = 1,
	GX_CP_VAT_GRP0_BYTEDEQ_END = 1,

	// Normal index 3 [0-0] (Input will be treated as three staggered indices (one per triple biased by component size) into normal table))
	GX_CP_VAT_GRP0_NRMIDX3_ST  = 0,
	GX_CP_VAT_GRP0_NRMIDX3_END = 0,
} GXCPVATGrp0;

// CP locators for vertex attribute table (group 1).
typedef enum _GXCPVATGrp1 {
	// Tex1 coord count [31-31]
	GX_CP_VAT_GRP1_TXC1_CNT_ST  = 31,
	GX_CP_VAT_GRP1_TXC1_CNT_END = 31,

	// Tex1 coord type [28-30]
	GX_CP_VAT_GRP1_TXC1_TYPE_ST  = 28,
	GX_CP_VAT_GRP1_TXC1_TYPE_END = 30,

	// Tex1 coord shift [23-27]
	GX_CP_VAT_GRP1_TXC1_SHIFT_ST  = 23,
	GX_CP_VAT_GRP1_TXC1_SHIFT_END = 27,

	// Tex2 coord count [22-22]
	GX_CP_VAT_GRP1_TXC2_CNT_ST  = 22,
	GX_CP_VAT_GRP1_TXC2_CNT_END = 22,

	// Tex2 coord type [19-21]
	GX_CP_VAT_GRP1_TXC2_TYPE_ST  = 19,
	GX_CP_VAT_GRP1_TXC2_TYPE_END = 21,

	// Tex2 coord shift [14-18]
	GX_CP_VAT_GRP1_TXC2_SHIFT_ST  = 14,
	GX_CP_VAT_GRP1_TXC2_SHIFT_END = 18,

	// Tex3 coord count [13-13]
	GX_CP_VAT_GRP1_TXC3_CNT_ST  = 13,
	GX_CP_VAT_GRP1_TXC3_CNT_END = 13,

	// Tex3 coord type [10-12]
	GX_CP_VAT_GRP1_TXC3_TYPE_ST  = 10,
	GX_CP_VAT_GRP1_TXC3_TYPE_END = 12,

	// Tex3 coord shift [5-9]
	GX_CP_VAT_GRP1_TXC3_SHIFT_ST  = 5,
	GX_CP_VAT_GRP1_TXC3_SHIFT_END = 9,

	// Tex4 coord count [4-4]
	GX_CP_VAT_GRP1_TXC4_CNT_ST  = 4,
	GX_CP_VAT_GRP1_TXC4_CNT_END = 4,

	// Tex4 coord type [1-3]
	GX_CP_VAT_GRP1_TXC4_TYPE_ST  = 1,
	GX_CP_VAT_GRP1_TXC4_TYPE_END = 3,

} GXCPVATGrp1;

// CP locators for vertex attribute table (group 2).
typedef enum _GXCPVATGrp2 {
	// Tex4 coord shift [27-31]
	GX_CP_VAT_GRP2_TXC4_SHIFT_ST  = 27,
	GX_CP_VAT_GRP2_TXC4_SHIFT_END = 31,

	// Tex5 coord count [26-26]
	GX_CP_VAT_GRP2_TXC5_CNT_ST  = 26,
	GX_CP_VAT_GRP2_TXC5_CNT_END = 26,

	// Tex5 coord type [23-25]
	GX_CP_VAT_GRP2_TXC5_TYPE_ST  = 23,
	GX_CP_VAT_GRP2_TXC5_TYPE_END = 25,

	// Tex5 coord shift [18-22]
	GX_CP_VAT_GRP2_TXC5_SHIFT_ST  = 18,
	GX_CP_VAT_GRP2_TXC5_SHIFT_END = 22,

	// Tex6 coord count [17-17]
	GX_CP_VAT_GRP2_TXC6_CNT_ST  = 17,
	GX_CP_VAT_GRP2_TXC6_CNT_END = 17,

	// Tex6 coord type [14-16]
	GX_CP_VAT_GRP2_TXC6_TYPE_ST  = 14,
	GX_CP_VAT_GRP2_TXC6_TYPE_END = 16,

	// Tex6 coord shift [9-13]
	GX_CP_VAT_GRP2_TXC6_SHIFT_ST  = 9,
	GX_CP_VAT_GRP2_TXC6_SHIFT_END = 13,

	// Tex7 coord count [8-8]
	GX_CP_VAT_GRP2_TXC7_CNT_ST  = 8,
	GX_CP_VAT_GRP2_TXC7_CNT_END = 8,

	// Tex7 coord type [5-7]
	GX_CP_VAT_GRP2_TXC7_TYPE_ST  = 5,
	GX_CP_VAT_GRP2_TXC7_TYPE_END = 7,

	// Tex7 coord shift [0-4]
	GX_CP_VAT_GRP2_TXC7_SHIFT_ST  = 0,
	GX_CP_VAT_GRP2_TXC7_SHIFT_END = 4,
} GXCPVATGrp2;

// BP GenMode locators.
typedef enum _GXBPGenMode {
	// Active texture counts [28-31]
	GX_BP_GENMODE_NUMTEX_ST  = 28,
	GX_BP_GENMODE_NUMTEX_END = 31,

	// Color/channel counts [25-27]
	GX_BP_GENMODE_NUMCOLORS_ST  = 25,
	GX_BP_GENMODE_NUMCOLORS_END = 27,

	// Multisample mode [22-22]
	GX_BP_GENMODE_MULTISAMPLE_ST  = 22,
	GX_BP_GENMODE_MULTISAMPLE_END = 22,

	// Cull mode [16-17]
	GX_BP_GENMODE_CULLMODE_ST  = 16,
	GX_BP_GENMODE_CULLMODE_END = 17,

	// Indirect stage counts [13-15]
	GX_BP_GENMODE_NUMINDSTAGES_ST  = 13,
	GX_BP_GENMODE_NUMINDSTAGES_END = 15,

	// Toggle co-planar/Z-freeze [12-12]
	GX_BP_GENMODE_COPLANAR_ST  = 12,
	GX_BP_GENMODE_COPLANAR_END = 12,
} GXBPGenMode;

// Texture register fields for XF (transform) unit.
typedef enum _GXXfTexReg {
	GX_XF_TEX_PROJ_ST  = 0, // (s,t) (2x4)
	GX_XF_TEX_PROJ_STQ = 1, // (s,t,q) (3x4)

	GX_XF_TEX_FORM_AB11 = 0, // (A, B, 1.0f, 1.0f), used for regular tex src
	GX_XF_TEX_FORM_ABC1 = 1, // (A, B, C, 1.0f), used for geometry/normal src
} GXXfTexReg;

// XF locators for textures.
typedef enum _GXXFTex {
	// Projection type [30-30]
	GX_XF_TEX_PROJTYPE_ST  = 30,
	GX_XF_TEX_PROJTYPE_END = 30,

	// Input format [29-29]
	GX_XF_TEX_INPUTFORM_ST  = 29,
	GX_XF_TEX_INPUTFORM_END = 29,

	// Texture gen type [25-27]
	GX_XF_TEX_TEXGENTYPE_ST  = 25,
	GX_XF_TEX_TEXGENTYPE_END = 27,

	// Source row [20-24]
	GX_XF_TEX_SRCROW_ST  = 20,
	GX_XF_TEX_SRCROW_END = 24,

	// Bump source texture [17-19]
	GX_XF_TEX_BUMPSRCTEX_ST  = 17,
	GX_XF_TEX_BUMPSRCTEX_END = 19,

	// Bump source light [14-16]
	GX_XF_TEX_BUMPSRCLIGHT_ST  = 14,
	GX_XF_TEX_BUMPSRCLIGHT_END = 16,
} GXXFTex;

// XF locators for dual textures.
typedef enum _GXXFDualTex {
	// Base row of the transform matrix [26-31]
	GX_XF_DUALTEX_BASEROW_ST  = 26,
	GX_XF_DUALTEX_BASEROW_END = 31,

	// Normalise texcoord before sending transform [23-23]
	GX_XF_DUALTEX_NORMALISE_ST  = 23,
	GX_XF_DUALTEX_NORMALISE_END = 23,
} GXXFDualTex;

// General texture commands.
typedef enum _GXXfTexGen {
	GX_XF_TG_REGULAR = 0, // Regular; transform incoming data.
	GX_XF_TG_BUMP    = 1, // Texgen bump mapping.
	GX_XF_TG_CLR0    = 2, // Color texgen for color 0 (s,t) = (r, g:b)
	GX_XF_TG_CLR1    = 3, // Color texgen for color 1 (s,t) = (r, g:b)
} GXXfTexGen;

// XF locators for matrix index 0.
typedef enum _GXXFMtxIdx0 {
	// Geometry [26-31]
	GX_XF_MTXIDX0_GEOM_ST  = 26,
	GX_XF_MTXIDX0_GEOM_END = 31,

	// Tex 0 [20-25]
	GX_XF_MTXIDX0_TEX0_ST  = 20,
	GX_XF_MTXIDX0_TEX0_END = 25,

	// Tex 1 [14-19]
	GX_XF_MTXIDX0_TEX1_ST  = 14,
	GX_XF_MTXIDX0_TEX1_END = 19,

	// Tex 2 [8-13]
	GX_XF_MTXIDX0_TEX2_ST  = 8,
	GX_XF_MTXIDX0_TEX2_END = 13,

	// Tex 3 [2-7]
	GX_XF_MTXIDX0_TEX3_ST  = 2,
	GX_XF_MTXIDX0_TEX3_END = 7,
} GXXFMtxIdx0;

// XF locators for matrix index 1.
typedef enum _GXXFMtxIdx1 {
	// Tex 4 [26-31]
	GX_XF_MTXIDX1_TEX4_ST  = 26,
	GX_XF_MTXIDX1_TEX4_END = 31,

	// Tex 5 [20-25]
	GX_XF_MTXIDX1_TEX5_ST  = 20,
	GX_XF_MTXIDX1_TEX5_END = 25,

	// Tex 6 [14-19]
	GX_XF_MTXIDX1_TEX6_ST  = 14,
	GX_XF_MTXIDX1_TEX6_END = 19,

	// Tex 7 [8-13]
	GX_XF_MTXIDX1_TEX7_ST  = 8,
	GX_XF_MTXIDX1_TEX7_END = 13,
} GXXFMtxIdx1;

// Blitting processor registers.
typedef enum _GXBPRegs {
	// gen mode
	GX_BP_REG_GENMODE = 0x0, // gen mode

	// display copy filters
	GX_BP_REG_DISPCOPYFILTER0 = 0x1, // display copy filter 0
	GX_BP_REG_DISPCOPYFILTER1 = 0x2, // display copy filter 1
	GX_BP_REG_DISPCOPYFILTER2 = 0x3, // display copy filter 2
	GX_BP_REG_DISPCOPYFILTER3 = 0x4, // display copy filter 3

	// indirect matrices
	GX_BP_REG_INDMTX0A = 0x6, // indirect matrix 0A
	GX_BP_REG_INDMTX0B = 0x7, // indirect matrix 0B
	GX_BP_REG_INDMTX0C = 0x8, // indirect matrix 0C
	GX_BP_REG_INDMTX1A = 0x9, // indirect matrix 1A
	GX_BP_REG_INDMTX1B = 0xA, // indirect matrix 1B
	GX_BP_REG_INDMTX1C = 0xB, // indirect matrix 1C
	GX_BP_REG_INDMTX2A = 0xC, // indirect matrix 2A
	GX_BP_REG_INDMTX2B = 0xD, // indirect matrix 2B
	GX_BP_REG_INDMTX2C = 0xE, // indirect matrix 2C
	GX_BP_REG_INDIMASK = 0xF, // indirect mask

	// indirect TEV stages
	GX_BP_REG_INDTEVSTAGE0  = 0x10, // indirect TEV stage 0
	GX_BP_REG_INDTEVSTAGE1  = 0x11, // indirect TEV stage 1
	GX_BP_REG_INDTEVSTAGE2  = 0x12, // indirect TEV stage 2
	GX_BP_REG_INDTEVSTAGE3  = 0x13, // indirect TEV stage 3
	GX_BP_REG_INDTEVSTAGE4  = 0x14, // indirect TEV stage 4
	GX_BP_REG_INDTEVSTAGE5  = 0x15, // indirect TEV stage 5
	GX_BP_REG_INDTEVSTAGE6  = 0x16, // indirect TEV stage 6
	GX_BP_REG_INDTEVSTAGE7  = 0x17, // indirect TEV stage 7
	GX_BP_REG_INDTEVSTAGE8  = 0x18, // indirect TEV stage 8
	GX_BP_REG_INDTEVSTAGE9  = 0x19, // indirect TEV stage 9
	GX_BP_REG_INDTEVSTAGE10 = 0x1A, // indirect TEV stage 10
	GX_BP_REG_INDTEVSTAGE11 = 0x1B, // indirect TEV stage 11
	GX_BP_REG_INDTEVSTAGE12 = 0x1C, // indirect TEV stage 12
	GX_BP_REG_INDTEVSTAGE13 = 0x1D, // indirect TEV stage 13
	GX_BP_REG_INDTEVSTAGE14 = 0x1E, // indirect TEV stage 14
	GX_BP_REG_INDTEVSTAGE15 = 0x1F, // indirect TEV stage 15

	// performance manips
	GX_BP_REG_SCISSORTL   = 0x20, // scissor top left
	GX_BP_REG_SCISSORBR   = 0x21, // scissor bottom right
	GX_BP_REG_LINEPTWIDTH = 0x22, // line point width
	GX_BP_REG_PERF0TRI    = 0x23, // performance 0 (triangle)
	GX_BP_REG_PERF0QUAD   = 0x24, // performance 0 (quad)

	// rasters
	GX_BP_REG_RAS1_SS0   = 0x25,
	GX_BP_REG_RAS1_SS1   = 0x26,
	GX_BP_REG_RAS1_IREF  = 0x27,
	GX_BP_REG_RAS1_TREF0 = 0x28,
	GX_BP_REG_RAS1_TREF1 = 0x29,
	GX_BP_REG_RAS1_TREF2 = 0x2A,
	GX_BP_REG_RAS1_TREF3 = 0x2B,
	GX_BP_REG_RAS1_TREF4 = 0x2C,
	GX_BP_REG_RAS1_TREF5 = 0x2D,
	GX_BP_REG_RAS1_TREF6 = 0x2E,
	GX_BP_REG_RAS1_TREF7 = 0x2F,

	// setup sizes
	GX_BP_REG_SU_SSIZE0 = 0x30,
	GX_BP_REG_SU_TSIZE0 = 0x31,
	GX_BP_REG_SU_SSIZE1 = 0x32,
	GX_BP_REG_SU_TSIZE1 = 0x33,
	GX_BP_REG_SU_SSIZE2 = 0x34,
	GX_BP_REG_SU_TSIZE2 = 0x35,
	GX_BP_REG_SU_SSIZE3 = 0x36,
	GX_BP_REG_SU_TSIZE3 = 0x37,
	GX_BP_REG_SU_SSIZE4 = 0x38,
	GX_BP_REG_SU_TSIZE4 = 0x39,
	GX_BP_REG_SU_SSIZE5 = 0x3A,
	GX_BP_REG_SU_TSIZE5 = 0x3B,
	GX_BP_REG_SU_SSIZE6 = 0x3C,
	GX_BP_REG_SU_TSIZE6 = 0x3D,
	GX_BP_REG_SU_SSIZE7 = 0x3E,
	GX_BP_REG_SU_TSIZE7 = 0x3F,

	// Z and blend controls
	GX_BP_REG_ZMODE      = 0x40,
	GX_BP_REG_BLENDMODE  = 0x41,
	GX_BP_REG_DSTALPHA   = 0x42,
	GX_BP_REG_ZCONTROL   = 0x43,
	GX_BP_REG_FIELDMASK  = 0x44,
	GX_BP_REG_DRAWDONE   = 0x45,
	GX_BP_REG_PETOKEN    = 0x47,
	GX_BP_REG_PETOKENINT = 0x48,

	// copying
	GX_BP_REG_TEXCOPYSRCXY   = 0x49,
	GX_BP_REG_TEXCOPYSRCWH   = 0x4A,
	GX_BP_REG_TEXCOPYDST     = 0x4B,
	GX_BP_REG_DISPCOPYSTRIDE = 0x4D,
	GX_BP_REG_DISPCOPYSCALEY = 0x4E,
	GX_BP_REG_COPYCLEARAR    = 0x4F,
	GX_BP_REG_COPYCLEARGB    = 0x50,
	GX_BP_REG_COPYCLEARZ     = 0x51,
	GX_BP_REG_COPYFILTER0    = 0x53,
	GX_BP_REG_COPYFILTER1    = 0x54,

	//
	GX_BP_REG_BOUNDINGBOX0 = 0x55,
	GX_BP_REG_BOUNDINGBOX1 = 0x56,

	GX_BP_REG_SCISSOROFFSET = 0x59,

	// texture memory
	GX_BP_REG_TMEMPRELOADADDR   = 0x60,
	GX_BP_REG_TMEMPRELOADEVEN   = 0x61,
	GX_BP_REG_TMEMPRELOADODD    = 0x62,
	GX_BP_REG_TMEMPRELOADMODE   = 0x63,
	GX_BP_REG_TMEMTLUTSRC       = 0x64,
	GX_BP_REG_TMEMTLUTDST       = 0x65,
	GX_BP_REG_TMEMTEXINVALIDATE = 0x66,

	// performance 1
	GX_BP_REG_PERF1     = 0x67,
	GX_BP_REG_FIELDMODE = 0x68,

	// set modes
	GX_BP_REG_SETMODE0_TEX0 = 0x80,
	GX_BP_REG_SETMODE0_TEX1 = 0x81,
	GX_BP_REG_SETMODE0_TEX2 = 0x82,
	GX_BP_REG_SETMODE0_TEX3 = 0x83,
	GX_BP_REG_SETMODE1_TEX0 = 0x84,
	GX_BP_REG_SETMODE1_TEX1 = 0x85,
	GX_BP_REG_SETMODE1_TEX2 = 0x86,
	GX_BP_REG_SETMODE1_TEX3 = 0x87,

	// set images
	GX_BP_REG_SETIMAGE0_TEX0 = 0x88,
	GX_BP_REG_SETIMAGE0_TEX1 = 0x89,
	GX_BP_REG_SETIMAGE0_TEX2 = 0x8A,
	GX_BP_REG_SETIMAGE0_TEX3 = 0x8B,
	GX_BP_REG_SETIMAGE1_TEX0 = 0x8C,
	GX_BP_REG_SETIMAGE1_TEX1 = 0x8D,
	GX_BP_REG_SETIMAGE1_TEX2 = 0x8E,
	GX_BP_REG_SETIMAGE1_TEX3 = 0x8F,
	GX_BP_REG_SETIMAGE2_TEX0 = 0x90,
	GX_BP_REG_SETIMAGE2_TEX1 = 0x91,
	GX_BP_REG_SETIMAGE2_TEX2 = 0x92,
	GX_BP_REG_SETIMAGE2_TEX3 = 0x93,
	GX_BP_REG_SETIMAGE3_TEX0 = 0x94,
	GX_BP_REG_SETIMAGE3_TEX1 = 0x95,
	GX_BP_REG_SETIMAGE3_TEX2 = 0x96,
	GX_BP_REG_SETIMAGE3_TEX3 = 0x97,

	// set texture lookups
	GX_BP_REG_SETTLUT_TEX0 = 0x98,
	GX_BP_REG_SETTLUT_TEX1 = 0x99,
	GX_BP_REG_SETTLUT_TEX2 = 0x9A,
	GX_BP_REG_SETTLUT_TEX3 = 0x9B,

	// set modes continued
	GX_BP_REG_SETMODE0_TEX4 = 0xA0,
	GX_BP_REG_SETMODE0_TEX5 = 0xA1,
	GX_BP_REG_SETMODE0_TEX6 = 0xA2,
	GX_BP_REG_SETMODE0_TEX7 = 0xA3,
	GX_BP_REG_SETMODE1_TEX4 = 0xA4,
	GX_BP_REG_SETMODE1_TEX5 = 0xA5,
	GX_BP_REG_SETMODE1_TEX6 = 0xA6,
	GX_BP_REG_SETMODE1_TEX7 = 0xA7,

	// set images continued
	GX_BP_REG_SETIMAGE0_TEX4 = 0xA8,
	GX_BP_REG_SETIMAGE0_TEX5 = 0xA9,
	GX_BP_REG_SETIMAGE0_TEX6 = 0xAA,
	GX_BP_REG_SETIMAGE0_TEX7 = 0xAB,
	GX_BP_REG_SETIMAGE1_TEX4 = 0xAC,
	GX_BP_REG_SETIMAGE1_TEX5 = 0xAD,
	GX_BP_REG_SETIMAGE1_TEX6 = 0xAE,
	GX_BP_REG_SETIMAGE1_TEX7 = 0xAF,
	GX_BP_REG_SETIMAGE2_TEX4 = 0xB0,
	GX_BP_REG_SETIMAGE2_TEX5 = 0xB1,
	GX_BP_REG_SETIMAGE2_TEX6 = 0xB2,
	GX_BP_REG_SETIMAGE2_TEX7 = 0xB3,
	GX_BP_REG_SETIMAGE3_TEX4 = 0xB4,
	GX_BP_REG_SETIMAGE3_TEX5 = 0xB5,
	GX_BP_REG_SETIMAGE3_TEX6 = 0xB6,
	GX_BP_REG_SETIMAGE3_TEX7 = 0xB7,

	// set texture lookups continued
	GX_BP_REG_SETTLUT_TEX4 = 0xB8,
	GX_BP_REG_SETTLUT_TEX5 = 0xB9,
	GX_BP_REG_SETTLUT_TEX6 = 0xBA,
	GX_BP_REG_SETTLUT_TEX7 = 0xBB,

	// TEV color manips
	GX_BP_REG_TEVCOLORCOMBINER0  = 0xC0,
	GX_BP_REG_TEVALPHACOMBINER0  = 0xC1,
	GX_BP_REG_TEVCOLORCOMBINER1  = 0xC2,
	GX_BP_REG_TEVALPHACOMBINER1  = 0xC3,
	GX_BP_REG_TEVCOLORCOMBINER2  = 0xC4,
	GX_BP_REG_TEVALPHACOMBINER2  = 0xC5,
	GX_BP_REG_TEVCOLORCOMBINER3  = 0xC6,
	GX_BP_REG_TEVALPHACOMBINER3  = 0xC7,
	GX_BP_REG_TEVCOLORCOMBINER4  = 0xC8,
	GX_BP_REG_TEVALPHACOMBINER4  = 0xC9,
	GX_BP_REG_TEVCOLORCOMBINER5  = 0xCA,
	GX_BP_REG_TEVALPHACOMBINER5  = 0xCB,
	GX_BP_REG_TEVCOLORCOMBINER6  = 0xCC,
	GX_BP_REG_TEVALPHACOMBINER6  = 0xCD,
	GX_BP_REG_TEVCOLORCOMBINER7  = 0xCE,
	GX_BP_REG_TEVALPHACOMBINER7  = 0xCF,
	GX_BP_REG_TEVCOLORCOMBINER8  = 0xD0,
	GX_BP_REG_TEVALPHACOMBINER8  = 0xD1,
	GX_BP_REG_TEVCOLORCOMBINER9  = 0xD2,
	GX_BP_REG_TEVALPHACOMBINER9  = 0xD3,
	GX_BP_REG_TEVCOLORCOMBINER10 = 0xD4,
	GX_BP_REG_TEVALPHACOMBINER10 = 0xD5,
	GX_BP_REG_TEVCOLORCOMBINER11 = 0xD6,
	GX_BP_REG_TEVALPHACOMBINER11 = 0xD7,
	GX_BP_REG_TEVCOLORCOMBINER12 = 0xD8,
	GX_BP_REG_TEVALPHACOMBINER12 = 0xD9,
	GX_BP_REG_TEVCOLORCOMBINER13 = 0xDA,
	GX_BP_REG_TEVALPHACOMBINER13 = 0xDB,
	GX_BP_REG_TEVCOLORCOMBINER14 = 0xDC,
	GX_BP_REG_TEVALPHACOMBINER14 = 0xDD,
	GX_BP_REG_TEVCOLORCOMBINER15 = 0xDE,
	GX_BP_REG_TEVALPHACOMBINER15 = 0xDF,

	// TEV registers
	GX_BP_REG_TEVREG0LO = 0xE0,
	GX_BP_REG_TEVREG0HI = 0xE1,
	GX_BP_REG_TEVREG1LO = 0xE2,
	GX_BP_REG_TEVREG1HI = 0xE3,
	GX_BP_REG_TEVREG2LO = 0xE4,
	GX_BP_REG_TEVREG2HI = 0xE5,
	GX_BP_REG_TEVREG3LO = 0xE6,
	GX_BP_REG_TEVREG3HI = 0xE7,

	// fog registers
	GX_BP_REG_FOGRANGE   = 0xE8,
	GX_BP_REG_FOGRANGEK0 = 0xE9,
	GX_BP_REG_FOGRANGEK1 = 0xEA,
	GX_BP_REG_FOGRANGEK2 = 0xEB,
	GX_BP_REG_FOGRANGEK3 = 0xEC,
	GX_BP_REG_FOGRANGEK4 = 0xED,
	GX_BP_REG_FOGPARAM0  = 0xEE,
	GX_BP_REG_FOGPARAM1  = 0xEF,
	GX_BP_REG_FOGPARAM2  = 0xF0,
	GX_BP_REG_FOGPARAM3  = 0xF1,
	GX_BP_REG_FOGCOLOR   = 0xF2,

	// performance manip registers
	GX_BP_REG_ALPHACOMPARE = 0xF3,
	GX_BP_REG_ZTEXTURE0    = 0xF4,
	GX_BP_REG_ZTEXTURE1    = 0xF5,

	// TEV K selectors
	GX_BP_REG_TEVKSEL0 = 0xF6,
	GX_BP_REG_TEVKSEL1 = 0xF7,
	GX_BP_REG_TEVKSEL2 = 0xF8,
	GX_BP_REG_TEVKSEL3 = 0xF9,
	GX_BP_REG_TEVKSEL4 = 0xFA,
	GX_BP_REG_TEVKSEL5 = 0xFB,
	GX_BP_REG_TEVKSEL6 = 0xFC,
	GX_BP_REG_TEVKSEL7 = 0xFD,

	// SS mask
	GX_BP_REG_SSMASK = 0xFE,
} GXBPRegs;

// BP locators for fog parameter 0.
typedef enum _GXBPFogParam0 {
	// A mantissa [21-31]
	GX_BP_FOGPARAM0_A_MANT_ST  = 21,
	GX_BP_FOGPARAM0_A_MANT_END = 31,

	// A exponent [13-20]
	GX_BP_FOGPARAM0_A_EXP_ST  = 13,
	GX_BP_FOGPARAM0_A_EXP_END = 20,

	// A sign [12-12]
	GX_BP_FOGPARAM0_A_SIGN_ST  = 12,
	GX_BP_FOGPARAM0_A_SIGN_END = 12,
} GXBPFogParam0;

// BP locators for fog parameter 1.
typedef enum _GXBPFogParam1 {
	// B magnitude [8-31]
	GX_BP_FOGPARAM1_B_MAG_ST  = 8,
	GX_BP_FOGPARAM1_B_MAG_END = 31,
} GXBPFogParam1;

// BP locators for fog parameter 2.
typedef enum _GXBPFogParam2 {
	// B shift [27-31]
	GX_BP_FOGPARAM2_B_SHIFT_ST  = 27,
	GX_BP_FOGPARAM2_B_SHIFT_END = 31,
} GXBPFogParam2;

// BP locators for fog parameter 3.
typedef enum _GXBPFogParam3 {
	// C mantissa [21-31]
	GX_BP_FOGPARAM3_C_MANT_ST  = 21,
	GX_BP_FOGPARAM3_C_MANT_END = 31,

	// C exponent [13-20]
	GX_BP_FOGPARAM3_C_EXP_ST  = 13,
	GX_BP_FOGPARAM3_C_EXP_END = 20,

	// C sign [12-12]
	GX_BP_FOGPARAM3_C_SIGN_ST  = 12,
	GX_BP_FOGPARAM3_C_SIGN_END = 12,

	// Projection [11]
	GX_BP_FOGPARAM3_PROJ_ST  = 11,
	GX_BP_FOGPARAM3_PROJ_END = 11,

	// F select [8-10]
	GX_BP_FOGPARAM3_FSEL_ST  = 8,
	GX_BP_FOGPARAM3_FSEL_END = 10,
} GXBPFogParam3;

// BP locators for fog color.
typedef enum _GXBPFogColor {
	// RGB components of color [8-31]
	GX_BP_FOGCOLOR_RGB_ST  = 8,
	GX_BP_FOGCOLOR_RGB_END = 31,
} GXBPFogColor;

// BP locators for fog range.
typedef enum _GXBPFogRange {
	// Center [22-31]
	GX_BP_FOGRANGE_CENTER_ST  = 22,
	GX_BP_FOGRANGE_CENTER_END = 31,

	// Enabled [21-21]
	GX_BP_FOGRANGE_ENABLED_ST  = 21,
	GX_BP_FOGRANGE_ENABLED_END = 21,
} GXBPFogRange;

// BP locators for fog range K.
typedef enum _GXBPFogRangeK {
	// Hi [20-31]
	GX_BP_FOGRANGEK_HI_ST  = 20,
	GX_BP_FOGRANGEK_HI_END = 31,

	// Lo [8-19]
	GX_BP_FOGRANGEK_LO_ST  = 8,
	GX_BP_FOGRANGEK_LO_END = 19,
} GXBPFogRangeK;

// BP locators for blend mode.
typedef enum _GXBPBlendMode {
	// Blend enable [31-31]
	GX_BP_BLENDMODE_ENABLE_ST  = 31,
	GX_BP_BLENDMODE_ENABLE_END = 31,

	// Logic operation enable [30-30]
	GX_BP_BLENDMODE_LOGIC_OP_ST  = 30,
	GX_BP_BLENDMODE_LOGIC_OP_END = 30,

	// Dither [29-29]
	GX_BP_BLENDMODE_DITHER_ST  = 29,
	GX_BP_BLENDMODE_DITHER_END = 29,

	// Color update [28-28]
	GX_BP_BLENDMODE_COLOR_UPDATE_ST  = 28,
	GX_BP_BLENDMODE_COLOR_UPDATE_END = 28,

	// Alpha update [27-27]
	GX_BP_BLENDMODE_ALPHA_UPDATE_ST  = 27,
	GX_BP_BLENDMODE_ALPHA_UPDATE_END = 27,

	// Destination factor [24-26]
	GX_BP_BLENDMODE_DSTFACTOR_ST  = 24,
	GX_BP_BLENDMODE_DSTFACTOR_END = 26,

	// Source factor [21-23]
	GX_BP_BLENDMODE_SRCFACTOR_ST  = 21,
	GX_BP_BLENDMODE_SRCFACTOR_END = 23,

	// Subtract [20-20]
	GX_BP_BLENDMODE_SUBTRACT_ST  = 20,
	GX_BP_BLENDMODE_SUBTRACT_END = 20,

	// Logic mode [16-19]
	GX_BP_BLENDMODE_LOGICMODE_ST  = 16,
	GX_BP_BLENDMODE_LOGICMODE_END = 19,
} GXBPBlendMode;

// BP locators for Z mode.
typedef enum _GXBPZMode {
	// Test enable [31-31]
	GX_BP_ZMODE_TEST_ENABLE_ST  = 31,
	GX_BP_ZMODE_TEST_ENABLE_END = 31,

	// Compare [28-30]
	GX_BP_ZMODE_COMPARE_ST  = 28,
	GX_BP_ZMODE_COMPARE_END = 30,

	// Update enable [27-27]
	GX_BP_ZMODE_UPDATE_ENABLE_ST  = 27,
	GX_BP_ZMODE_UPDATE_ENABLE_END = 27,
} GXBPZMode;

// BP locators for Z control.
typedef enum _GXBPZControl {
	// Pixel format [29-31]
	GX_BP_ZCONTROL_PIXEL_FMT_ST  = 29,
	GX_BP_ZCONTROL_PIXEL_FMT_END = 31,

	// Z format [26-28]
	GX_BP_ZCONTROL_Z_FMT_ST  = 26,
	GX_BP_ZCONTROL_Z_FMT_END = 28,

	// Whether to do Z-buffering before or after texturing [25-25]
	GX_BP_ZCONTROL_BEFORE_TEX_ST  = 25,
	GX_BP_ZCONTROL_BEFORE_TEX_END = 25,
} GXBPZControl;

// BP locators for destination alpha.
typedef enum _GXBPDstAlpha {
	// Alpha [24-31]
	GX_BP_DSTALPHA_ALPHA_ST  = 24,
	GX_BP_DSTALPHA_ALPHA_END = 31,

	// Enable [23-23]
	GX_BP_DSTALPHA_ENABLE_ST  = 23,
	GX_BP_DSTALPHA_ENABLE_END = 23,

	// YUV format [21-22]
	GX_BP_DSTALPHA_YUV_FMT_ST  = 21,
	GX_BP_DSTALPHA_YUV_FMT_END = 22,
} GXBPDstAlpha;

// BP locators for field mask.
typedef enum _GXBPFieldMask {
	// Whether to write odd fields to the EFB [31-31]
	GX_BP_FIELDMASK_ODD_ST  = 31,
	GX_BP_FIELDMASK_ODD_END = 31,

	// Whether to write even fields to the EFB [30-30]
	GX_BP_FIELDMASK_EVEN_ST  = 30,
	GX_BP_FIELDMASK_EVEN_END = 30,
} GXBPFieldMask;

// BP locators for line and point settings.
typedef enum _GXBPLinePtWidth {
	// Line size/width [24-31]
	GX_BP_LINEPTWIDTH_LINESZ_ST  = 24,
	GX_BP_LINEPTWIDTH_LINESZ_END = 31,

	// Point size [16-23]
	GX_BP_LINEPTWIDTH_POINTSZ_ST  = 16,
	GX_BP_LINEPTWIDTH_POINTSZ_END = 23,

	// Line offset [13-15]
	GX_BP_LINEPTWIDTH_LINEOFS_ST  = 13,
	GX_BP_LINEPTWIDTH_LINEOFS_END = 15,

	// Point offset [10-12]
	GX_BP_LINEPTWIDTH_POINTOFS_ST  = 10,
	GX_BP_LINEPTWIDTH_POINTOFS_END = 12,

	// Interlacing adjustment for aspect ratio [9-9]
	GX_BP_LINEPTWIDTH_ADJUST_ST  = 9,
	GX_BP_LINEPTWIDTH_ADJUST_END = 9,
} GXBPLinePtWidth;

// Miscellaneous token types.
typedef enum _GXMiscToken {
	GX_MT_NULL               = 0,
	GX_MT_XF_FLUSH           = 1,
	GX_MT_DL_SAVE_CONTEXT    = 2,
	GX_MT_ABORT_WAIT_COPYOUT = 3,
} GXMiscToken;

// Transform memory types.
typedef enum _GXXfMem {
	GX_XF_MEM_POSMTX     = 0x000, // position coord matrix
	GX_XF_MEM_NRMMTX     = 0x400, // normal coord matrix
	GX_XF_MEM_DUALTEXMTX = 0x500, // dual texture matrix
	GX_XF_MEM_LIGHTOBJ   = 0x600, // light object
} GXXfMem;

// BP locators for top-left scissor.
typedef enum _GXBPScissorTL {
	// Top component [21-31]
	GX_BP_SCISSORTL_TOP_ST  = 21,
	GX_BP_SCISSORTL_TOP_END = 31,

	// Left component [9-19]
	GX_BP_SCISSORTL_LEFT_ST  = 9,
	GX_BP_SCISSORTL_LEFT_END = 19,
} GXBPScissorTL;

// BP locators for bottom-right scissor.
typedef enum _GXBPScissorBR {
	// Bottom component [21-31]
	GX_BP_SCISSORBR_BOT_ST  = 21,
	GX_BP_SCISSORBR_BOT_END = 31,

	// Right component [9-19]
	GX_BP_SCISSORBR_RIGHT_ST  = 9,
	GX_BP_SCISSORBR_RIGHT_END = 19,
} GXBPScissorBR;

// BP locators for scissor offset.
typedef enum _GXBPScissorOffset {
	// X offset [22-31]
	GX_BP_SCISSOROFS_OX_ST  = 22,
	GX_BP_SCISSOROFS_OX_END = 31,

	// Y offset [12-21]
	GX_BP_SCISSOROFS_OY_ST  = 12,
	GX_BP_SCISSOROFS_OY_END = 21,
} GXBPScissorOffset;

// Perf-0 types.
typedef enum _GXPerf0 {
	GX_PERF0_VERTICES      = 0,
	GX_PERF0_CLIP_VTX      = 1,
	GX_PERF0_CLIP_CLKS     = 2,
	GX_PERF0_XF_WAIT_IN    = 3,
	GX_PERF0_XF_WAIT_OUT   = 4,
	GX_PERF0_XF_XFRM_CLKS  = 5,
	GX_PERF0_XF_LIT_CLKS   = 6,
	GX_PERF0_XF_BOT_CLKS   = 7,
	GX_PERF0_XF_REGLD_CLKS = 8,
	GX_PERF0_XF_REGRD_CLKS = 9,
	GX_PERF0_CLIP_RATIO    = 10,

	GX_PERF0_TRIANGLES           = 11,
	GX_PERF0_TRIANGLES_CULLED    = 12,
	GX_PERF0_TRIANGLES_PASSED    = 13,
	GX_PERF0_TRIANGLES_SCISSORED = 14,
	GX_PERF0_TRIANGLES_0TEX      = 15,
	GX_PERF0_TRIANGLES_1TEX      = 16,
	GX_PERF0_TRIANGLES_2TEX      = 17,
	GX_PERF0_TRIANGLES_3TEX      = 18,
	GX_PERF0_TRIANGLES_4TEX      = 19,
	GX_PERF0_TRIANGLES_5TEX      = 20,
	GX_PERF0_TRIANGLES_6TEX      = 21,
	GX_PERF0_TRIANGLES_7TEX      = 22,
	GX_PERF0_TRIANGLES_8TEX      = 23,
	GX_PERF0_TRIANGLES_0CLR      = 24,
	GX_PERF0_TRIANGLES_1CLR      = 25,
	GX_PERF0_TRIANGLES_2CLR      = 26,

	GX_PERF0_QUAD_0CVG    = 27,
	GX_PERF0_QUAD_NON0CVG = 28,
	GX_PERF0_QUAD_1CVG    = 29,
	GX_PERF0_QUAD_2CVG    = 30,
	GX_PERF0_QUAD_3CVG    = 31,
	GX_PERF0_QUAD_4CVG    = 32,
	GX_PERF0_AVG_QUAD_CNT = 33,

	GX_PERF0_CLOCKS = 34,
	GX_PERF0_NONE   = 35,
} GXPerf0;

// Perf-1 types.
typedef enum _GXPerf1 {
	GX_PERF1_TEXELS      = 0,
	GX_PERF1_TX_IDLE     = 1,
	GX_PERF1_TX_REGS     = 2,
	GX_PERF1_TX_MEMSTALL = 3,
	GX_PERF1_TC_CHECK1_2 = 4,
	GX_PERF1_TC_CHECK3_4 = 5,
	GX_PERF1_TC_CHECK5_6 = 6,
	GX_PERF1_TC_CHECK7_8 = 7,
	GX_PERF1_TC_MISS     = 8,

	GX_PERF1_VC_ELEMQ_FULL    = 9,
	GX_PERF1_VC_MISSQ_FULL    = 10,
	GX_PERF1_VC_MEMREQ_FULL   = 11,
	GX_PERF1_VC_STATUS7       = 12,
	GX_PERF1_VC_MISSREP_FULL  = 13,
	GX_PERF1_VC_STREAMBUF_LOW = 14,
	GX_PERF1_VC_ALL_STALLS    = 15,
	GX_PERF1_VERTICES         = 16,

	GX_PERF1_FIFO_REQ    = 17,
	GX_PERF1_CALL_REQ    = 18,
	GX_PERF1_VC_MISS_REQ = 19,
	GX_PERF1_CP_ALL_REQ  = 20,

	GX_PERF1_CLOCKS = 21,
	GX_PERF1_NONE   = 22,
} GXPerf1;

// Vertex cache perf types.
typedef enum _GXVCachePerf {
	GX_VC_POS  = 0,
	GX_VC_NRM  = 1,
	GX_VC_CLR0 = 2,
	GX_VC_CLR1 = 3,
	GX_VC_TEX0 = 4,
	GX_VC_TEX1 = 5,
	GX_VC_TEX2 = 6,
	GX_VC_TEX3 = 7,
	GX_VC_TEX4 = 8,
	GX_VC_TEX5 = 9,
	GX_VC_TEX6 = 10,
	GX_VC_TEX7 = 11,

	GX_VC_ALL = 15
} GXVCachePerf;

#endif /* GXENUM_H */