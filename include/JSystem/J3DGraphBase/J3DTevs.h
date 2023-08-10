#ifndef J3DTEVS_H
#define J3DTEVS_H

#include "dolphin/types.h"

struct J3DTevStageInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 mTevColorOp;
    /* 0x2 */ u8 mTevColorAB;
    /* 0x3 */ u8 mTevColorCD;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 mTevAlphaOp;
    /* 0x6 */ u8 mTevAlphaAB;
    /* 0x7 */ u8 mTevSwapModeInfo;
};

struct J3DTevStage : public J3DTevStageInfo {
    /* 8000E230 */ J3DTevStage();
    /* 8000E298 */ void setTevStageInfo(J3DTevStageInfo const&);
    /* 8003AACC */ J3DTevStage(J3DTevStageInfo const&);
};

struct J3DIndTevStageInfo {
    /* 0x0 */ u8 mIndStage;
    /* 0x1 */ u8 mIndFormat;
    /* 0x2 */ u8 mBiasSel;
    /* 0x3 */ u8 mMtxSel;
    /* 0x4 */ u8 mWrapS;
    /* 0x5 */ u8 mWrapT;
    /* 0x6 */ u8 mPrev;
    /* 0x7 */ u8 mLod;
    /* 0x8 */ u8 mAlphaSel;
};

struct J3DIndTevStage {
    /* 8000E14C */ J3DIndTevStage();

    /* 0x0 */ u32 mInfo;
};

struct J3DTevOrderInfo {
    void operator=(const J3DTevOrderInfo& other) {
        *(u32*) this = *(u32*)&other;
    }

    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 mTexMap;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3; // Maybe padding
};

struct J3DTevOrder : public J3DTevOrderInfo {
    /* 8000E140 */ J3DTevOrder();
    J3DTevOrder(const J3DTevOrderInfo& info) {
        *(J3DTevOrderInfo*)this = info;
    }

    u8 getTexMap() { return mTexMap; }
};

struct J3DTevSwapModeTable {
    /* 8000E134 */ J3DTevSwapModeTable();

    /* 0x0 */ u8 field_0x0;
};  // Size: 0x1

struct J3DTevSwapModeInfo {};

struct J3DNBTScale;
void loadNBTScale(J3DNBTScale& param_0);

#endif /* J3DTEVS_H */
