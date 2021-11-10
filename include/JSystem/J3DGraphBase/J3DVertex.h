#ifndef J3DVERTEX_H
#define J3DVERTEX_H

#include "dolphin/gx/GX.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

class J3DModel;
struct J3DAnmVtxColor;

struct J3DVtxColorCalc {
    /* 8032E180 */ void calc(J3DModel*);

    /* 0x0 */ void* vtable;  // inlined vtable?
    /* 0x4 */ u32 mFlags;
    /* 0x8 */ J3DAnmVtxColor* mpVtxColor;
};

class J3DVertexData {
public:
    J3DVertexData();

    void* getVtxPosArray() const { return mVtxPosArray; }

    void* getVtxNrmArray() const { return mVtxNrmArray; }

    _GXColor* getVtxColorArray(u8 idx) const { return mVtxColorArray[idx]; }

    u32 getNrmNum() const { return mNrmNum; }

    u32 getVtxNum() const { return mVtxNum; }

private:
    /* 0x00 */ u32 mVtxNum;
    /* 0x04 */ u32 mNrmNum;
    /* 0x08 */ u32 mColNum;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ void* mVtxAttrFmtList;
    /* 0x18 */ void* mVtxPosArray;
    /* 0x1C */ void* mVtxNrmArray;
    /* 0x20 */ void* mVtxNBTArray;
    /* 0x24 */ _GXColor* mVtxColorArray[2];
    /* 0x2C */ void* mVtxTexCoordArray[8];
    /* 0x4C */ u8 mVtxPosFrac;
    /* 0x50 */ _GXCompType mVtxPosType;
    /* 0x54 */ u8 mVtxNrmFrac;
    /* 0x58 */ _GXCompType mVtxNrmType;
};

class J3DVertexBuffer {
public:
    /* 80310F78 */ void setVertexData(J3DVertexData*);
    /* 80310FD8 */ void init();
    /* 80311030 */ ~J3DVertexBuffer();
    /* 8031106C */ void setArray() const;
    /* 80311090 */ s32 copyLocalVtxPosArray(u32);
    /* 803111B0 */ s32 copyLocalVtxNrmArray(u32);
    /* 803112D0 */ s32 copyLocalVtxArray(u32);
    /* 80311478 */ s32 allocTransformedVtxPosArray();
    /* 8031152C */ s32 allocTransformedVtxNrmArray();

    void setCurrentVtxPos(void* pVtxPos) { mCurrentVtxPos = pVtxPos; }

    void setCurrentVtxNrm(void* pVtxNrm) { mCurrentVtxNrm = pVtxNrm; }

    void setCurrentVtxCol(_GXColor* pVtxCol) { mCurrentVtxCol = pVtxCol; }

    void frameInit() {
        setCurrentVtxPos(mVtxPosArray[0]);
        setCurrentVtxNrm(mVtxNrmArray[0]);
        setCurrentVtxCol(mVtxColArray[0]);
    }

private:
    /* 0x00 */ J3DVertexData* mVtxData;
    /* 0x04 */ void* mVtxPosArray[2];
    /* 0x0C */ void* mVtxNrmArray[2];
    /* 0x14 */ _GXColor* mVtxColArray[2];
    /* 0x1C */ void* mTransformedVtxPosArray[2];
    /* 0x24 */ void* mTransformedVtxNrmArray[2];
    /* 0x2C */ void* mCurrentVtxPos;
    /* 0x30 */ void* mCurrentVtxNrm;
    /* 0x34 */ _GXColor* mCurrentVtxCol;
};  // Size: 0x38

struct VertexNormal {
    Vec data;
};

struct VertexPosition {
    Vec data;
};

#endif /* J3DVERTEX_H */
