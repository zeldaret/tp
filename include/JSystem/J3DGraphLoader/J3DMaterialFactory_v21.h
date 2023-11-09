#ifndef J3DMATERIALFACTORY_V21_H
#define J3DMATERIALFACTORY_V21_H

#include "JSystem/J3DGraphLoader/J3DModelLoader.h"
#include "dolphin/types.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXStruct.h"

class J3DMaterial;
class J3DMaterialInitData_v21;
class J3DIndInitData;
class J3DColorChanInfo;
class J3DLightInfo;
class J3DTexCoordInfo;
class J3DTexCoord2Info;
class J3DTexMtxInfo;
class J3DTevOrderInfo;
class J3DTevStageInfo;
class J3DTevSwapModeInfo;
class J3DTevSwapModeTableInfo;
class J3DFogInfo;
class J3DAlphaCompInfo;
class J3DBlendInfo;
class J3DZModeInfo;
class J3DNBTScaleInfo;
class J3DDisplayListInit;
class J3DPatchingInfo;
class J3DCurrentMtxInfo;

class J3DMaterialFactory_v21 {
public:
    /* 80332DA4 */ J3DMaterialFactory_v21(J3DMaterialBlock_v21 const&);
    /* 80332F84 */ u16 countUniqueMaterials();
    /* 80332FA8 */ void countTexGens(int) const;
    /* 80332FE0 */ void countStages(int) const;
    /* 80333068 */ J3DMaterial* create(J3DMaterial*, int, u32) const;
    /* 803337D8 */ void newMatColor(int, int) const;
    /* 80333834 */ void newColorChanNum(int) const;
    /* 8033386C */ void newColorChan(int, int) const;
    /* 80333A10 */ void newTexGenNum(int) const;
    /* 80333A48 */ void newTexCoord(int, int) const;
    /* 80333AA8 */ void newTexMtx(int, int) const;
    /* 80333B30 */ void newCullMode(int) const;
    /* 80333B70 */ void newTexNo(int, int) const;
    /* 80333BB8 */ void newTevOrder(int, int) const;
    /* 80333C04 */ void newTevColor(int, int) const;
    /* 80333C74 */ void newTevKColor(int, int) const;
    /* 80333CD0 */ void newTevStageNum(int) const;
    /* 80333D08 */ void newTevStage(int, int) const;
    /* 80333D68 */ void newTevSwapModeTable(int, int) const;
    /* 80333E04 */ void newFog(int) const;
    /* 80333EE0 */ void newAlphaComp(int) const;
    /* 80333F60 */ void newBlend(int) const;
    /* 80333FA4 */ void newZMode(int) const;
    /* 80334004 */ void newZCompLoc(int) const;
    /* 8033403C */ void newDither(int) const;
    /* 80334074 */ void newNBTScale(int) const;

    u16 getMaterialID(u16 idx) { return mpMaterialID[idx]; }

    /* 0x00 */ u16 mMaterialNum;
    /* 0x04 */ J3DMaterialInitData_v21* field_0x04;
    /* 0x08 */ u16* mpMaterialID;
    /* 0x0C */ GXColor* field_0x0c;
    /* 0x10 */ u8* field_0x10;
    /* 0x14 */ J3DColorChanInfo* field_0x14;
    /* 0x18 */ u8* field_0x18;
    /* 0x1C */ J3DTexCoordInfo* field_0x1c;
    /* 0x20 */ J3DTexCoord2Info* field_0x20;
    /* 0x24 */ J3DTexMtxInfo* field_0x24;
    /* 0x28 */ J3DTexMtxInfo* field_0x28;
    /* 0x2C */ u16* field_0x2c;
    /* 0x30 */ GXCullMode* field_0x30;
    /* 0x34 */ J3DTevOrderInfo* field_0x34;
    /* 0x38 */ GXColorS10* field_0x38;
    /* 0x3C */ GXColor* field_0x3c;
    /* 0x40 */ u8* field_0x40;
    /* 0x44 */ J3DTevStageInfo* field_0x44;
    /* 0x48 */ J3DTevSwapModeTableInfo* field_0x48;
    /* 0x4C */ J3DFogInfo* field_0x4c;
    /* 0x50 */ J3DAlphaCompInfo* field_0x50;
    /* 0x54 */ J3DBlendInfo* field_0x54;
    /* 0x58 */ J3DZModeInfo* field_0x58;
    /* 0x5C */ u8* field_0x5c;
    /* 0x60 */ u8* field_0x60;
    /* 0x64 */ J3DNBTScaleInfo* field_0x64;
    /* 0x68 */ u16 field_0x68;
    /* 0x69 */ u8 field_0x69;
    /* 0x6A */ u8 field_0x6a;
};

#endif /* J3DMATERIALFACTORY_V21_H */
