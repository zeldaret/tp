#ifndef GX_H_
#define GX_H_

#include "dolphin/gx/GXDisplayList.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/mtx/mtx44.h"
#include "dolphin/types.h"
#include "global.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GXVtxDescList {
    /* 0x0 */ GXAttr attr;
    /* 0x4 */ GXAttrType type;
} GXVtxDescList;  // Size: 0x08

typedef struct _GXVtxAttrFmtList {
    /* 0x00 */ GXAttr mAttrib;
    /* 0x04 */ GXCompCnt mCompCnt;
    /* 0x08 */ GXCompType mCompType;
    /* 0x0C */ u8 mCompShift;
} GXVtxAttrFmtList;  // Size: 0x10

typedef GXTexRegion (*GXTexRegionCallback)(void);
typedef u32 (*GXTlutRegionCallback)(u32);

typedef struct _GXData {
    /* 0x000 */ u16 field_0x0;
    /* 0x002 */ u16 field_0x2;
    /* 0x004 */ u16 field_0x4;
    /* 0x006 */ u16 field_0x6;
    /* 0x008 */ u32 field_0x8;
    /* 0x00C */ u32 field_0xc;
    /* 0x010 */ u32 field_0x10;
    /* 0x014 */ GXAttrType field_0x14;
    /* 0x018 */ GXAttrType field_0x18;
    /* 0x01C */ GXCompCnt field_0x1c[8];
    /* 0x03C */ GXCompCnt field_0x3c[8];
    /* 0x05C */ u32 field_0x5c[8];
    /* 0x07C */ u32 field_0x7c;
    /* 0x080 */ u32 field_0x80;
    /* 0x084 */ u32 field_0x84;
    /* 0x088 */ u8 field_0x88[0xA8 - 0x88];
    /* 0x0A8 */ u32 field_0xa8[2];
    /* 0x0B0 */ u32 field_0xb0[2];
    /* 0x0B8 */ u32 field_0xb8[8];  // GX_MAX_TEXCOORD
    /* 0x0D8 */ u32 field_0xd8[8];  // GX_MAX_TEXCOORD
    /* 0x0F8 */ u32 field_0xf8;
    /* 0x0FC */ u32 field_0xfc;
    /* 0x100 */ u32 field_0x100[GX_MAX_TEVSTAGE / 2];
    /* 0x120 */ u32 field_0x120;
    /* 0x124 */ u32 field_0x124;
    /* 0x128 */ u8 field_0x128[0x130 - 0x128];
    /* 0x130 */ u32 field_0x130[GX_MAX_TEVSTAGE];
    /* 0x170 */ u32 field_0x170[GX_MAX_TEVSTAGE];
    /* 0x1B0 */ u32 field_0x1b0[GX_MAX_TEVSTAGE / 2];
    /* 0x1D0 */ u32 field_0x1d0;
    /* 0x1D4 */ u32 field_0x1d4;
    /* 0x1D8 */ u32 field_0x1d8;
    /* 0x1DC */ u32 field_0x1dc;
    /* 0x1E0 */ u32 field_0x1e0;
    /* 0x1E4 */ u32 field_0x1e4;
    /* 0x1E8 */ u32 field_0x1e8;
    /* 0x1EC */ u32 field_0x1ec;
    /* 0x1F0 */ u32 field_0x1f0;
    /* 0x1F4 */ u32 field_0x1f4;
    /* 0x1F8 */ u32 field_0x1f8;
    /* 0x1FC */ u32 field_0x1fc;
    /* 0x200 */ u8 field_0x200;
    /* 0x204 */ u32 field_0x204;
    /* 0x208 */ GXTexRegion field_0x208[8];
    /* 0x288 */ GXTexRegion field_0x288[8];
    /* 0x308 */ GXTexRegion field_0x308[8];
    /* 0x388 */ GXTlutRegion field_0x388[16]; 
    /* 0x488 */ GXTlutRegion field_0x488[4]; 
    /* 0x4C8 */ GXTexRegionCallback field_0x4c8;
    /* 0x4CC */ GXTlutRegionCallback field_0x4cc;
    /* 0x4D0 */ GXAttrType field_0x4d0;
    /* 0x4D4 */ u8 field_0x4d4;
    /* 0x4D5 */ u8 field_0x4d5;
    /* 0x4D8 */ GXProjectionType field_0x4d8;
    /* 0x4DC */ Mtx field_0x4dc;
    /* 0x50C */ f32 field_0x50c;
    /* 0x510 */ f32 field_0x510;
    /* 0x514 */ u32 field_0x514[8];
    /* 0x534 */ u32 field_0x534[8];
    /* 0x554 */ u32 field_0x554;
    /* 0x558 */ u32 field_0x558[8];
    /* 0x578 */ u8 field_0x578[0x594 - 0x578];
    /* 0x594 */ u32 field_0x594;
    /* 0x598 */ u32 field_0x598;
    /* 0x59C */ u32 field_0x59c;
    /* 0x5A0 */ u8 field_0x5a0[4];
    /* 0x5A4 */ u32 field_0x5a4;
    /* 0x5A8 */ u8 field_0x5a8;
    /* 0x5A9 */ u8 field_0x5a9;
    /* 0x5AA */ u8 field_0x5aa;
    /* 0x5AB */ u8 field_0x5ab;
    /* 0x5AC */ u32 field_0x5ac;
} GXData;  // Size: 0x5B0

STATIC_ASSERT(sizeof(GXData) == 0x5B0);

extern GXData* __GXData;

extern u32* __piReg;
extern u16* __cpReg;

#define GX_LOAD_BP_REG 0x61
#define GX_NOP 0

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
void GXSetChanCtrl(GXChannelID, GXBool, GXColorSrc, GXColorSrc, u32, GXDiffuseFn, GXAttnFn);
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
void GXSetArray(GXAttr, void*, u8);
typedef void (*GXDrawDoneCallback)(void);
void GXSetDrawDoneCallback(GXDrawDoneCallback);
void GXDrawDone(void);
void GXAbortFrame(void);
void GXFlush(void);
void GXSetCopyClear(GXColor, u32);
void GXSetDispCopySrc(u16, u16, u16, u16);
void GXSetDispCopyDst(u16, u16);
u32 GXSetDispCopyYScale(f32);
void GXSetCopyClamp(GXFBClamp);
void GXSetDispCopyGamma(GXGamma);
void GXCopyDisp(void*, GXBool);
void GXSetPixelFmt(GXPixelFmt, GXZFmt16);

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
void GXInitLightAttn(GXLightObj*, f32, f32, f32, f32, f32, f32);
void GXLoadLightObjImm(GXLightObj*, GXLightID);
void GXLoadPosMtxImm(Mtx, u32);
void GXLoadNrmMtxImm(Mtx, u32);
void GXLoadTexMtxImm(Mtx, u32, GXTexMtxType);
void GXPixModeSync(void);
void GXProject(f32, f32, f32, Mtx, f32*, f32*, f32*, f32*, f32*);
void GXSetAlphaCompare(GXCompare, u8, GXAlphaOp, GXCompare, u8);
void GXSetAlphaUpdate(GXBool);
void GXSetChanAmbColor(GXChannelID, GXColor);
void GXSetChanMatColor(GXChannelID, GXColor);
void GXSetClipMode(GXClipMode);
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
void GXSetZTexture(GXZTexOp, GXTexFmt, u32);
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
void GXSetDstAlpha(GXBool, u8);
u32 GXGetFifoSize(GXFifoObj*);
void* GXGetFifoBase(GXFifoObj*);
GXFifoObj* GXInit(void*, u32);
GXFifoObj* GXGetCPUFifo(void);
void GXGetGPStatus(GXBool*, GXBool*, GXBool*, GXBool*, GXBool*);
void GXReadXfRasMetric(u32*, u32*, u32*, u32*);
void GXInitFifoBase(GXFifoObj*, void*, u32);
void GXInitFifoPtrs(GXFifoObj*, void*, void*);
void GXSaveCPUFifo(GXFifoObj*);
void GXSetMisc(u32 opt, u32 val);
void GXInitTexCacheRegion(GXTexRegion* region, GXBool, u32, GXTexCacheSize, u32, GXTexCacheSize);
void GXPeekZ(u16 x, u16 y, u32* dst);
void __GXSetDirtyState(void);
void __GXSendFlushPrim(void);

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

inline void GXTexCoord2u8(u8 s, u8 t) {
    GFX_FIFO(u8) = s;
    GFX_FIFO(u8) = t;
}

inline void GXPosition2u16(u16 x, u16 y) {
    GFX_FIFO(u16) = x;
    GFX_FIFO(u16) = y;
}

inline void GXPosition1x16(u16 x) {
    GFX_FIFO(u16) = x;
}

inline void GXPosition3s8(s8 x, s8 y, s8 z) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
    GFX_FIFO(s8) = z;
}

inline void GXPosition2s8(s8 x, s8 y) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
}

inline void i_GXPosition3s16(s16 x, s16 y, s16 z) {
    GFX_FIFO(s16) = x;
    GFX_FIFO(s16) = y;
    GFX_FIFO(s16) = z;
}

inline void GXTexCoord2s8(s8 x, s8 y) {
    GFX_FIFO(s8) = x;
    GFX_FIFO(s8) = y;
}

inline void i_GXEnd() {}

#ifdef __cplusplus
};
#endif

#endif
