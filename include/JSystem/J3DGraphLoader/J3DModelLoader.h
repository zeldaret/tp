#ifndef J3DMODELLOADER_H
#define J3DMODELLOADER_H

#include "dolphin/types.h"
#include "dolphin/mtx/mtx.h"

class J3DModelData;
class J3DMaterialTable;
class J3DModelHierarchy;

struct J3DModelBlock {
    /* 0x00 */ u32 mBlockType;
    /* 0x04 */ u32 mBlockSize;
};

struct J3DModelFileData {
    /* 0x00 */ u32 mMagic1;
    /* 0x04 */ u32 mMagic2;
    /* 0x08 */ u8 field_0x08[4];
    /* 0x0C */ u32 mBlockNum;
    /* 0x10 */ u8 field_0x10[0x10];
    /* 0x20 */ J3DModelBlock mBlocks[1];
};

struct J3DModelInfoBlock : public J3DModelBlock {
    /* 0x08 */ u16 mFlags;
    /* 0x0C */ u32 mPacketNum;
    /* 0x10 */ u32 mVtxNum;
    /* 0x14 */ void* mpHierarchy;
}; // size 0x18

struct J3DVertexBlock : public J3DModelBlock {
    /* 0x08 */ void* mpVtxAttrFmtList;
    /* 0x0C */ void* mpVtxPosArray;
    /* 0x10 */ void* mpVtxNrmArray;
    /* 0x14 */ void* mpVtxNBTArray;
    /* 0x18 */ void* mpVtxColorArray[2];
    /* 0x20 */ void* mpVtxTexCoordArray[8];
}; // size 0x40

struct J3DEnvelopeBlock : public J3DModelBlock {
    /* 0x08 */ u16 mWEvlpMtxNum;
    /* 0x0C */ void* mpWEvlpMixMtxNum;
    /* 0x10 */ void* mpWEvlpMixIndex;
    /* 0x14 */ void* mpWEvlpMixWeight;
    /* 0x18 */ void* mpInvJointMtx;
}; // size 0x1C

struct J3DDrawBlock : public J3DModelBlock {
    /* 0x08 */ u16 mMtxNum;
    /* 0x0C */ void* mpDrawMtxFlag;
    /* 0x10 */ void* mpDrawMtxIndex;
}; // size 0x14

struct J3DJointBlock : public J3DModelBlock {
    /* 0x08 */ u16 mJointNum;
    /* 0x0C */ void* mpJointInitData;
    /* 0x10 */ void* mpIndexTable;
    /* 0x14 */ void* mpNameTable;
}; // size 0x18

struct J3DMaterialBlock : public J3DModelBlock {
    /* 0x08 */ u16 mMaterialNum;
    /* 0x0C */ void* mpMaterialInitData;
    /* 0x10 */ void* mpMaterialID;
    /* 0x14 */ void* mpNameTable;
    /* 0x18 */ void* mpIndInitData;
    /* 0x1C */ void* mpCullMode;
    /* 0x20 */ void* mpMatColor;
    /* 0x24 */ void* mpColorChanNum;
    /* 0x28 */ void* mpColorChanInfo;
    /* 0x2C */ void* mpAmbColor;
    /* 0x30 */ void* mpLightInfo;
    /* 0x34 */ void* mpTexGenNum;
    /* 0x38 */ void* mpTexCoordInfo;
    /* 0x3C */ void* mpTexCoord2Info;
    /* 0x40 */ void* mpTexMtxInfo;
    /* 0x44 */ void* field_0x44;
    /* 0x48 */ void* mpTexNo;
    /* 0x4C */ void* mpTevOrderInfo;
    /* 0x50 */ void* mpTevColor;
    /* 0x54 */ void* mpTevKColor;
    /* 0x58 */ void* mpTevStageNum;
    /* 0x5C */ void* mpTevStageInfo;
    /* 0x60 */ void* mpTevSwapModeInfo;
    /* 0x64 */ void* mpTevSwapModeTableInfo;
    /* 0x68 */ void* mpFogInfo;
    /* 0x6C */ void* mpAlphaCompInfo;
    /* 0x70 */ void* mpBlendInfo;
    /* 0x74 */ void* mpZModeInfo;
    /* 0x78 */ void* mpZCompLoc;
    /* 0x7C */ void* mpDither;
    /* 0x80 */ void* mpNBTScaleInfo;
};

struct J3DMaterialBlock_v21 : public J3DModelBlock {
    /* 0x08 */ u16 mMaterialNum;
    /* 0x0C */ void* mpMaterialInitData;
    /* 0x10 */ void* mpMaterialID;
    /* 0x14 */ void* mpNameTable;
    /* 0x18 */ void* mpCullMode;
    /* 0x1C */ void* mpMatColor;
    /* 0x20 */ void* mpColorChanNum;
    /* 0x24 */ void* mpColorChanInfo;
    /* 0x28 */ void* mpTexGenNum;
    /* 0x2C */ void* mpTexCoordInfo;
    /* 0x30 */ void* mpTexCoord2Info;
    /* 0x34 */ void* mpTexMtxInfo;
    /* 0x38 */ void* field_0x38;
    /* 0x3C */ void* mpTexNo;
    /* 0x40 */ void* mpTevOrderInfo;
    /* 0x44 */ void* mpTevColor;
    /* 0x48 */ void* mpTevKColor;
    /* 0x4C */ void* mpTevStageNum;
    /* 0x50 */ void* mpTevStageInfo;
    /* 0x54 */ void* mpTevSwapModeInfo;
    /* 0x58 */ void* mpTevSwapModeTableInfo;
    /* 0x5C */ void* mpFogInfo;
    /* 0x60 */ void* mpAlphaCompInfo;
    /* 0x64 */ void* mpBlendInfo;
    /* 0x68 */ void* mpZModeInfo;
    /* 0x6C */ void* mpZCompLoc;
    /* 0x70 */ void* mpDither;
    /* 0x74 */ void* mpNBTScaleInfo;
};

struct J3DMaterialDLBlock : public J3DModelBlock {
    /* 0x08 */ u16 mMaterialNum;
    /* 0x0C */ void* mpDisplayListInit;
    /* 0x10 */ void* mpPatchingInfo;
    /* 0x14 */ void* mpCurrentMtxInfo;
    /* 0x18 */ void* mpMaterialMode;
    /* 0x1C */ void* field_0x1c;
    /* 0x20 */ void* mpNameTable;
};

struct J3DShapeBlock : public J3DModelBlock {
    /* 0x08 */ u16 mShapeNum;
    /* 0x0C */ void* mpShapeInitData;
    /* 0x10 */ void* mpIndexTable;
    /* 0x14 */ void* mpNameTable;
    /* 0x18 */ void* mpVtxDescList;
    /* 0x1C */ void* mpMtxTable;
    /* 0x20 */ void* mpDisplayListData;
    /* 0x24 */ void* mpMtxInitData;
    /* 0x28 */ void* mpDrawInitData;
}; // size 0x2C

struct J3DTextureBlock : public J3DModelBlock {
    /* 0x08 */ u16 mTextureNum;
    /* 0x0C */ void* mpTextureRes;
    /* 0x10 */ void* mpNameTable;
};

class J3DModelLoader {
public:
    /* 8033468C */ J3DModelLoader();
    /* 80335048 */ void readInformation(J3DModelInfoBlock const*, u32);
    /* 803351D0 */ void readVertex(J3DVertexBlock const*);
    /* 803353F0 */ void readEnvelop(J3DEnvelopeBlock const*);
    /* 80335480 */ void readDraw(J3DDrawBlock const*);
    /* 80335530 */ void readJoint(J3DJointBlock const*);
    /* 80335AF4 */ void readShape(J3DShapeBlock const*, u32);
    /* 80335C18 */ void readTexture(J3DTextureBlock const*);
    /* 80335F5C */ void readTextureTable(J3DTextureBlock const*);
    /* 80336028 */ void readPatchedMaterial(J3DMaterialBlock const*, u32);
    /* 80336168 */ void readMaterialDL(J3DMaterialDLBlock const*, u32);
    /* 8033631C */ void modifyMaterial(u32);

    /* 80336CD8 */ u32 calcSizeInformation(J3DModelInfoBlock const*, u32);
    /* 80336D64 */ u32 calcSizeJoint(J3DJointBlock const*);
    /* 80336D90 */ u32 calcSizeEnvelope(J3DEnvelopeBlock const*);
    /* 80336DA0 */ u32 calcSizeDraw(J3DDrawBlock const*);
    /* 80336EA0 */ u32 calcSizeShape(J3DShapeBlock const*, u32);
    /* 80336F44 */ u32 calcSizeTexture(J3DTextureBlock const*);
    /* 80336FF0 */ u32 calcSizeTextureTable(J3DTextureBlock const*);
    /* 80337010 */ u32 calcSizePatchedMaterial(J3DMaterialBlock const*, u32);
    /* 803370A0 */ u32 calcSizeMaterialDL(J3DMaterialDLBlock const*, u32);

    // virtuals
    /* 803347E0 */ J3DModelData* load(void const*, u32);
    /* 80334ABC */ J3DMaterialTable* loadMaterialTable(void const*);
    /* 80334C20 */ J3DModelData* loadBinaryDisplayList(void const*, u32);
    /* 803367D4 */ u32 calcLoadSize(void const*, u32);
    /* 803369A0 */ u32 calcLoadMaterialTableSize(void const*);
    /* 80336A98 */ u32 calcLoadBinaryDisplayListSize(void const*, u32);
    /* 80336794 */ u16 countMaterialNum(void const*);
    /* 80334EE0 */ void setupBBoardInfo();
    /* 80336450 */ ~J3DModelLoader();
    /* 8033649C */ void readMaterial(J3DMaterialBlock const*, u32);
    /* 80336498 */ void readMaterial_v21(J3DMaterialBlock_v21 const*, u32);
    /* 803364A4 */ void readMaterialTable(J3DMaterialBlock const*, u32);
    /* 803364A0 */ void readMaterialTable_v21(J3DMaterialBlock_v21 const*, u32);
    /* 803364A8 */ u32 calcSizeMaterial(J3DMaterialBlock const*, u32);
    /* 803364B0 */ u32 calcSizeMaterialTable(J3DMaterialBlock const*, u32);

    /* 0x00 */ void* _vtable;
    /* 0x04 */ J3DModelData* mpModelData;
    /* 0x08 */ J3DMaterialTable* mpMaterialTable;
    /* 0x0C */ J3DShapeBlock const* mpShapeBlock;
    /* 0x10 */ J3DMaterialBlock const* mpMaterialBlock;
    /* 0x14 */ J3DModelHierarchy* mpModelHierarchy;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1A */ u16 mEnvelopeSize;
};

class J3DModelLoader_v21 { // : public J3DModelLoader {
public:
    /* 803363F4 */ ~J3DModelLoader_v21() {}
    /* 80335890 */ void readMaterial_v21(J3DMaterialBlock_v21 const*, u32);
    /* 80335E20 */ void readMaterialTable_v21(J3DMaterialBlock_v21 const*, u32);

    /* 0x00 */ void* _vtable;
    /* 0x04 */ J3DModelData* mpModelData;
    /* 0x08 */ J3DMaterialTable* mpMaterialTable;
    /* 0x0C */ J3DShapeBlock const* mpShapeBlock;
    /* 0x10 */ J3DMaterialBlock const* mpMaterialBlock;
    /* 0x14 */ J3DModelHierarchy* mpModelHierarchy;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1A */ u16 mEnvelopeSize;
};

class J3DModelLoader_v26 { // : public J3DModelLoader {
public:
    /* 80336398 */ ~J3DModelLoader_v26() {}
    /* 80335614 */ void readMaterial(J3DMaterialBlock const*, u32);
    /* 80335CE4 */ void readMaterialTable(J3DMaterialBlock const*, u32);
    /* 80336DB4 */ u32 calcSizeMaterial(J3DMaterialBlock const*, u32);
    /* 80336F60 */ u32 calcSizeMaterialTable(J3DMaterialBlock const*, u32);

    /* 0x00 */ void* _vtable;
    /* 0x04 */ J3DModelData* mpModelData;
    /* 0x08 */ J3DMaterialTable* mpMaterialTable;
    /* 0x0C */ J3DShapeBlock const* mpShapeBlock;
    /* 0x10 */ J3DMaterialBlock const* mpMaterialBlock;
    /* 0x14 */ J3DModelHierarchy* mpModelHierarchy;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1A */ u16 mEnvelopeSize;
};

class J3DModelLoaderDataBase {
public:
    /* 803346BC */ static J3DModelData* load(void const* i_data, u32 i_flags);
};

#endif /* J3DMODELLOADER_H */
