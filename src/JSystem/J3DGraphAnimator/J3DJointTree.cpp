#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphAnimator/J3DJointTree.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAttach.h"
#include "JSystem/J3DGraphAnimator/J3DShapeTable.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"

enum {
    kTypeEnd        = 0x00,
    kTypeBeginChild = 0x01,
    kTypeEndChild   = 0x02,
    kTypeJoint      = 0x10,
    kTypeMaterial   = 0x11,
    kTypeShape      = 0x12,
};

/* 80325A18-80325A9C 320358 0084+00 0/0 1/1 0/0 .text            __ct__12J3DJointTreeFv */
J3DJointTree::J3DJointTree()
    : mHierarchy(NULL), mFlags(0), mModelDataType(0), mRootNode(NULL), mBasicMtxCalc(NULL),
      mJointNodePointer(NULL), mJointNum(0), mWEvlpMtxNum(0), mWEvlpMixMtxNum(0),
      mWEvlpMixMtxIndex(0), mWEvlpMixWeight(0), mInvJointMtx(NULL), mWEvlpImportantMtxIdx(0),
      field_0x40(0), mJointName(NULL) {}

/* 80325A9C-80325C00 3203DC 0164+00 1/0 2/2 0/0 .text
 * makeHierarchy__12J3DJointTreeFP8J3DJointPPC17J3DModelHierarchyP16J3DMaterialTableP13J3DShapeTable
 */
void J3DJointTree::makeHierarchy(J3DJoint* pJoint, const J3DModelHierarchy** pHierarchy,
                                 J3DMaterialTable* pMaterialTable, J3DShapeTable* pShapeTable) {
    J3D_ASSERT_NULLPTR(95, pHierarchy != NULL);
    J3DJoint* curJoint = pJoint;

    while (true) {
        J3DJoint* newJoint = NULL;
        J3DMaterial* newMaterial = NULL;
        J3DShape* newShape = NULL;

        switch ((*pHierarchy)->mType) {
        case kTypeBeginChild:
            (*pHierarchy)++;
            makeHierarchy(curJoint, pHierarchy, pMaterialTable, pShapeTable);
            break;
        case kTypeEndChild:
            (*pHierarchy)++; 
            return;
        case kTypeEnd:
            return;
        case kTypeJoint:
            newJoint = mJointNodePointer[((*pHierarchy)++)->mValue];
            break;
        case kTypeMaterial:
            newMaterial = pMaterialTable->getMaterialNodePointer(((*pHierarchy)++)->mValue);
            break;
        case kTypeShape:
            newShape = pShapeTable->getShapeNodePointer(((*pHierarchy)++)->mValue);
            break;
        }

        if (newJoint != NULL) {
            curJoint = newJoint;
            if (pJoint == NULL)
                mRootNode = newJoint;
            else
                pJoint->appendChild(newJoint);
        } else if (newMaterial != NULL && pJoint->getType() == 'NJNT') {
            pJoint->addMesh(newMaterial);
            newMaterial->setJoint(pJoint);
        } else if (newShape != NULL && pJoint->getType() == 'NJNT') {
            J3DMaterial* newMaterial = pJoint->getMesh();
            newMaterial->addShape(newShape);
            newShape->setMaterial(newMaterial);
        }
    }
}

/* 80325C00-80325CAC 320540 00AC+00 0/0 2/2 0/0 .text findImportantMtxIndex__12J3DJointTreeFv */
void J3DJointTree::findImportantMtxIndex() {
    s32 wEvlpMtxNum = getWEvlpMtxNum();
    u32 tableIdx = 0;
    u16 drawFullWgtMtxNum = getDrawFullWgtMtxNum();
    u16* wEvlpMixIndex = getWEvlpMixMtxIndex();
    f32* wEvlpMixWeight = getWEvlpMixWeight();
    u16* wEvlpImportantMtxIdx = getWEvlpImportantMtxIndex();

    // Rigid matrices are easy.
    for (u16 i = 0; i < drawFullWgtMtxNum; i++)
        wEvlpImportantMtxIdx[i] = getDrawMtxIndex(i);

    // For envelope matrices, we need to find the matrix with the most contribution.
    for (s32 i = 0; i < wEvlpMtxNum; i++) {
        s32 mixNum = getWEvlpMixMtxNum(i);
        u16 bestIdx = 0;
        f32 bestWeight = -0.1f;

        for (s32 j = 0; j < mixNum; j++, tableIdx++) {
            if (bestWeight < wEvlpMixWeight[tableIdx]) {
                bestWeight = wEvlpMixWeight[tableIdx];
                bestIdx = wEvlpMixIndex[tableIdx];
            }
        }

        wEvlpImportantMtxIdx[i + getDrawFullWgtMtxNum()] = bestIdx;
    }
}

/* 80325CAC-80325D1C 3205EC 0070+00 1/0 0/0 0/0 .text
 * calc__12J3DJointTreeFP12J3DMtxBufferRC3VecRA3_A4_Cf          */
void J3DJointTree::calc(J3DMtxBuffer* pMtxBuffer, Vec const& scale, f32 const (&mtx)[3][4]) {
    J3D_ASSERT_NULLPTR(217, pMtxBuffer != NULL);
    getBasicMtxCalc()->init(scale, mtx);
    getBasicMtxCalc()->setMtxBuffer(pMtxBuffer);

    J3DJoint* root = getRootNode();
    if (root == NULL)
        return;

    root->setCurrentMtxCalc(getBasicMtxCalc());
    root->recursiveCalc();
}

/* 80325D1C-80325D24 32065C 0008+00 1/1 0/0 0/0 .text setMtxBuffer__10J3DMtxCalcFP12J3DMtxBuffer
 */
void J3DMtxCalc::setMtxBuffer(J3DMtxBuffer* mtxBuffer) {
    J3DMtxCalc::mMtxBuffer = mtxBuffer;
}
