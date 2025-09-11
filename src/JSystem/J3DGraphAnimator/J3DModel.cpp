#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphBase/J3DShapeMtx.h"

#define J3D_ASSERTMSG(LINE, COND, MSG) JUT_ASSERT_MSG(LINE, (COND) != 0, MSG)
#define J3D_WARN1(LINE, MSG, ARG1) JUT_WARN(LINE, MSG, ARG1)

/* 80327100-80327184 321A40 0084+00 0/0 3/3 0/0 .text            initialize__8J3DModelFv */
void J3DModel::initialize() {
    mModelData = NULL;
    mFlags = 0;
    mDiffFlag = 0;
    mCalcCallBack = NULL;
    mUserArea = 0;

    mBaseScale.x = 1.0f;
    mBaseScale.y = 1.0f;
    mBaseScale.z = 1.0f;

    MTXIdentity(mBaseTransformMtx);
    MTXIdentity(mInternalView);

    mMtxBuffer = NULL;
    mMatPacket = NULL;
    mShapePacket = NULL;
    mDeformData = NULL;
    mSkinDeform = NULL;
    mVtxColorCalc = NULL;
    mUnkCalc1 = NULL;
    mUnkCalc2 = NULL;
}

/* 80327184-80327300 321AC4 017C+00 0/0 3/3 0/0 .text
 * entryModelData__8J3DModelFP12J3DModelDataUlUl                */
s32 J3DModel::entryModelData(J3DModelData* pModelData, u32 mdlFlags, u32 mtxNum) {
    J3D_ASSERTMSG(83, pModelData != NULL, "Error : null pointer.");
    J3D_ASSERTMSG(84, mtxNum != 0, "Error : non-zero argument is specified 0.");
    int ret = kJ3DError_Success;

    mModelData = pModelData;
    mMtxBuffer = new J3DMtxBuffer();

    if (mMtxBuffer == NULL) {
        return kJ3DError_Alloc;
    }

    ret = mMtxBuffer->create(pModelData, mtxNum);
    if (ret != kJ3DError_Success) {
        return ret;
    }

    ret = createShapePacket(pModelData);
    if (ret != kJ3DError_Success) {
        return ret;
    }

    ret = createMatPacket(pModelData, mdlFlags);
    if (ret != kJ3DError_Success) {
        return ret;
    }

    mVertexBuffer.setVertexData(&pModelData->getVertexData());
    prepareShapePackets();

    if (mdlFlags & J3DMdlFlag_Unk1) {
        onFlag(J3DMdlFlag_Unk1);
    }
    if (mdlFlags & J3DMdlFlag_UseDefaultJ3D) {
        onFlag(J3DMdlFlag_UseDefaultJ3D);
    }
    if (mdlFlags & J3DMdlFlag_EnableLOD) {
        onFlag(J3DMdlFlag_EnableLOD);
    }
    if (mdlFlags & J3DMdlFlag_UseSharedDL) {
        onFlag(J3DMdlFlag_UseSharedDL);
    }
    if (mdlFlags & J3DMdlFlag_UseSingleDL) {
        onFlag(J3DMdlFlag_UseSingleDL);
    }
    if (mdlFlags & J3DMdlFlag_DifferedDLBuffer) {
        onFlag(J3DMdlFlag_DifferedDLBuffer);
    }
    if (mdlFlags & J3DMdlFlag_SkinPosCpu) {
        J3D_WARN1(149, "%s", "Don't forget to call J3DModel::setSkinDeform\n if you set J3DMdlFlag_SkinPosCpu.");
        onFlag(J3DMdlFlag_SkinPosCpu);
    }
    if (mdlFlags & J3DMdlFlag_SkinNrmCpu) {
        J3D_WARN1(154, "%s", "Don't forget to call J3DModel::setSkinDeform\n if you set J3DMdlFlag_SkinNrmCpu.");
        onFlag(J3DMdlFlag_SkinNrmCpu);
    }

    return kJ3DError_Success;
}

/* 80327300-803273CC 321C40 00CC+00 1/1 0/0 0/0 .text createShapePacket__8J3DModelFP12J3DModelData
 */
s32 J3DModel::createShapePacket(J3DModelData* pModelData) {
    J3D_ASSERTMSG(173, pModelData != NULL, "Error : null pointer.");

    if (pModelData->getShapeNum() != 0) {
        mShapePacket = new J3DShapePacket[pModelData->getShapeNum()];

        if (mShapePacket == NULL) {
            return kJ3DError_Alloc;
        }

        for (int i = 0; i < pModelData->getShapeNum(); i++) {
            mShapePacket[i].setShape(pModelData->getShapeNodePointer(i));
            mShapePacket[i].setModel(this);
        }
    }

    return kJ3DError_Success;
}

/* 803273CC-803275FC 321D0C 0230+00 1/1 0/0 0/0 .text createMatPacket__8J3DModelFP12J3DModelDataUl
 */
s32 J3DModel::createMatPacket(J3DModelData* pModelData, u32 mdlFlags) {
    J3D_ASSERTMSG(207, pModelData != NULL, "Error : null pointer.");
    s32 ret = 0;

    if (pModelData->getMaterialNum() != 0) {
        mMatPacket = new J3DMatPacket[pModelData->getMaterialNum()];

        if (mMatPacket == NULL) {
            return kJ3DError_Alloc;
        }
    }
    
    u16 matNum = pModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        J3DMaterial* materialNode = pModelData->getMaterialNodePointer(i);
        J3DMatPacket* matPacket = mMatPacket + i;
        J3DShapePacket* shapePacket = mShapePacket + materialNode->getShape()->getIndex();

        matPacket->setMaterial(materialNode);
        matPacket->setInitShapePacket(shapePacket);
        matPacket->addShapePacket(shapePacket);
        matPacket->setTexture(pModelData->getTexture());
        matPacket->setMaterialID(materialNode->mDiffFlag);

        if (pModelData->getModelDataType() == 1) {
            matPacket->lock();
        }

        if (mdlFlags & J3DMdlFlag_DifferedDLBuffer) {
            J3DDisplayListObj* dlobj = materialNode->getSharedDisplayListObj();
            J3D_ASSERTMSG(253, dlobj != NULL, "Error : User need to call J3DModelData::newSharedDisplayList()  before using DifferedDLBuffer.");
            matPacket->setDisplayListObj(dlobj);
        } else {
            if (pModelData->getModelDataType() == 1) {
                if (mdlFlags & J3DMdlFlag_UseSingleDL) {
                    matPacket->mpDisplayListObj = materialNode->getSharedDisplayListObj();
                    matPacket->setDisplayListObj(matPacket->mpDisplayListObj);
                } else {
                    J3DDisplayListObj* dlobj = materialNode->getSharedDisplayListObj();
                    ret = dlobj->single_To_Double();
                    if (ret != kJ3DError_Success)
                        return ret;

                    matPacket->setDisplayListObj(dlobj);
                }
            } else if (mdlFlags & J3DMdlFlag_UseSharedDL) {
                if (mdlFlags & J3DMdlFlag_UseSingleDL) {
                    ret = materialNode->newSingleSharedDisplayList(materialNode->countDLSize());
                    if (ret != kJ3DError_Success)
                        return ret;

                    J3DDisplayListObj* dlobj = materialNode->getSharedDisplayListObj();
                    matPacket->setDisplayListObj(dlobj);
                } else {
                    ret = materialNode->newSharedDisplayList(materialNode->countDLSize());
                    if (ret != kJ3DError_Success)
                        return ret;

                    J3DDisplayListObj* dlobj = materialNode->getSharedDisplayListObj();
                    ret = dlobj->single_To_Double();
                    if (ret != kJ3DError_Success)
                        return ret;

                    matPacket->setDisplayListObj(dlobj);
                }
            } else {
                if (mdlFlags & J3DMdlFlag_UseSingleDL) {
                    ret = matPacket->newSingleDisplayList(materialNode->countDLSize());
                    if (ret != kJ3DError_Success)
                        return ret;
                } else {
                    ret = matPacket->newDisplayList(materialNode->countDLSize());
                    if (ret != kJ3DError_Success)
                        return ret;
                }
            }
        }
    }

    return kJ3DError_Success;
}

/* 803275FC-8032767C 321F3C 0080+00 0/0 1/1 0/0 .text newDifferedDisplayList__8J3DModelFUl */
s32 J3DModel::newDifferedDisplayList(u32 diffFlags) {
    mDiffFlag = diffFlags;

    u16 shapeNum = getModelData()->getShapeNum();
    for (u16 i = 0; i < shapeNum; i++) {
        s32 ret = getShapePacket(i)->newDifferedDisplayList(diffFlags);
        if (ret != kJ3DError_Success)
            return ret;
    }

    return kJ3DError_Success;
}

void J3DModel::ptrToIndex() {
    j3dSys.setModel(this);
    j3dSys.setTexture(mModelData->getTexture());

    u16 matNum = mModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        J3DMatPacket* matPacket = getMatPacket(i);

        GDLObj dlobj;
        GDInitGDLObj(&dlobj, matPacket->getDisplayList(0), matPacket->getDisplayListSize());
        GDSetCurrent(&dlobj);

        mModelData->getMaterialNodePointer(i)->getTevBlock()->ptrToIndex();

        GDSetCurrent(NULL);
    }
}

/* 8032767C-803276B4 321FBC 0038+00 0/0 4/4 0/0 .text            lock__8J3DModelFv */
void J3DModel::lock() {
    int matNum = mModelData->getMaterialNum();
    for (int i = 0; i < matNum; i++) {
        mMatPacket[i].lock();
    }
}

/* 803276B4-803276EC 321FF4 0038+00 0/0 2/2 0/0 .text            unlock__8J3DModelFv */
void J3DModel::unlock() {
    int matNum = mModelData->getMaterialNum();
    for (int i = 0; i < matNum; i++) {
        mMatPacket[i].unlock();
    }
}

void J3DModel::makeDL() {
    j3dSys.setModel(this);
    j3dSys.setTexture(mModelData->getTexture());

    u16 matNum = mModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        j3dSys.setMatPacket(&mMatPacket[i]);
        mModelData->getMaterialNodePointer(i)->makeDisplayList();
    }
}

/* 803276EC-80327858 32202C 016C+00 1/0 0/0 0/0 .text            calcMaterial__8J3DModelFv */
void J3DModel::calcMaterial() {
    j3dSys.setModel(this);

    if (checkFlag(J3DMdlFlag_SkinPosCpu)) {
        j3dSys.onFlag(4);
    } else {
        j3dSys.offFlag(4);
    }

    if (checkFlag(J3DMdlFlag_SkinNrmCpu)) {
        j3dSys.onFlag(8);
    } else {
        j3dSys.offFlag(8);
    }

    mModelData->syncJ3DSysFlags();
    j3dSys.setTexture(mModelData->getTexture());

    u16 matNum = mModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        j3dSys.setMatPacket(&mMatPacket[i]);

        J3DMaterial* material = mModelData->getMaterialNodePointer(i);
        if (material->getMaterialAnm() != NULL) {
            material->getMaterialAnm()->calc(material);
        }

        material->calc(getAnmMtx(material->getJoint()->getJntNo()));
    }
}

/* 80327858-803279A0 322198 0148+00 1/0 0/0 0/0 .text            calcDiffTexMtx__8J3DModelFv */
void J3DModel::calcDiffTexMtx() {
    j3dSys.setModel(this);

    u16 matNum =  mModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        j3dSys.setMatPacket(&mMatPacket[i]);
        J3DMaterial* materialNode = mModelData->getMaterialNodePointer(i);
        materialNode->calcDiffTexMtx(getAnmMtx(materialNode->getJoint()->getJntNo()));
    }

    u16 shapeNum = getModelData()->getShapeNum();
    for (u16 i = 0; i < shapeNum; i++) {
        J3DShapePacket* shapePacket = getShapePacket(i);
        J3DTexGenBlock* texGenBlock = mModelData->getShapeNodePointer(i)->getMaterial()->getTexGenBlock();

        for (u16 j = 0; (int)j < 8; j++) {
            J3DTexMtx* texMtxNode = texGenBlock->getTexMtx(j);
            J3DTexMtxObj* texMtxObj = shapePacket->getTexMtxObj();
            if (texMtxNode != NULL && texMtxObj != NULL) {
                texMtxObj->setMtx(j, texMtxNode->getMtx());
            }
        }
    }
}

/* 803279A0-80327A2C 3222E0 008C+00 0/0 2/2 0/0 .text            diff__8J3DModelFv */
void J3DModel::diff() {
    u16 matNum = mModelData->getMaterialNum();
    for (u16 i = 0; i < matNum; i++) {
        j3dSys.setMatPacket(&mMatPacket[i]);
        mModelData->getMaterialNodePointer(i)->diff(mDiffFlag);
    }
}

/* 80327A2C-80327AA0 32236C 0074+00 0/0 1/1 2/2 .text setDeformData__8J3DModelFP13J3DDeformDataUl
 */
s32 J3DModel::setDeformData(J3DDeformData* p_deformData, u32 param_1) {
    mDeformData = p_deformData;

    if (p_deformData == NULL) {
        return kJ3DError_Success;
    }

    s32 ret = mVertexBuffer.copyLocalVtxArray(param_1);
    if (ret) {
        return ret;
    }

    if (param_1 & 4) {
        p_deformData->offAllFlag(1);
    }

    return kJ3DError_Success;
}

/* 80327AA0-80327BD4 3223E0 0134+00 0/0 0/0 2/2 .text setSkinDeform__8J3DModelFP13J3DSkinDeformUl
 */
s32 J3DModel::setSkinDeform(J3DSkinDeform* p_skinDeform, u32 flags) {
    mSkinDeform = p_skinDeform;

    if (p_skinDeform == NULL) {
        offFlag(J3DMdlFlag_SkinPosCpu);
        offFlag(J3DMdlFlag_SkinNrmCpu);
        return 5;
    }

    mSkinDeform->initMtxIndexArray(mModelData);

    if (mModelData->checkFlag(0x100)) {
        mSkinDeform->changeFastSkinDL(mModelData);
        flags &= ~2;
        flags &= ~4;
        mSkinDeform->transformVtxPosNrm(mModelData);
        mSkinDeform->initSkinInfo(mModelData);
    }

    s32 ret = kJ3DError_Success;
    if ((~flags & 2)) {
        ret = mVertexBuffer.allocTransformedVtxPosArray();
        if (ret != kJ3DError_Success) {
            offFlag(J3DMdlFlag_SkinPosCpu);
            return ret;
        }
        onFlag(J3DMdlFlag_SkinPosCpu);
    } else {
        offFlag(J3DMdlFlag_SkinPosCpu);
    }

    if ((~flags & 4)) {
        ret = mVertexBuffer.allocTransformedVtxNrmArray();
        if (ret != kJ3DError_Success) {
            offFlag(J3DMdlFlag_SkinNrmCpu);
            return ret;
        }
        onFlag(J3DMdlFlag_SkinNrmCpu);
    } else {
        offFlag(J3DMdlFlag_SkinNrmCpu);
    }

    return ret;
}

/* 80327BD4-80327C58 322514 0084+00 1/1 0/0 2/2 .text            calcAnmMtx__8J3DModelFv */
void J3DModel::calcAnmMtx() {
    j3dSys.setModel(this);

    if (checkFlag(J3DMdlFlag_UseDefaultJ3D)) {
        getModelData()->getJointTree().calc(mMtxBuffer, j3dDefaultScale, j3dDefaultMtx);
    } else {
        getModelData()->getJointTree().calc(mMtxBuffer, mBaseScale, mBaseTransformMtx);
    }
}

/* 80327C58-80327CA4 322598 004C+00 1/1 1/1 1/1 .text            calcWeightEnvelopeMtx__8J3DModelFv
 */
void J3DModel::calcWeightEnvelopeMtx() {
    if (getModelData()->getWEvlpMtxNum() != 0 && !checkFlag(J3DMdlFlag_EnableLOD)) {
        if (!getModelData()->checkFlag(0x100)) {
            mMtxBuffer->calcWeightEnvelopeMtx();
        }
    }
}

/* 80327CA4-80327CF0 3225E4 004C+00 1/0 0/0 0/0 .text            update__8J3DModelFv */
void J3DModel::update() {
    calc();
    entry();
}

/* 80327CF0-80327E4C 322630 015C+00 1/0 0/0 0/0 .text            calc__8J3DModelFv */
void J3DModel::calc() {
    j3dSys.setModel(this);

    if (checkFlag(J3DMdlFlag_SkinPosCpu)) {
        j3dSys.onFlag(J3DSysFlag_SkinPosCpu);
    } else {
        j3dSys.offFlag(J3DSysFlag_SkinPosCpu);
    }

    if (checkFlag(J3DMdlFlag_SkinNrmCpu)) {
        j3dSys.onFlag(J3DSysFlag_SkinNrmCpu);
    } else {
        j3dSys.offFlag(J3DSysFlag_SkinNrmCpu);
    }

    mModelData->syncJ3DSysFlags();
    mVertexBuffer.frameInit();

    if (mUnkCalc2 != NULL) {
        mUnkCalc2->calc(mModelData);
    }

    if (mDeformData != NULL) {
        mDeformData->deform(this);
    }

    if (mVtxColorCalc != NULL) {
        mVtxColorCalc->calc(this);
    }

    if (mUnkCalc1 != NULL) {
        mUnkCalc1->calc(this);
    }

    calcAnmMtx();
    calcWeightEnvelopeMtx();

    if (mSkinDeform != NULL) {
        mSkinDeform->deform(this);
    }

    if (mCalcCallBack != NULL) {
        mCalcCallBack(this, 0);
    }
}

/* 80327E4C-80327F40 32278C 00F4+00 1/0 0/0 0/0 .text            entry__8J3DModelFv */
void J3DModel::entry() {
    j3dSys.setModel(this);

    if (checkFlag(J3DMdlFlag_SkinPosCpu)) {
        j3dSys.onFlag(J3DSysFlag_SkinPosCpu);
    } else {
        j3dSys.offFlag(J3DSysFlag_SkinPosCpu);
    }

    if (checkFlag(J3DMdlFlag_SkinNrmCpu)) {
        j3dSys.onFlag(J3DSysFlag_SkinNrmCpu);
    } else {
        j3dSys.offFlag(J3DSysFlag_SkinNrmCpu);
    }

    mModelData->syncJ3DSysFlags();
    j3dSys.setTexture(mModelData->getTexture());

    for (u16 i = 0; i < mModelData->getJointNum(); i++) {
        J3DJoint* joint = mModelData->getJointNodePointer(i);
        if (joint->getMesh() != NULL) {
            joint->entryIn();
        }
    }
}

/* 80327F40-80328190 322880 0250+00 1/0 0/0 0/0 .text            viewCalc__8J3DModelFv */
void J3DModel::viewCalc() {
    mMtxBuffer->swapDrawMtx();
    mMtxBuffer->swapNrmMtx();

    if (getModelData()->checkFlag(0x10)) {
        if (getMtxCalcMode() == 2) {
            J3DCalcViewBaseMtx(j3dSys.getViewMtx(), mBaseScale, mBaseTransformMtx,
                               (MtxP)&mInternalView);
        }
    } else if (isCpuSkinningOn()) {
        if (getMtxCalcMode() == 2) {
            J3DCalcViewBaseMtx(j3dSys.getViewMtx(), mBaseScale, mBaseTransformMtx,
                               (MtxP)&mInternalView);
        }
    } else if (checkFlag(J3DMdlFlag_SkinPosCpu)) {
        mMtxBuffer->calcDrawMtx(getMtxCalcMode(), mBaseScale, mBaseTransformMtx);
        calcNrmMtx();
        calcBumpMtx();
        DCStoreRangeNoSync(getDrawMtxPtr(), mModelData->getDrawMtxNum() * sizeof(Mtx));
        DCStoreRange(getNrmMtxPtr(), mModelData->getDrawMtxNum() * sizeof(Mtx33));
    } else if (checkFlag(J3DMdlFlag_SkinNrmCpu)) {
        mMtxBuffer->calcDrawMtx(getMtxCalcMode(), mBaseScale, mBaseTransformMtx);
        calcBBoardMtx();
        DCStoreRange(getDrawMtxPtr(), mModelData->getDrawMtxNum() * sizeof(Mtx));
    } else {
        mMtxBuffer->calcDrawMtx(getMtxCalcMode(), mBaseScale, mBaseTransformMtx);
        calcNrmMtx();
        calcBBoardMtx();
        calcBumpMtx();
        DCStoreRangeNoSync(getDrawMtxPtr(), mModelData->getDrawMtxNum() * sizeof(Mtx));
        DCStoreRange(getNrmMtxPtr(), mModelData->getDrawMtxNum() * sizeof(Mtx33));
    }

    prepareShapePackets();
}

/* 80328190-803281B4 322AD0 0024+00 1/1 0/0 0/0 .text            calcNrmMtx__8J3DModelFv */
void J3DModel::calcNrmMtx() {
    mMtxBuffer->calcNrmMtx();
}

/* 803281B4-803282B8 322AF4 0104+00 1/1 0/0 0/0 .text            calcBumpMtx__8J3DModelFv */
void J3DModel::calcBumpMtx() {
    if (getModelData()->checkBumpFlag()) {
        u32 bumpMtxIdx = 0;
        u16 materialNum = getModelData()->getMaterialNum();

        for (u16 i = 0; i < materialNum; i++) {
            J3DMaterial* material = getModelData()->getMaterialNodePointer(i);
            if (material->getNBTScale()->mbHasScale == TRUE) {
                material->getShape()->calcNBTScale(*material->getNBTScale()->getScale(),
                                                   getNrmMtxPtr(), getBumpMtxPtr(bumpMtxIdx));
                DCStoreRange(getBumpMtxPtr(bumpMtxIdx), mModelData->getDrawMtxNum() * sizeof(Mtx33));
                bumpMtxIdx++;
            }
        }
    }
}

/* 803282B8-803282EC 322BF8 0034+00 1/1 0/0 0/0 .text            calcBBoardMtx__8J3DModelFv */
void J3DModel::calcBBoardMtx() {
    if (getModelData()->checkBBoardFlag()) {
        mMtxBuffer->calcBBoardMtx();
    }
}

/* 803282EC-80328350 322C2C 0064+00 2/2 0/0 0/0 .text            prepareShapePackets__8J3DModelFv */
void J3DModel::prepareShapePackets() {
    u16 shapeNum = mModelData->getShapeNum();

    for (u16 i = 0; i < shapeNum; i++) {
        J3DShape* shapeNode = mModelData->getShapeNodePointer(i);
        J3DShapePacket* shapePacket = &mShapePacket[i];
        shapePacket->setMtxBuffer(mMtxBuffer);

        if (getMtxCalcMode() == 2) {
            shapePacket->setBaseMtxPtr(&mInternalView);
        } else {
            shapePacket->setBaseMtxPtr((Mtx*)j3dSys.getViewMtx());
        }
    }
}
