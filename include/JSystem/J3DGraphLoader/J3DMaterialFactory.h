#ifndef J3DMATERIALFACTORY_H
#define J3DMATERIALFACTORY_H

#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "JSystem/J3DGraphLoader/J3DModelLoader.h"
#include "dolphin/gx/GXStruct.h"

class J3DMaterial;

struct J3DMaterialInitData {
    /* 0x000 */ u8 mMaterialMode;
    /* 0x001 */ u8 mCullModeIdx;
    /* 0x002 */ u8 mColorChanNumIdx;
    /* 0x003 */ u8 mTexGenNumIdx;
    /* 0x004 */ u8 mTevStageNumIdx;
    /* 0x005 */ u8 mZCompLocIdx;
    /* 0x006 */ u8 mZModeIdx;
    /* 0x007 */ u8 mDitherIdx;
    /* 0x008 */ u16 mMatColorIdx[2];
    /* 0x00C */ u16 mColorChanIdx[4];
    /* 0x014 */ u16 mAmbColorIdx[2];
    /* 0x018 */ u8 field_0x018[0x10];
    /* 0x028 */ u16 mTexCoordIdx[8];
    /* 0x038 */ u8 field_0x038[0x10];
    /* 0x048 */ u16 mTexMtxIdx[8];
    /* 0x058 */ u8 field_0x058[0x2c];
    /* 0x084 */ u16 mTexNoIdx[8];
    /* 0x094 */ u16 mTevKColorIdx[4];
    /* 0x09C */ u8 mTevKColorSel[0x10];
    /* 0x0AC */ u8 mTevKAlphaSel[0x10];
    /* 0x0BC */ u16 mTevOrderIdx[0x10];
    /* 0x0DC */ u16 mTevColorIdx[4];
    /* 0x0E4 */ u16 mTevStageIdx[0x10];
    /* 0x104 */ u16 mTevSwapModeIdx[0x10];
    /* 0x124 */ u16 mTevSwapModeTableIdx[4];
    /* 0x12C */ u8 field_0x12c[0x18];
    /* 0x144 */ u16 mFogIdx;
    /* 0x146 */ u16 mAlphaCompIdx;
    /* 0x148 */ u16 mBlendIdx;
    /* 0x14A */ u16 mNBTScaleIdx;
}; // size 0x14C

struct J3DIndInitData {
    /* 0x000 */ bool mEnabled;
    /* 0x001 */ u8 mIndTexStageNum;
    /* 0x002 */ u8 field_0x002[2];
    /* 0x004 */ J3DIndTexOrderInfo mIndTexOrderInfo[3];
    /* 0x010 */ u8 field_0x010[4];
    /* 0x014 */ J3DIndTexMtxInfo mIndTexMtxInfo[3];
    /* 0x068 */ J3DIndTexCoordScaleInfo mIndTexCoordScaleInfo[3];
    /* 0x074 */ u8 field_0x074[4];
    /* 0x078 */ J3DIndTevStageInfo mIndTevStageInfo[0x10];
}; // size 0x138

struct J3DPatchingInfo {
    /* 0x0 */ u16 mMatColorOffset;
    /* 0x2 */ u16 mColorChanOffset;
    /* 0x4 */ u16 mTexMtxOffset;
    /* 0x6 */ u16 mTexNoOffset;
    /* 0x8 */ u16 mTevRegOffset;
    /* 0xA */ u16 mFogOffset;
    /* 0xC */ u8 field_0xc[4];
}; // size 0x10

struct J3DDisplayListInit {
    /* 0x0 */ u32 mOffset;
    /* 0x4 */ u32 field_0x4;
}; // size 8

struct J3DTexCoord2Info;
struct J3DCurrentMtxInfo;

class J3DMaterialFactory {
public:
    enum MaterialType {
        MATERIAL_TYPE_NORMAL = 0,
        MATERIAL_TYPE_LOCKED = 1,
        MATERIAL_TYPE_PATCHED = 2,
    };

    /* 80330234 */ J3DMaterialFactory(J3DMaterialDLBlock const&);
    /* 8032FFEC */ J3DMaterialFactory(J3DMaterialBlock const&);
    /* 803302BC */ u16 countUniqueMaterials();
    /* 80330304 */ u32 countTexGens(int) const;
    /* 8033033C */ u32 countStages(int) const;
    /* 803303C4 */ J3DMaterial* create(J3DMaterial*, MaterialType, int, u32) const;
    /* 80330440 */ J3DMaterial* createNormalMaterial(J3DMaterial*, int, u32) const;
    /* 80330D84 */ J3DMaterial* createPatchedMaterial(J3DMaterial*, int, u32) const;
    /* 8033168C */ void modifyPatchedCurrentMtx(J3DMaterial*, int) const;
    /* 803317D4 */ J3DMaterial* createLockedMaterial(J3DMaterial*, int, u32) const;
    /* 80331A7C */ u32 calcSize(J3DMaterial*, MaterialType, int, u32) const;
    /* 80331AFC */ u32 calcSizeNormalMaterial(J3DMaterial*, int, u32) const;
    /* 80331C30 */ u32 calcSizePatchedMaterial(J3DMaterial*, int, u32) const;
    /* 80331D00 */ u32 calcSizeLockedMaterial(J3DMaterial*, int, u32) const;
    /* 80331D18 */ J3DGXColor newMatColor(int, int) const;
    /* 80331D74 */ u8 newColorChanNum(int) const;
    /* 80331DAC */ J3DColorChan newColorChan(int, int) const;
    /* 80331F50 */ J3DGXColor newAmbColor(int, int) const;
    /* 80331FAC */ u32 newTexGenNum(int) const;
    /* 80331FE4 */ J3DTexCoord newTexCoord(int, int) const;
    /* 80332044 */ J3DTexMtx* newTexMtx(int, int) const;
    /* 803320CC */ u8 newCullMode(int) const;
    /* 8033210C */ u16 newTexNo(int, int) const;
    /* 80332154 */ J3DTevOrder newTevOrder(int, int) const;
    /* 803321A0 */ J3DGXColorS10 newTevColor(int, int) const;
    /* 80332210 */ J3DGXColor newTevKColor(int, int) const;
    /* 8033226C */ u8 newTevStageNum(int) const;
    /* 803322A4 */ J3DTevStage newTevStage(int, int) const;
    /* 80332304 */ J3DTevSwapModeTable newTevSwapModeTable(int, int) const;
    /* 803323A0 */ u8 newIndTexStageNum(int) const;
    /* 803323C8 */ J3DIndTexOrder newIndTexOrder(int, int) const;
    /* 8033240C */ J3DIndTexMtx newIndTexMtx(int, int) const;
    /* 803324B4 */ J3DIndTevStage newIndTevStage(int, int) const;
    /* 80332648 */ J3DIndTexCoordScale newIndTexCoordScale(int, int) const;
    /* 8033268C */ J3DFog newFog(int) const;
    /* 80332768 */ J3DAlphaComp newAlphaComp(int) const;
    /* 803327E8 */ J3DBlend newBlend(int) const;
    /* 8033282C */ J3DZMode newZMode(int) const;
    /* 8033288C */ u8 newZCompLoc(int) const;
    /* 803328C4 */ u8 newDither(int) const;
    /* 803328FC */ J3DNBTScale newNBTScale(int) const;

    u16 getMaterialID(int idx) const { return mpMaterialID[idx]; }
    u8 getMaterialMode(int idx) const { return mpMaterialInitData[mpMaterialID[idx]].mMaterialMode; }
    
    static u32 getMdlDataFlag_TevStageNum(u32 flags) { return (flags >> 0x10) & 0x1f; }
    static u32 getMdlDataFlag_TexGenFlag(u32 flags) { return flags & 0x0c000000; }
    static u32 getMdlDataFlag_ColorFlag(u32 flags) { return flags & 0xc0000000; }
    static u32 getMdlDataFlag_PEFlag(u32 flags) { return flags & 0x30000000; }

    /* 0x00 */ u16 mMaterialNum;
    /* 0x04 */ J3DMaterialInitData* mpMaterialInitData;
    /* 0x08 */ u16* mpMaterialID;
    /* 0x0C */ J3DIndInitData* mpIndInitData;
    /* 0x10 */ GXColor* mpMatColor;
    /* 0x14 */ u8* mpColorChanNum;
    /* 0x18 */ J3DColorChanInfo* mpColorChanInfo;
    /* 0x1C */ GXColor* mpAmbColor;
    /* 0x20 */ J3DLightInfo* mpLightInfo;
    /* 0x24 */ u8* mpTexGenNum;
    /* 0x28 */ J3DTexCoordInfo* mpTexCoordInfo;
    /* 0x2C */ J3DTexCoord2Info* mpTexCoord2Info;
    /* 0x30 */ J3DTexMtxInfo* mpTexMtxInfo;
    /* 0x34 */ J3DTexMtxInfo* field_0x34;
    /* 0x38 */ u16* mpTexNo;
    /* 0x3C */ GXCullMode* mpCullMode;
    /* 0x40 */ J3DTevOrderInfo* mpTevOrderInfo;
    /* 0x44 */ GXColorS10* mpTevColor;
    /* 0x48 */ GXColor* mpTevKColor;
    /* 0x4C */ u8* mpTevStageNum;
    /* 0x50 */ J3DTevStageInfo* mpTevStageInfo;
    /* 0x54 */ J3DTevSwapModeInfo* mpTevSwapModeInfo;
    /* 0x58 */ J3DTevSwapModeTableInfo* mpTevSwapModeTableInfo;
    /* 0x5C */ J3DFogInfo* mpFogInfo;
    /* 0x60 */ J3DAlphaCompInfo* mpAlphaCompInfo;
    /* 0x64 */ J3DBlendInfo* mpBlendInfo;
    /* 0x68 */ J3DZModeInfo* mpZModeInfo;
    /* 0x6C */ u8* mpZCompLoc;
    /* 0x70 */ u8* mpDither;
    /* 0x74 */ J3DNBTScaleInfo* mpNBTScaleInfo;
    /* 0x78 */ J3DDisplayListInit* mpDisplayListInit;
    /* 0x7C */ J3DPatchingInfo* mpPatchingInfo;
    /* 0x80 */ J3DCurrentMtxInfo* mpCurrentMtxInfo;
    /* 0x84 */ u8* mpMaterialMode;
};

#endif /* J3DMATERIALFACTORY_H */
