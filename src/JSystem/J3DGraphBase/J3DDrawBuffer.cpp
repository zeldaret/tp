/**
 * J3DDrawBuffer.cpp
 *
 */

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRHeap.h"

void J3DDrawBuffer::calcZRatio() {
    mZRatio = (mZFar - mZNear) / (f32)mBufSize;
}

void J3DDrawBuffer::initialize() {
    mDrawType = DRAW_HEAD;
    mSortType = SORT_MAT;
    mZNear = 1.0f;
    mZFar = 10000.0f;
    mpZMtx = NULL;
    mpCallBackPacket = NULL;
    mBufSize = 0x20;
    calcZRatio();
}

J3DError J3DDrawBuffer::allocBuffer(u32 bufSize) {
    mpBuf = new (0x20) J3DPacket*[bufSize];
    if (mpBuf == NULL)
        return kJ3DError_Alloc;

    mBufSize = bufSize;
    frameInit();
    calcZRatio();
    return kJ3DError_Success;
}

J3DDrawBuffer::~J3DDrawBuffer() {
    frameInit();

    delete[] mpBuf;
    mpBuf = NULL;
}

/* 80325068-8032509C 31F9A8 0034+00 2/2 1/1 0/0 .text            frameInit__13J3DDrawBufferFv */
void J3DDrawBuffer::frameInit() {
    u32 bufSize = mBufSize;
    for (u32 i = 0; i < bufSize; i++)
        mpBuf[i] = NULL;

    mpCallBackPacket = NULL;
}

/* 8032509C-803251E4 31F9DC 0148+00 2/1 0/0 0/0 .text
 * entryMatSort__13J3DDrawBufferFP12J3DMatPacket                */
int J3DDrawBuffer::entryMatSort(J3DMatPacket* pMatPacket) {
    pMatPacket->drawClear();
    pMatPacket->getShapePacket()->drawClear();

    if (pMatPacket->isChanged()) {
        pMatPacket->setNextPacket(mpBuf[0]);
        mpBuf[0] = pMatPacket;
        return 1;
    }

    J3DTexture* texture = j3dSys.getTexture();
    u32 hash;
    u16 texNo = pMatPacket->getMaterial()->getTexNo(0);
    if (texNo == 0xFFFF) {
        hash = 0;
    } else {
        hash = ((u32)texture->getResTIMG(texNo) + texture->getResTIMG(texNo)->imageOffset) >> 5;
    }
    u32 slot = hash & (mBufSize - 1);

    if (mpBuf[slot] == NULL) {
        mpBuf[slot] = pMatPacket;
        return 1;
    } else {
        for (J3DMatPacket* pkt = (J3DMatPacket*)mpBuf[slot]; pkt != NULL;
             pkt = (J3DMatPacket*)pkt->getNextPacket())
        {
            if (pkt->isSame(pMatPacket)) {
                pkt->addShapePacket(pMatPacket->getShapePacket());
                return 0;
            }
        }

        pMatPacket->setNextPacket(mpBuf[slot]);
        mpBuf[slot] = pMatPacket;
        return 1;
    }
}

/* 803251E4-8032529C 31FB24 00B8+00 1/0 0/0 0/0 .text
 * entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket             */
int J3DDrawBuffer::entryMatAnmSort(J3DMatPacket* pMatPacket) {
    J3DMaterialAnm* pMaterialAnm = pMatPacket->mpMaterialAnm;
    u32 slot = (u32)pMaterialAnm & (mBufSize - 1);

    if (pMaterialAnm == NULL) {
        return entryMatSort(pMatPacket);
    } else {
        pMatPacket->drawClear();
        pMatPacket->getShapePacket()->drawClear();
        if (mpBuf[slot] == NULL) {
            mpBuf[slot] = pMatPacket;
            return 1;
        } else {
            for (J3DMatPacket* pkt = (J3DMatPacket*)mpBuf[slot]; pkt != NULL;
                 pkt = (J3DMatPacket*)pkt->getNextPacket())
            {
                if (pkt->mpMaterialAnm == pMaterialAnm) {
                    pkt->addShapePacket(pMatPacket->getShapePacket());
                    return 0;
                }
            }

            pMatPacket->setNextPacket(mpBuf[slot]);
            mpBuf[slot] = pMatPacket;
            return 1;
        }
    }
}

/* 8032529C-803253B4 31FBDC 0118+00 1/0 0/0 0/0 .text entryZSort__13J3DDrawBufferFP12J3DMatPacket
 */
int J3DDrawBuffer::entryZSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    Vec tmp;
    tmp.x = mpZMtx[0][3];
    tmp.y = mpZMtx[1][3];
    tmp.z = mpZMtx[2][3];

    f32 value = -J3DCalcZValue(j3dSys.getViewMtx(), tmp);

    u32 uvar4;
    if (mZNear + mZRatio < value) {
        if (mZFar - mZRatio > value) {
            uvar4 = value / mZRatio;
        } else {
            uvar4 = mBufSize - 1;
        }
    } else {
        uvar4 = 0;
    }

    u32 idx = (mBufSize - 1) - uvar4;
    i_packet->setNextPacket(mpBuf[idx]);
    mpBuf[idx] = i_packet;

    return 1;
}

/* 803253B4-80325404 31FCF4 0050+00 1/0 0/0 0/0 .text
 * entryModelSort__13J3DDrawBufferFP12J3DMatPacket              */
int J3DDrawBuffer::entryModelSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(i_packet);
        return 1;
    }

    return 0;
}

/* 80325404-80325458 31FD44 0054+00 1/0 0/0 0/0 .text
 * entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket            */
int J3DDrawBuffer::entryInvalidSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->getShapePacket()->drawClear();

    if (mpCallBackPacket != NULL) {
        mpCallBackPacket->addChildPacket(i_packet->getShapePacket());
        return 1;
    }

    return 0;
}

int J3DDrawBuffer::entryNonSort(J3DMatPacket* i_packet) {
    i_packet->drawClear();
    i_packet->mpShapePacket->drawClear();

    i_packet->setNextPacket(mpBuf[0]);
    mpBuf[0] = i_packet;

    return 1;
}

int J3DDrawBuffer::entryImm(J3DPacket* i_packet, u16 index) {
    i_packet->setNextPacket(mpBuf[index]);
    mpBuf[index] = i_packet;

    return 1;
}

/* 803CEC30-803CEC78 02BD50 0048+00 0/1 1/1 0/0 .data            sortFuncTable__13J3DDrawBuffer */
sortFunc J3DDrawBuffer::sortFuncTable[6] = {
    &J3DDrawBuffer::entryMatSort,   &J3DDrawBuffer::entryMatAnmSort,  &J3DDrawBuffer::entryZSort,
    &J3DDrawBuffer::entryModelSort, &J3DDrawBuffer::entryInvalidSort, &J3DDrawBuffer::entryNonSort,
};

/* 803CEC90-803CECA8 02BDB0 0018+00 1/2 0/0 0/0 .data            drawFuncTable__13J3DDrawBuffer */
drawFunc J3DDrawBuffer::drawFuncTable[2] = {
    &J3DDrawBuffer::drawHead,
    &J3DDrawBuffer::drawTail,
};

/* 803254AC-80325500 31FDEC 0054+00 0/0 2/2 0/0 .text            draw__13J3DDrawBufferCFv */
void J3DDrawBuffer::draw() const {
    drawFunc func = drawFuncTable[mDrawType];
    (this->*func)();
}

/* 80325500-80325578 31FE40 0078+00 1/0 0/0 0/0 .text            drawHead__13J3DDrawBufferCFv */
void J3DDrawBuffer::drawHead() const {
    u32 size = mBufSize;
    J3DPacket** buf = mpBuf;

    for (u32 i = 0; i < size; i++) {
        for (J3DPacket* packet = buf[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}

/* 80325578-803255F0 31FEB8 0078+00 1/0 0/0 0/0 .text            drawTail__13J3DDrawBufferCFv */
void J3DDrawBuffer::drawTail() const {
    int num = mBufSize - 1;

    for (int i = num; i >= 0; i--) {
        for (J3DPacket* packet = mpBuf[i]; packet != NULL; packet = packet->getNextPacket()) {
            packet->draw();
        }
    }
}

/* ############################################################################################## */
/* 804515E0-804515E8 000AE0 0004+04 0/0 1/1 0/0 .sbss            entryNum__13J3DDrawBuffer */
int J3DDrawBuffer::entryNum;