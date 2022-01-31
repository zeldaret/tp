#ifndef J3DMODELDATA_H
#define J3DMODELDATA_H

#include "JSystem/J3DGraphAnimator/J3DJointTree.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAttach.h"
#include "JSystem/J3DGraphAnimator/J3DShapeTable.h"
#include "JSystem/J3DGraphBase/J3DSys.h"
#include "JSystem/J3DGraphBase/J3DVertex.h"
#include "dolphin/types.h"

class J3DModelData {
public:
    /* 80325D88 */ void clear();
    /* 80325DA0 */ J3DModelData();
    /* 80325E14 */ s32 newSharedDisplayList(u32);
    /* 80325EC8 */ void indexToPtr();
    /* 80325F94 */ void makeSharedDL();
    /* 8032600C */ void simpleCalcMaterial(u16, f32 (*)[4]);
    /* 803260CC */ void syncJ3DSysPointers() const;
    /* 803260F8 */ void syncJ3DSysFlags() const;

    /* 8032617C */ virtual ~J3DModelData();

    J3DMaterialTable& getMaterialTable() { return mMaterialTable; }
    J3DVertexData& getVertexData() { return mVertexData; }
    u16 getShapeNum() const { return mShapeTable.getShapeNum(); }
    u16 getMaterialNum() const { return mMaterialTable.getMaterialNum(); }
    u16 getJointNum() const { return mJointTree.getJointNum(); }
    u16 getDrawMtxNum() const { return mJointTree.getDrawMtxNum(); }
    J3DMaterial* getMaterialNodePointer(u16 idx) const {
        return mMaterialTable.getMaterialNodePointer(idx);
    }
    J3DShape* getShapeNodePointer(u16 idx) const { return mShapeTable.getShapeNodePointer(idx); }
    J3DJoint* getJointNodePointer(u16 idx) const { return mJointTree.getJointNodePointer(idx); }
    J3DJointTree& getJointTree() { return mJointTree; }
    J3DTexture* getTexture() const { return mMaterialTable.getTexture(); }
    JUTNameTab* getTextureName() const { return mMaterialTable.getTextureName(); }
    u16 getWEvlpMtxNum() const { return mJointTree.getWEvlpMtxNum(); }
    void* getVtxPosArray() const { return mVertexData.getVtxPosArray(); }
    void* getVtxNrmArray() const { return mVertexData.getVtxNrmArray(); }
    _GXColor* getVtxColorArray(u8 idx) const { return mVertexData.getVtxColorArray(idx); }
    bool checkFlag(u32 flag) const { return !!(mFlags & flag); }
    bool checkBumpFlag() const { return mbHasBumpArray; }
    bool checkBBoardFlag() const { return mbHasBillboard == 1; }

private:
    /* 0x04 */ void* mpRawData;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u16 mbHasBumpArray;
    /* 0x0E */ u16 mbHasBillboard;
    /* 0x10 */ J3DJointTree mJointTree;
    /* 0x58 */ J3DMaterialTable mMaterialTable;
    /* 0x78 */ J3DShapeTable mShapeTable;
    /* 0x88 */ J3DVertexData mVertexData;
};  // Size: 0xE4

#endif /* J3DMODELDATA_H */
