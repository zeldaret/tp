#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "global.h"

//
// Forward References:
//

extern "C" void calc__14J3DMaterialAnmCFP11J3DMaterial();

//
// External References:
//

extern "C" void __dt__14J3DMaterialAnmFv();

//
// Declarations:
//

void J3DMaterialAnm::initialize() {
    for (int i = 0; i < ARRAY_SIZE(mMatColorAnm); i++) {
        mMatColorAnm[i].setAnmFlag(false);
    }

    for (int i = 0; i < ARRAY_SIZE(mTexNoAnm); i++) {
        mTexNoAnm[i].setAnmFlag(false);
    }

    for (int i = 0; i < ARRAY_SIZE(mTevColorAnm); i++) {
        mTevColorAnm[i].setAnmFlag(false);
    }

    for (int i = 0; i < ARRAY_SIZE(mTevKColorAnm); i++) {
        mTevKColorAnm[i].setAnmFlag(false);
    }

    for (int i = 0; i < ARRAY_SIZE(mTexMtxAnm); i++) {
        mTexMtxAnm[i].setAnmFlag(false);
    }
}

void J3DMaterialAnm::calc(J3DMaterial* pMat) const {
    for (u32 i = 0; i < ARRAY_SIZE(mMatColorAnm); i++) {
        if (mMatColorAnm[i].getAnmFlag()) {
            _GXColor* color = pMat->getColorBlock()->getMatColor(i);
            mMatColorAnm[i].calc(color);
        }
    }

    u16 tmp;
    for (u32 i = 0; i < ARRAY_SIZE(mTexNoAnm); i++) {
        if (mTexNoAnm[i].getAnmFlag()) {
            mTexNoAnm[i].calc(&tmp);
            pMat->getTevBlock()->setTexNo(i, tmp);
        }
    }

    for (u32 i = 0; i < 3; i++) {
        if (mTevColorAnm[i].getAnmFlag()) {
            _GXColorS10* color = pMat->getTevBlock()->getTevColor(i);
            mTevColorAnm[i].calc(color);
        }
    }

    for (u32 i = 0; i < ARRAY_SIZE(mTevKColorAnm); i++) {
        if (mTevKColorAnm[i].getAnmFlag()) {
            _GXColor* color = pMat->getTevBlock()->getTevKColor(i);
            mTevKColorAnm[i].calc(color);
        }
    }

    for (u32 i = 0; i < ARRAY_SIZE(mTexMtxAnm); i++) {
        if (mTexMtxAnm[i].getAnmFlag()) {
            J3DTexMtx* texMtx = pMat->getTexGenBlock()->getTexMtx(i);
            mTexMtxAnm[i].calc(&texMtx->getTexMtxInfo().mSRT);
        }
    }
}

void J3DMaterialAnm::setMatColorAnm(int idx, J3DMatColorAnm* p_matColorAnm) {
    if (p_matColorAnm == NULL) {
        mMatColorAnm[idx].setAnmFlag(false);
    } else {
        mMatColorAnm[idx] = *p_matColorAnm;
    }
}

void J3DMaterialAnm::setTexMtxAnm(int idx, J3DTexMtxAnm* p_texMtxAnm) {
    if (p_texMtxAnm == NULL) {
        mTexMtxAnm[idx].setAnmFlag(false);
    } else {
        mTexMtxAnm[idx] = *p_texMtxAnm;
    }
}

void J3DMaterialAnm::setTexNoAnm(int idx, J3DTexNoAnm* p_texNoAnm) {
    if (p_texNoAnm == NULL) {
        mTexNoAnm[idx].setAnmFlag(false);
    } else {
        mTexNoAnm[idx] = *p_texNoAnm;
    }
}

void J3DMaterialAnm::setTevColorAnm(int idx, J3DTevColorAnm* p_tevColorAnm) {
    if (p_tevColorAnm == NULL) {
        mTevColorAnm[idx].setAnmFlag(false);
    } else {
        mTevColorAnm[idx] = *p_tevColorAnm;
    }
}

void J3DMaterialAnm::setTevKColorAnm(int idx, J3DTevKColorAnm* p_tevKColorAnm) {
    if (p_tevKColorAnm == NULL) {
        mTevKColorAnm[idx].setAnmFlag(false);
    } else {
        mTevKColorAnm[idx] = *p_tevKColorAnm;
    }
}

/* ############################################################################################## */
/* 803CEE60-803CEE70 02BF80 0010+00 0/0 10/10 74/74 .data            __vt__14J3DMaterialAnm */
SECTION_DATA extern void* __vt__14J3DMaterialAnm[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14J3DMaterialAnmFv,
    (void*)calc__14J3DMaterialAnmCFP11J3DMaterial,
};
