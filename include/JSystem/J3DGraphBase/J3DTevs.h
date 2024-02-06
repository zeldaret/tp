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
    /* 0x8 */ u8 field_0x8;
    /* 0x8 */ u8 field_0x9;
    /* 0x8 */ u8 field_0xa;
    /* 0x8 */ u8 field_0xb;
    /* 0x8 */ u8 field_0xc;
    /* 0x8 */ u8 field_0xd;
    /* 0x8 */ u8 field_0xe;
    /* 0x8 */ u8 field_0xf;
    /* 0x8 */ u8 field_0x10;
    /* 0x8 */ u8 field_0x11;
    /* 0x8 */ u8 field_0x12;
    /* 0x8 */ u8 field_0x13;
};

extern J3DTevStageInfo const j3dDefaultTevStageInfo;

struct J3DTevSwapModeTableInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
}; // Size: 0x4

extern const J3DTevSwapModeTableInfo j3dDefaultTevSwapModeTable;

struct J3DTevSwapModeInfo {
    /* 0x0 */ u8 mRasSel;
    /* 0x1 */ u8 mTexSel;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
}; // Size: 0x4

extern J3DTevSwapModeInfo const j3dDefaultTevSwapMode;

struct J3DTevStage {
    /* 8000E230 */ J3DTevStage();
    void setTevColorOp(u8 param_1, u8 param_2, u8 param_3, u8 param_4, u8 param_5) {
        mTevColorOp = mTevColorOp & ~(0x01 << 2) | param_1 << 2;
        if (param_1 <= 1) {
            mTevColorOp = mTevColorOp & ~(0x03 << 4) | param_3 << 4;
            mTevColorOp = mTevColorOp & ~0x03 | param_2;
        } else {
            mTevColorOp = mTevColorOp & ~(0x03 << 4) | (param_1 >> 1 & 3) << 4;
            mTevColorOp = mTevColorOp & ~0x03 | 3;
        }
        mTevColorOp = mTevColorOp & ~(0x01 << 3) | param_4 << 3;
        mTevColorOp = mTevColorOp & ~(0x03 << 6) | param_5 << 6;
    }

    void setTevColorAB(u8 a, u8 b) { mTevColorAB = a << 4 | b; }
    void setTevColorCD(u8 c, u8 d) { mTevColorCD = c << 4 | d; }
    void setAlphaA(u8 a) { mTevAlphaAB = mTevAlphaAB & ~(0x07 << 5) | a << 5; }
    void setAlphaB(u8 b) { mTevAlphaAB = mTevAlphaAB & ~(0x07 << 2) | b << 2; }
    void setAlphaC(u8 c) {
        mTevAlphaAB = mTevAlphaAB & ~0x03 | c >> 1;
        mTevSwapModeInfo = mTevSwapModeInfo & ~(0x01 << 7) | c << 7;
    }
    void setAlphaD(u8 d) { mTevSwapModeInfo = mTevSwapModeInfo & ~(0x07 << 4) | d << 4; }
    void setAlphaABCD(u8 a, u8 b, u8 c, u8 d) {
        setAlphaA(a);
        setAlphaB(b);
        setAlphaC(c);
        setAlphaD(d);
    }

    void setTevAlphaOp(u8 param_1, u8 param_2, u8 param_3, u8 param_4, u8 param_5) {
        mTevAlphaOp = mTevAlphaOp & ~(0x01 << 2) | param_1 << 2;
        if (param_1 <= 1) {
            mTevAlphaOp = mTevAlphaOp & ~0x03 | param_2;
            mTevAlphaOp = mTevAlphaOp & ~(0x03 << 4) | param_3 << 4;
        } else {
            mTevAlphaOp = mTevAlphaOp & ~(0x03 << 4) | (param_1 >> 1 & 3) << 4;
            mTevAlphaOp = mTevAlphaOp & ~0x03 | 3;
        }
        mTevAlphaOp = mTevAlphaOp & ~(0x01 << 3) | param_4 << 3;
        mTevAlphaOp = mTevAlphaOp & ~(0x03 << 6) | param_5 << 6;
    }

    void setTevStageInfo(const J3DTevStageInfo& info) {
        setTevColorOp(info.mTevAlphaOp, info.mTevAlphaAB, info.mTevSwapModeInfo, info.field_0x8, info.field_0x9);
        setTevColorAB(info.mTevColorOp, info.mTevColorAB);
        setTevColorCD(info.mTevColorCD, info.field_0x4);
        setAlphaABCD(info.field_0xa, info.field_0xb, info.field_0xc, info.field_0xd);
        setTevAlphaOp(info.field_0xe, info.field_0xf, info.field_0x10, info.field_0x11, info.field_0x12);
    }

    /* 8003AACC */ J3DTevStage(J3DTevStageInfo const& param_0) {
        setTevStageInfo(param_0);
        setTevSwapModeInfo(j3dDefaultTevSwapMode);
    }

    void setTevSwapModeInfo(J3DTevSwapModeInfo const& param_0) {
        setTexSel(param_0.mTexSel);
        setRasSel(param_0.mRasSel);
    }
    void setRasSel(u8 ras_sel) { mTevSwapModeInfo = (mTevSwapModeInfo & ~3) | ras_sel; }
    void setTexSel(u8 tex_sel) { mTevSwapModeInfo = (mTevSwapModeInfo & ~0xc) | (tex_sel << 2); }

    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 mTevColorOp;
    /* 0x2 */ u8 mTevColorAB;
    /* 0x3 */ u8 mTevColorCD;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 mTevAlphaOp;
    /* 0x6 */ u8 mTevAlphaAB;
    /* 0x7 */ u8 mTevSwapModeInfo;
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
    /* 0x9 */ u8 pad[3];
};

extern J3DIndTevStageInfo const j3dDefaultIndTevStageInfo;

struct J3DIndTevStage {
    /* 8000E14C */ J3DIndTevStage() : mInfo(0) { setIndTevStageInfo(j3dDefaultIndTevStageInfo); }
    J3DIndTevStage(J3DIndTevStageInfo const& info) : mInfo(0) { setIndTevStageInfo(info); }
    void setIndTevStageInfo(J3DIndTevStageInfo const& info) {
        setIndStage(info.mIndStage);
        setIndFormat(info.mIndFormat);
        setBiasSel(info.mBiasSel);
        setMtxSel(info.mMtxSel);
        setWrapS(info.mWrapS);
        setWrapT(info.mWrapT);
        setPrev(info.mPrev);
        setLod(info.mLod);
        setAlphaSel(info.mAlphaSel);
    }
    void setIndStage(u8 indStage) { mInfo = (mInfo & ~3) | indStage; }
    void setIndFormat(u8 indFormat) { mInfo = (mInfo & ~0xc) | (indFormat << 2); }
    void setBiasSel(u8 biasSel) { mInfo = (mInfo & ~0x70) | (biasSel << 4); }
    void setMtxSel(u8 mtxSel) { mInfo = (mInfo & ~0x1e00) | (mtxSel << 9); }
    void setWrapS(u8 wrapS) { mInfo = (mInfo & ~0xe000) | (wrapS << 13); }
    void setWrapT(u8 wrapT) { mInfo = (mInfo & ~0x70000) | (wrapT << 16); }
    void setPrev(u8 prev) { mInfo = (mInfo & ~0x100000) | (prev << 20); }
    void setLod(u8 lod) { mInfo = (mInfo & ~0x80000) | (lod << 19); }
    void setAlphaSel(u8 alphaSel) { mInfo = (mInfo & ~0x180) | (alphaSel << 7); }

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

extern const J3DTevOrderInfo j3dDefaultTevOrderInfoNull;

struct J3DTevOrder : public J3DTevOrderInfo {
    /* 8000E140 */ J3DTevOrder() : J3DTevOrderInfo(j3dDefaultTevOrderInfoNull) {}
    J3DTevOrder(const J3DTevOrderInfo& info) : J3DTevOrderInfo(info) {}

    u8 getTexMap() { return mTexMap; }
};

struct J3DTevSwapModeTable {
    /* 8000E134 */ J3DTevSwapModeTable();
    J3DTevSwapModeTable(J3DTevSwapModeTableInfo const& info) {
        field_0x0 = calcTevSwapTableID(info.field_0x0, info.field_0x1, info.field_0x2, info.field_0x3);
    }
    u8 calcTevSwapTableID(u8 param_0, u8 param_1, u8 param_2, u8 param_3) {
        return 0x40 * param_0 + 0x10 * param_1 + 4 * param_2 + param_3;
    }

    /* 0x0 */ u8 field_0x0;
};  // Size: 0x1

struct J3DNBTScale;
struct J3DTexCoord;
void loadNBTScale(J3DNBTScale& param_0);
void loadTexCoordGens(u32 param_0, J3DTexCoord* param_1);

#endif /* J3DTEVS_H */
