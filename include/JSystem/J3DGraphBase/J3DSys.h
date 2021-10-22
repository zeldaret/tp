#ifndef J3DSYS_H
#define J3DSYS_H

#include "dolphin/gx/GX.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

// Perhaps move to a new J3DEnum.h?
enum J3DError {
    kJ3DError_Success = 0,
    kJ3DError_Alloc = 4,
};

class J3DMtxCalc;
class J3DModel;
class J3DMatPacket;
class J3DShapePacket;
class J3DShape;
class J3DDrawBuffer;
class J3DTexture;

struct J3DSys {
    /* 0x000 */ Mtx mMtx;
    /* 0x030 */ J3DMtxCalc* mCurrentMtxCalc;
    /* 0x034 */ u32 mFlags;
    /* 0x038 */ J3DModel* mModel;
    /* 0x03C */ J3DMatPacket* mMatPacket;
    /* 0x040 */ J3DShapePacket* mShapePacket;
    /* 0x044 */ J3DShape* mShape;
    /* 0x048 */ J3DDrawBuffer* mDrawBuffer[2];
    /* 0x050 */ u32 mDrawMode;
    /* 0x054 */ u32 mMaterialMode;
    /* 0x058 */ J3DTexture* mTexture;
    /* 0x05C */ u8 field_0x5c[0x10C - 0x5C];
    /* 0x10C */ void* mVtxPos;
    /* 0x110 */ void* mVtxNrm;
    /* 0x114 */ _GXColor* mVtxCol;
    /* 0x118 */ Vec* mNBTScale;

    /* 8030FDE8 */ J3DSys();
    /* 8030FEC0 */ void loadPosMtxIndx(int, u16) const;
    /* 8030FEE4 */ void loadNrmMtxIndx(int, u16) const;
    /* 8030FF0C */ void setTexCacheRegion(_GXTexCacheSize);
    /* 803100BC */ void drawInit();
    /* 8031073C */ void reinitGX();
    /* 8031079C */ void reinitGenMode();
    /* 803107E8 */ void reinitLighting();
    /* 80310894 */ void reinitTransform();
    /* 80310998 */ void reinitTexture();
    /* 80310A3C */ void reinitTevStages();
    /* 80310D44 */ void reinitIndStages();
    /* 80310E3C */ void reinitPixelProc();

    enum DrawMode {
        /* 0x3 */ OPA_TEX_EDGE = 3,
        /* 0x4 */ XLU,
    };

    void setDrawModeOpaTexEdge() { mDrawMode = OPA_TEX_EDGE; }

    void setDrawModeXlu() { mDrawMode = XLU; }

    void setVtxPos(void* pVtxPos) { mVtxPos = pVtxPos; }

    void setVtxNrm(void* pVtxNrm) { mVtxNrm = pVtxNrm; }

    void setVtxCol(_GXColor* pVtxCol) { mVtxCol = pVtxCol; }

    void setModel(J3DModel* pModel) { mModel = pModel; }

    void setTexture(J3DTexture* pTex) { mTexture = pTex; }

    void onFlag(u32 flag) { mFlags |= flag; }

    void offFlag(u32 flag) { mFlags &= ~flag; }

    static Mtx mCurrentMtx;
    static Vec mCurrentS;
    static Vec mParentS;
    static u16 sTexCoordScaleTable[34];
};

extern J3DSys j3dSys;

#endif /* J3DSYS_H */
