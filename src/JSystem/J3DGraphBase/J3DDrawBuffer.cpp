/**
 * J3DDrawBuffer.cpp
 *
 */

#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRHeap.h"

void J3DDrawBuffer::calcZRatio() {
    mZRatio = (mZFar - mZNear) / (f32)mEntryTableSize;
}

void J3DDrawBuffer::initialize() {
    mDrawMode = J3DDrawBufDrawMode_Head;
    mSortMode = J3DDrawBufSortMode_Mat;
    mZNear = 1.0f;
    mZFar = 10000.0f;
    mpZMtx = NULL;
    mpCallBackPacket = NULL;
    mEntryTableSize = 0x20;
    calcZRatio();
}

int J3DDrawBuffer::allocBuffer(u32 size) {
    mpBuffer = new (0x20) J3DPacket*[size];
    if (mpBuffer == NULL)
        return kJ3DError_Alloc;

    mEntryTableSize = size;

    frameInit();
    calcZRatio();
    return kJ3DError_Success;
}

J3DDrawBuffer::~J3DDrawBuffer() {
    frameInit();

    delete[] mpBuffer;
    mpBuffer = NULL;
}

/* 80325068-8032509C 31F9A8 0034+00 2/2 1/1 0/0 .text            frameInit__13J3DDrawBufferFv */
void J3DDrawBuffer::frameInit() {
    u32 bufSize = mEntryTableSize;
    for (u32 i = 0; i < bufSize; i++)
        mpBuffer[i] = NULL;

    mpCallBackPacket = NULL;
}

/* 8032509C-803251E4 31F9DC 0148+00 2/1 0/0 0/0 .text
 * entryMatSort__13J3DDrawBufferFP12J3DMatPacket                */
int J3DDrawBuffer::entryMatSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(122, pMatPacket != NULL);

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    if (pMatPacket->isChanged()) {
        pMatPacket->setNextPacket(mpBuffer[0]);
        mpBuffer[0] = pMatPacket;
        return 1;
    }

    J3DTexture* pTexture = j3dSys.getTexture();
    u16 texNo = pMatPacket->getMaterial()->getTexNo(0);
    J3D_ASSERT_NULLPTR(150, pTexture != NULL);

    u32 hash;
    if (texNo == 0xFFFF) {
        hash = 0;
    } else {
        hash = ((uintptr_t)pTexture->getResTIMG(texNo) + pTexture->getResTIMG(texNo)->imageOffset) >> 5;
    }
    u32 slot = hash & (mEntryTableSize - 1);

    if (mpBuffer[slot] == NULL) {
        mpBuffer[slot] = pMatPacket;
        return 1;
    }

    J3DMatPacket* packet;
    for (packet = (J3DMatPacket*)mpBuffer[slot]; packet != NULL; packet = (J3DMatPacket*)packet->getNextPacket())
    {
        if (packet->isSame(pMatPacket)) {
            packet->addShapePacket(pMatPacket->getShapePacket());
            return 0;
        }
    }

    pMatPacket->setNextPacket(mpBuffer[slot]);
    mpBuffer[slot] = pMatPacket;
    return 1;
}

/* 803251E4-8032529C 31FB24 00B8+00 1/0 0/0 0/0 .text
 * entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket             */
int J3DDrawBuffer::entryMatAnmSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(199, pMatPacket != NULL);

    J3DMaterialAnm* pMaterialAnm = pMatPacket->mpMaterialAnm;
    u32 slot = (uintptr_t)pMaterialAnm & (mEntryTableSize - 1);

    if (pMaterialAnm == NULL) {
        return entryMatSort(pMatPacket);
    }

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    if (mpBuffer[slot] == NULL) {
        mpBuffer[slot] = pMatPacket;
        return 1;
    }

    J3DMatPacket* packet;
    for (packet = (J3DMatPacket*)mpBuffer[slot]; packet != NULL; packet = (J3DMatPacket*)packet->getNextPacket())
    {
        if (packet->mpMaterialAnm == pMaterialAnm) {
            packet->addShapePacket(pMatPacket->getShapePacket());
            return 0;
        }
    }

    pMatPacket->setNextPacket(mpBuffer[slot]);
    mpBuffer[slot] = pMatPacket;
    return 1;
}

/* 8032529C-803253B4 31FBDC 0118+00 1/0 0/0 0/0 .text entryZSort__13J3DDrawBufferFP12J3DMatPacket
 */
int J3DDrawBuffer::entryZSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(257, pMatPacket != NULL);

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    Vec tmp;
    tmp.x = mpZMtx[0][3];
    tmp.y = mpZMtx[1][3];
    tmp.z = mpZMtx[2][3];

    f32 value = -J3DCalcZValue(j3dSys.getViewMtx(), tmp);

    u32 index;
    if (mZNear + mZRatio < value) {
        if (mZFar - mZRatio > value) {
            index = value / mZRatio;
        } else {
            index = mEntryTableSize - 1;
        }
    } else {
        index = 0;
    }

    index = (mEntryTableSize - 1) - index;
    pMatPacket->setNextPacket(mpBuffer[index]);
    mpBuffer[index] = pMatPacket;
    return 1;
}

/* 803253B4-80325404 31FCF4 0050+00 1/0 0/0 0/0 .text
 * entryModelSort__13J3DDrawBufferFP12J3DMatPacket              */
int J3DDrawBuffer::entryModelSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(316, pMatPacket != NULL);

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(pMatPacket);
        return 1;
    }

    return 0;
}

/* 80325404-80325458 31FD44 0054+00 1/0 0/0 0/0 .text
 * entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket            */
int J3DDrawBuffer::entryInvalidSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(343, pMatPacket != NULL);

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(pMatPacket->getShapePacket());
        return 1;
    }

    return 0;
}

int J3DDrawBuffer::entryNonSort(J3DMatPacket* pMatPacket) {
    J3D_ASSERT_NULLPTR(370, pMatPacket != NULL);

    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    pMatPacket->setNextPacket(mpBuffer[0]);
    mpBuffer[0] = pMatPacket;
    return 1;
}

int J3DDrawBuffer::entryImm(J3DPacket* pPacket, u16 index) {
    J3D_ASSERT_NULLPTR(394, pPacket != NULL);
    J3D_ASSERT_RANGE(395, index < mEntryTableSize);

    pPacket->setNextPacket(mpBuffer[index]);
    mpBuffer[index] = pPacket;
    return 1;
}

/* 803CEC30-803CEC78 02BD50 0048+00 0/1 1/1 0/0 .data            sortFuncTable__13J3DDrawBuffer */
J3DDrawBuffer::sortFunc J3DDrawBuffer::sortFuncTable[6] = {
    &J3DDrawBuffer::entryMatSort,   &J3DDrawBuffer::entryMatAnmSort,  &J3DDrawBuffer::entryZSort,
    &J3DDrawBuffer::entryModelSort, &J3DDrawBuffer::entryInvalidSort, &J3DDrawBuffer::entryNonSort,
};

/* 803CEC90-803CECA8 02BDB0 0018+00 1/2 0/0 0/0 .data            drawFuncTable__13J3DDrawBuffer */
J3DDrawBuffer::drawFunc J3DDrawBuffer::drawFuncTable[2] = {
    &J3DDrawBuffer::drawHead,
    &J3DDrawBuffer::drawTail,
};

/* 804515E0-804515E8 000AE0 0004+04 0/0 1/1 0/0 .sbss            entryNum__13J3DDrawBuffer */
int J3DDrawBuffer::entryNum;

/* 803254AC-80325500 31FDEC 0054+00 0/0 2/2 0/0 .text            draw__13J3DDrawBufferCFv */
void J3DDrawBuffer::draw() const {
    J3D_ASSERT_RANGE(411, mDrawMode < J3DDrawBufDrawMode_MAX);

    drawFunc func = drawFuncTable[mDrawMode];
    (this->*func)();
}

/* 80325500-80325578 31FE40 0078+00 1/0 0/0 0/0 .text            drawHead__13J3DDrawBufferCFv */
void J3DDrawBuffer::drawHead() const {
    u32 size = mEntryTableSize;
    J3DPacket** buf = mpBuffer;

    for (u32 i = 0; i < size; i++) {
        for (J3DPacket* packet = buf[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}

/* 80325578-803255F0 31FEB8 0078+00 1/0 0/0 0/0 .text            drawTail__13J3DDrawBufferCFv */
void J3DDrawBuffer::drawTail() const {
    for (int i = mEntryTableSize - 1; i >= 0; i--) {
        for (J3DPacket* packet = mpBuffer[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}
