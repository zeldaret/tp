#ifndef J3DGD_H
#define J3DGD_H

#include "dolphin/gd/GDBase.h"
#include "dolphin/gx.h"

inline void J3DGDWrite_u8(u8 param) {
    __GDWrite(param);
}

inline void J3DGDWrite_u16(u16 param) {
    __GDWrite((param & 0xffff) >> 8);
    __GDWrite(param & 0xff);
}

inline void J3DGDWrite_u32(u32 param) {
    __GDWrite((param >> 24) & 0xff);
    __GDWrite((param >> 16) & 0xff);
    __GDWrite((param >> 8) & 0xff);
    __GDWrite(param & 0xff);
}

inline void J3DGDWrite_f32(f32 param) {
    u32 tmp = *(u32*)&param;
    J3DGDWrite_u32(tmp);
}

inline void J3DGDWriteBPCmd(u32 cmd) {
    J3DGDWrite_u8(0x61);
    J3DGDWrite_u32(cmd);
}

inline void J3DFifoLoadBPCmd(u32 cmd) {
    GXWGFifo.u8 = 0x61;
    GXWGFifo.u32 = cmd;
}

inline void J3DGDWriteXFCmd(u16 addr, u32 cmd) {
    J3DGDWrite_u8(0x10);
    J3DGDWrite_u16(0);
    J3DGDWrite_u16(addr);
    J3DGDWrite_u32(cmd);
}

inline void J3DGDWriteXFCmdHdr(u16 addr, u8 len) {
    J3DGDWrite_u8(0x10);
    J3DGDWrite_u16(len - 1);
    J3DGDWrite_u16(addr);
}

inline void J3DFifoWriteXFCmdHdr(u16 addr, u8 len) {
    GXWGFifo.u8 = 0x10;
    GXWGFifo.u16 = len - 1;
    GXWGFifo.u16 = addr;
}

inline void J3DGXCmd1f32ptr(f32* value) {
    GXWGFifo.u32 = *(u32*)value;
}

inline void J3DGXCmd1f32(f32 value) {
    GXWGFifo.u32 = *(u32*)&value;
}

inline void J3DGDWriteCPCmd(u8 reg, u32 value) {
    J3DGDWrite_u8(8);
    J3DGDWrite_u8(reg);
    J3DGDWrite_u32(value);
}

void J3DGDSetGenMode(u8 texGenNum, u8 colorChanNum, u8 tevStageNum, u8 IndTexStageNum,
                     GXCullMode cullMode);
void J3DGDSetGenMode_3Param(u8 texGenNum, u8 tevStageNum, u8 indTexStageNum);
void J3DGDSetLightAttn(GXLightID, f32, f32, f32, f32, f32, f32);
void J3DGDSetLightColor(GXLightID, GXColor);
void J3DGDSetLightPos(GXLightID, f32, f32, f32);
void J3DGDSetLightDir(GXLightID, f32, f32, f32);
void J3DGDSetVtxAttrFmtv(GXVtxFmt, GXVtxAttrFmtList const*, bool);
void J3DGDSetTexCoordGen(GXTexGenType, GXTexGenSrc);
void J3DGDSetTexCoordScale2(GXTexCoordID, u16, u8, u8, u16, u8, u8);
void J3DGDSetTexLookupMode(GXTexMapID, GXTexWrapMode, GXTexWrapMode, GXTexFilter, GXTexFilter, f32,
                           f32, f32, u8, u8, GXAnisotropy);
void J3DGDSetTexImgAttr(GXTexMapID, u16, u16, GXTexFmt);
void J3DGDSetTexImgPtr(GXTexMapID, void*);
void J3DGDSetTexImgPtrRaw(GXTexMapID, u32);
void J3DGDSetTexTlut(GXTexMapID, u32, _GXTlutFmt);
void J3DGDLoadTlut(void*, u32, _GXTlutSize);
void J3DGDSetIndTexMtx(GXIndTexMtxID, f32 (*)[3], s8);
void J3DGDSetIndTexCoordScale(GXIndTexStageID, GXIndTexScale, GXIndTexScale, GXIndTexScale,
                              GXIndTexScale);
void J3DGDSetIndTexOrder(u32, GXTexCoordID, GXTexMapID, GXTexCoordID, GXTexMapID, GXTexCoordID,
                         GXTexMapID, GXTexCoordID, GXTexMapID);
void J3DGDSetTevOrder(GXTevStageID, GXTexCoordID, GXTexMapID, GXChannelID, GXTexCoordID, GXTexMapID,
                      GXChannelID);
void J3DGDSetTevKColor(GXTevKColorID, GXColor);
void J3DGDSetTevColorS10(GXTevRegID, GXColorS10);
void J3DGDSetFog(GXFogType, f32, f32, f32, f32, GXColor);
void J3DGDSetFogRangeAdj(u8, u16, _GXFogAdjTable*);
void J3DFifoLoadPosMtxImm(f32 (*)[4], u32);
void J3DFifoLoadNrmMtxImm(f32 (*)[4], u32);
void J3DFifoLoadNrmMtxImm3x3(f32 (*)[3], u32);
void J3DFifoLoadNrmMtxToTexMtx(f32 (*)[4], u32);
void J3DFifoLoadNrmMtxToTexMtx3x3(f32 (*)[3], u32);
void J3DFifoLoadTexCached(GXTexMapID, u32, GXTexCacheSize, u32, GXTexCacheSize);

static inline void J3DFifoLoadIndx(u8 cmd, u16 indx, u16 addr) {
    GXWGFifo.u8 = cmd;
    GXWGFifo.u16 = indx;
    GXWGFifo.u16 = addr;
}

inline void J3DGDSetNumChans(u8 numChans) {
    J3DGDWriteXFCmd(0x1009, numChans);
}

inline void J3DGDSetNumTexGens(u8 numTexGens) {
    J3DGDWriteXFCmd(0x103f, numTexGens);
}

#endif /* J3DGD_H */
