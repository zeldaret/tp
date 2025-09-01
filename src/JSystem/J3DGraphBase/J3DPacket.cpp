#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphBase/J3DShapeMtx.h"
#include "JSystem/JKernel/JKRHeap.h"
#include <dolphin/os.h>
#include <dolphin/os.h>
#include "string.h"
#include "global.h"

J3DError J3DDisplayListObj::newDisplayList(u32 capacity) {
    mCapacity = ALIGN_NEXT(capacity, 0x20);
    mpData[0] = new (0x20) char[mCapacity];
    mpData[1] = new (0x20) char[mCapacity];
    mSize = 0;

    if (mpData[0] == NULL || mpData[1] == NULL)
        return kJ3DError_Alloc;

    return kJ3DError_Success;
}

J3DError J3DDisplayListObj::newSingleDisplayList(u32 capacity) {
    mCapacity = ALIGN_NEXT(capacity, 0x20);
    mpData[0] = new (0x20) char[mCapacity];
    mpData[1] = mpData[0];
    mSize = 0;

    if (mpData[0] == NULL)
        return kJ3DError_Alloc;

    return kJ3DError_Success;
}

/* 8031256C-803125E4 30CEAC 0078+00 0/0 1/1 0/0 .text single_To_Double__17J3DDisplayListObjFv */
J3DError J3DDisplayListObj::single_To_Double() {
    if (mpData[0] == mpData[1]) {
        mpData[1] = new (0x20) char[mCapacity];

        if (mpData[1] == NULL)
            return kJ3DError_Alloc;

        memcpy(mpData[1], mpData[0], mCapacity);
        DCStoreRange(mpData[1], mCapacity);
    }

    return kJ3DError_Success;
}

void J3DDisplayListObj::setSingleDisplayList(void* pDLData, u32 size) {
    J3D_ASSERT(148, pDLData != NULL, "Error : null pointer.");

    mCapacity = ALIGN_NEXT(size, 0x20);
    mpData[0] = pDLData;
    mpData[1] = mpData[0];
    mSize = size;
}

void J3DDisplayListObj::swapBuffer() {
    void* pTmp = mpData[0];
    mpData[0] = mpData[1];
    mpData[1] = pTmp;
}

void J3DDisplayListObj::callDL() const {
    GXCallDisplayList(mpData[0], mSize);
}

/* 80434C70-80434C80 061990 0010+00 2/2 3/3 0/0 .bss             sGDLObj__17J3DDisplayListObj */
GDLObj J3DDisplayListObj::sGDLObj;

/* 804515A0-804515A8 000AA0 0004+04 3/3 0/0 0/0 .sbss            sInterruptFlag__17J3DDisplayListObj
 */
s32 J3DDisplayListObj::sInterruptFlag;

/* 80312644-80312698 30CF84 0054+00 2/2 1/1 0/0 .text            beginDL__17J3DDisplayListObjFv */
void J3DDisplayListObj::beginDL() {
    swapBuffer();
    sInterruptFlag = OSDisableInterrupts();
    GDInitGDLObj(&sGDLObj, (u8*)mpData[0], mCapacity);
    GDSetCurrent(&sGDLObj);
}

/* 80312698-803126F4 30CFD8 005C+00 1/1 1/1 0/0 .text            endDL__17J3DDisplayListObjFv */
u32 J3DDisplayListObj::endDL() {
    GDPadCurr32();
    OSRestoreInterrupts(sInterruptFlag);
    mSize = GDGetGDLObjOffset(&sGDLObj);
    GDFlushCurrToMem();
    GDSetCurrent(NULL);
    return mSize;
}

/* 803126F4-80312714 30D034 0020+00 0/0 1/1 0/0 .text            beginPatch__17J3DDisplayListObjFv
 */
void J3DDisplayListObj::beginPatch() {
    beginDL();
}

/* 80312714-80312750 30D054 003C+00 0/0 1/1 0/0 .text            endPatch__17J3DDisplayListObjFv */
u32 J3DDisplayListObj::endPatch() {
    OSRestoreInterrupts(sInterruptFlag);
    GDSetCurrent(NULL);
    return mSize;
}

/* 80312750-80312758 30D090 0008+00 3/0 16/0 10/0 .text entry__9J3DPacketFP13J3DDrawBuffer */
int J3DPacket::entry(J3DDrawBuffer* pBuffer) {
    J3D_ASSERT(290, pBuffer != NULL, "Error : null pointer.");
    return 1;
}

void J3DPacket::addChildPacket(J3DPacket* pPacket) {
    J3D_ASSERT(304, pPacket != NULL, "Error : null pointer.");

    if (mpFirstChild == NULL) {
        mpFirstChild = pPacket;
    } else {
        pPacket->setNextPacket(mpFirstChild);
        mpFirstChild = pPacket;
    }
}

/* 803CD900-803CD920 02AA20 0020+00 1/1 0/0 0/0 .data            sDifferedRegister */
static u32 sDifferedRegister[8] = {
    0x00000004, 0x00000001, 0x00000002, 0x01000000, 0x10000000, 0x20000000, 0x02000000, 0x08000000,
};

/* 803CD920-803CD940 02AA40 0020+00 1/1 0/0 0/0 .data            sSizeOfDiffered */
static s32 sSizeOfDiffered[8] = {
    13, 13, 21, 120, 55, 15, 19, 45,
};

/* 80312778-803127B0 30D0B8 0038+00 2/2 0/0 0/0 .text            __ct__13J3DDrawPacketFv */
J3DDrawPacket::J3DDrawPacket() {
    mFlags = 0;
    mpDisplayListObj = NULL;
    mpTexMtxObj = NULL;
}

/* 803127B0-8031280C 30D0F0 005C+00 3/2 0/0 0/0 .text            __dt__13J3DDrawPacketFv */
J3DDrawPacket::~J3DDrawPacket() {}

/* 8031280C-80312898 30D14C 008C+00 1/1 1/1 0/0 .text            newDisplayList__13J3DDrawPacketFUl
 */
J3DError J3DDrawPacket::newDisplayList(u32 size) {
    mpDisplayListObj = new J3DDisplayListObj();

    if (mpDisplayListObj == NULL)
        return kJ3DError_Alloc;

    J3DError ret = mpDisplayListObj->newDisplayList(size);
    if (ret != kJ3DError_Success)
        return ret;

    return kJ3DError_Success;
}

/* 80312898-80312924 30D1D8 008C+00 0/0 1/1 0/0 .text newSingleDisplayList__13J3DDrawPacketFUl */
J3DError J3DDrawPacket::newSingleDisplayList(u32 size) {
    mpDisplayListObj = new J3DDisplayListObj();

    if (mpDisplayListObj == NULL)
        return kJ3DError_Alloc;

    J3DError ret = mpDisplayListObj->newSingleDisplayList(size);
    if (ret != kJ3DError_Success)
        return ret;

    return kJ3DError_Success;
}

void J3DDrawPacket::draw() {
    callDL();
}

/* 80312948-803129A4 30D288 005C+00 0/0 1/1 0/0 .text            __ct__12J3DMatPacketFv */
J3DMatPacket::J3DMatPacket() {
    mpInitShapePacket = NULL;
    mpShapePacket = NULL;
    mpMaterial = NULL;
    mDiffFlag = -1;
    mpTexture = NULL;
    mpMaterialAnm = NULL;
}

/* 803129A4-80312A04 30D2E4 0060+00 1/0 1/1 0/0 .text            __dt__12J3DMatPacketFv */
J3DMatPacket::~J3DMatPacket() {}

void J3DMatPacket::addShapePacket(J3DShapePacket* pShape) {
    if (mpShapePacket == NULL) {
        mpShapePacket = pShape;
    } else {
        pShape->setNextPacket(mpShapePacket);
        mpShapePacket = pShape;
    }
}

void J3DMatPacket::beginDiff() {
    mpInitShapePacket->beginDL();
}

void J3DMatPacket::endDiff() {
    mpInitShapePacket->endDL();
}

/* 80312A74-80312A9C 30D3B4 0028+00 0/0 1/1 0/0 .text isSame__12J3DMatPacketCFP12J3DMatPacket */
bool J3DMatPacket::isSame(J3DMatPacket* pOther) const {
    J3D_ASSERT(521, pOther != NULL, "Error : null pointer.");
    return mDiffFlag == pOther->mDiffFlag && (mDiffFlag >> 31) == 0;
}

/* 80312A9C-80312B20 30D3DC 0084+00 1/0 0/0 0/0 .text            draw__12J3DMatPacketFv */
void J3DMatPacket::draw() {
    mpMaterial->load();
    callDL();

    J3DShapePacket* packet = getShapePacket();
    packet->getShape()->loadPreDrawSetting();

    while (packet != NULL) {
        if (packet->getDisplayListObj() != NULL) {
            packet->getDisplayListObj()->callDL();
        }

        packet->drawFast();
        packet = (J3DShapePacket*)packet->getNextPacket();
    }

    J3DShape::resetVcdVatCache();
}

/* 80312B20-80312B74 30D460 0054+00 0/0 1/1 0/0 .text            __ct__14J3DShapePacketFv */
J3DShapePacket::J3DShapePacket() {
    mpShape = NULL;
    mpMtxBuffer = NULL;
    mpBaseMtxPtr = NULL;
    mDiffFlag = 0;
    mpModel = NULL;
}

/* 80312B74-80312BD4 30D4B4 0060+00 1/0 1/1 0/0 .text            __dt__14J3DShapePacketFv */
J3DShapePacket::~J3DShapePacket() {}

/* 80312BD4-80312DBC 30D514 01E8+00 1/1 0/0 0/0 .text calcDifferedBufferSize__14J3DShapePacketFUl
 */
u32 J3DShapePacket::calcDifferedBufferSize(u32 diffFlags) {
    int var_r30 = 0;

    for (u32 i = 0; i < 8; i++) {
        if ((diffFlags & sDifferedRegister[i]) != 0) {
            var_r30 += sSizeOfDiffered[i];
        }
    }

    u32 sp3C = getDiffFlag_LightObjNum(diffFlags);
    var_r30 += sp3C * 0x48;

    u32 sp38 = getDiffFlag_TexGenNum(diffFlags);
    if (sp38 != 0) {
        u32 sp34 = mpShape->getMaterial()->getTexGenNum();
        u32 sp30 = sp38 > sp34 ? sp38 : sp34;

        if (diffFlags & 0x1000) {
            var_r30 += calcDifferedBufferSize_TexGenSize(sp30);
        } else {
            var_r30 += calcDifferedBufferSize_TexMtxSize(sp30);
        }
    }

    u32 sp2C = getDiffFlag_TexNoNum(diffFlags);
    if (sp2C != 0) {
        u8 sp9;
        if (mpShape->getMaterial()->getTevStageNum() > 8) {
            sp9 = 8;
        } else {
            sp9 = mpShape->getMaterial()->getTevStageNum();
        }

        u32 sp28 = sp9;
        u32 sp24 = sp2C > sp28 ? sp2C : sp28;

        if ((diffFlags & 0x4000000)) {
            var_r30 += calcDifferedBufferSize_TexNoAndTexCoordScaleSize(sp24);
        } else {
            var_r30 += calcDifferedBufferSize_TexNoSize(sp24);
        }
    }

    u32 sp20 = getDiffFlag_TevStageNum(diffFlags);
    if (sp20 != 0) {
        u8 sp8;
        if (mpShape->getMaterial()->getTevStageNum() > 8) {
            sp8 = 8;
        } else {
            sp8 = mpShape->getMaterial()->getTevStageNum();
        }

        u32 sp1C = sp8;
        u32 sp18 = sp20 > sp1C ? sp20 : sp1C;

        var_r30 += calcDifferedBufferSize_TevStageSize(sp18);
        if (diffFlags & 0x8000000) {
            var_r30 += calcDifferedBufferSize_TevStageDirectSize(sp18);
        }
    }

    return ROUND(var_r30, 32);
}

/* 80312DBC-80312E08 30D6FC 004C+00 0/0 1/1 0/0 .text newDifferedDisplayList__14J3DShapePacketFUl
 */
J3DError J3DShapePacket::newDifferedDisplayList(u32 diffFlags) {
    mDiffFlag = diffFlags;

    u32 bufSize = calcDifferedBufferSize(diffFlags);
    J3DError ret = newDisplayList(bufSize);
    if (ret != kJ3DError_Success) {
        return ret;
    }

    J3DDisplayListObj* dlobj = getDisplayListObj();
    setDisplayListObj(dlobj);
    return kJ3DError_Success;
}

/* 80312E08-80312F24 30D748 011C+00 2/2 0/0 0/0 .text            prepareDraw__14J3DShapePacketCFv */
void J3DShapePacket::prepareDraw() const {
    mpModel->getVertexBuffer()->setArray();
    j3dSys.setModel(mpModel);
    j3dSys.setShapePacket((J3DShapePacket*)this);

    J3DShapeMtx::setLODFlag(mpModel->checkFlag(J3DMdlFlag_EnableLOD) != 0);

    if (mpModel->checkFlag(J3DMdlFlag_SkinPosCpu)) {
        mpShape->onFlag(J3DShpFlag_SkinPosCpu);
    } else {
        mpShape->offFlag(J3DShpFlag_SkinPosCpu);
    }

    if (mpModel->checkFlag(J3DMdlFlag_SkinNrmCpu) &&
        mpShape->checkFlag(J3DShpFlag_EnableLod) == false)
    {
        mpShape->onFlag(J3DShpFlag_SkinNrmCpu);
    } else {
        mpShape->offFlag(J3DShpFlag_SkinNrmCpu);
    }

    mpShape->setCurrentViewNoPtr(mpMtxBuffer->getCurrentViewNoPtr());
    mpShape->setScaleFlagArray(mpMtxBuffer->getScaleFlagArray());
    mpShape->setDrawMtx(mpMtxBuffer->getDrawMtxPtrPtr());

    if (!mpShape->getNBTFlag()) {
        mpShape->setNrmMtx(mpMtxBuffer->getNrmMtxPtrPtr());
    } else {
        mpShape->setNrmMtx(mpMtxBuffer->mpBumpMtxArr[1][mpShape->getBumpMtxOffset()]);
    }

    mpModel->getModelData()->syncJ3DSysFlags();
}

/* 80312F24-80312FBC 30D864 0098+00 1/0 0/0 0/0 .text            draw__14J3DShapePacketFv */
void J3DShapePacket::draw() {
    if (!checkFlag(J3DShpFlag_Hidden) && mpShape != NULL) {
        prepareDraw();

        if (mpTexMtxObj != NULL) {
            J3DDifferedTexMtx::sTexGenBlock = mpShape->getMaterial()->getTexGenBlock();
            J3DDifferedTexMtx::sTexMtxObj = getTexMtxObj();
        } else {
            J3DDifferedTexMtx::sTexGenBlock = NULL;
        }

        if (mpDisplayListObj != NULL) {
            mpDisplayListObj->callDL();
        }

        mpShape->draw();
    }
}

/* 80312FBC-80313044 30D8FC 0088+00 1/1 2/2 1/1 .text            drawFast__14J3DShapePacketFv */
void J3DShapePacket::drawFast() {
    if (!checkFlag(J3DShpFlag_Hidden) && mpShape != NULL) {
        prepareDraw();

        if (mpTexMtxObj != NULL) {
            J3DDifferedTexMtx::sTexGenBlock = mpShape->getMaterial()->getTexGenBlock();
            J3DDifferedTexMtx::sTexMtxObj = getTexMtxObj();
        } else {
            J3DDifferedTexMtx::sTexGenBlock = NULL;
        }

        mpShape->drawFast();
    }
}

/* 80313044-80313048 30D984 0004+00 1/0 0/0 0/0 .text            draw__9J3DPacketFv */
void J3DPacket::draw() {}

/* 80313048-803130A8 30D988 0060+00 1/0 0/0 0/0 .text entry__12J3DMatPacketFP13J3DDrawBuffer */
int J3DMatPacket::entry(J3DDrawBuffer* i_buffer) {
    sortFunc func = J3DDrawBuffer::sortFuncTable[i_buffer->getSortMode()];
    return (i_buffer->*func)(this);
}
