#ifndef J3DMATERIALFACTORY_H
#define J3DMATERIALFACTORY_H

#include "JSystem/J3DGraphLoader/J3DModelLoader.h"

class J3DMaterial;

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
    /* 80330304 */ void countTexGens(int) const;
    /* 8033033C */ void countStages(int) const;
    /* 803303C4 */ J3DMaterial* create(J3DMaterial*, J3DMaterialFactory::MaterialType, int, u32) const;
    /* 80330440 */ void createNormalMaterial(J3DMaterial*, int, u32) const;
    /* 80330D84 */ void createPatchedMaterial(J3DMaterial*, int, u32) const;
    /* 8033168C */ void modifyPatchedCurrentMtx(J3DMaterial*, int) const;
    /* 803317D4 */ void createLockedMaterial(J3DMaterial*, int, u32) const;
    /* 80331A7C */ void calcSize(J3DMaterial*, J3DMaterialFactory::MaterialType, int, u32) const;
    /* 80331AFC */ void calcSizeNormalMaterial(J3DMaterial*, int, u32) const;
    /* 80331C30 */ void calcSizePatchedMaterial(J3DMaterial*, int, u32) const;
    /* 80331D00 */ void calcSizeLockedMaterial(J3DMaterial*, int, u32) const;
    /* 80331D18 */ void newMatColor(int, int) const;
    /* 80331D74 */ void newColorChanNum(int) const;
    /* 80331DAC */ void newColorChan(int, int) const;
    /* 80331F50 */ void newAmbColor(int, int) const;
    /* 80331FAC */ void newTexGenNum(int) const;
    /* 80331FE4 */ void newTexCoord(int, int) const;
    /* 80332044 */ void newTexMtx(int, int) const;
    /* 803320CC */ void newCullMode(int) const;
    /* 8033210C */ void newTexNo(int, int) const;
    /* 80332154 */ void newTevOrder(int, int) const;
    /* 803321A0 */ void newTevColor(int, int) const;
    /* 80332210 */ void newTevKColor(int, int) const;
    /* 8033226C */ void newTevStageNum(int) const;
    /* 803322A4 */ void newTevStage(int, int) const;
    /* 80332304 */ void newTevSwapModeTable(int, int) const;
    /* 803323A0 */ void newIndTexStageNum(int) const;
    /* 803323C8 */ void newIndTexOrder(int, int) const;
    /* 8033240C */ void newIndTexMtx(int, int) const;
    /* 803324B4 */ void newIndTevStage(int, int) const;
    /* 80332648 */ void newIndTexCoordScale(int, int) const;
    /* 8033268C */ void newFog(int) const;
    /* 80332768 */ void newAlphaComp(int) const;
    /* 803327E8 */ void newBlend(int) const;
    /* 8033282C */ void newZMode(int) const;
    /* 8033288C */ void newZCompLoc(int) const;
    /* 803328C4 */ void newDither(int) const;
    /* 803328FC */ void newNBTScale(int) const;

    u16 getMaterialID(int i_idx) { return mpMaterialID[i_idx]; }

    /* 0x00 */ u8 field_0x00[8];
    /* 0x08 */ u16* mpMaterialID;
    /* 0x0C */ u8 field_0x0c[0x7C];
};

#endif /* J3DMATERIALFACTORY_H */
