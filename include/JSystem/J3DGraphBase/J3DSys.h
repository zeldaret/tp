#ifndef J3DSYS_H
#define J3DSYS_H

#include <dolphin/gx.h>
#include <dolphin/mtx.h>
#include "JSystem/JUtility/JUTAssert.h"

// Perhaps move to a new J3DEnum.h?
enum J3DError {
    kJ3DError_Success = 0,
    kJ3DError_Alloc = 4,
};

enum J3DSysDrawBuffer {
    /* 0x0 */ J3DSys_OPA_BUFFER_e,
    /* 0x1 */ J3DSys_XLU_BUFFER_e
};

class J3DMtxCalc;
class J3DModel;
class J3DMatPacket;
class J3DShapePacket;
class J3DShape;
class J3DDrawBuffer;
class J3DTexture;

/**
 * @ingroup jsystem-j3d
 * 
 */
struct J3DTexCoordScaleInfo {
    /* 0x0 */ u16 field_0x00;
    /* 0x2 */ u16 field_0x02;
    /* 0x4 */ u16 field_0x04;
    /* 0x6 */ u16 field_0x06;
};

enum J3DSysFlag {
    J3DSysFlag_SkinPosCpu = 0x00000004,
    J3DSysFlag_SkinNrmCpu = 0x00000008,
    J3DSysFlag_PostTexMtx = 0x40000000,
};

/**
 * @ingroup jsystem-j3d
 * 
 */
struct J3DSys {
    /* 0x000 */ Mtx mViewMtx;
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
    /* 0x05C */ u8 field_0x5c[0x04];
    /* 0x060 */ u32 mTexCacheRegionNum;
    /* 0x064 */ GXTexRegion mTexCacheRegion[8];
    /* 0x0E4 */ u8 field_0xe4[0x20];
    /* 0x104 */ Mtx* mModelDrawMtx;
    /* 0x108 */ Mtx33* mModelNrmMtx;
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

    MtxP getViewMtx() { return mViewMtx; }

    void setDrawModeOpaTexEdge() { mDrawMode = OPA_TEX_EDGE; }

    void setDrawModeXlu() { mDrawMode = XLU; }

    void* getVtxPos() { return mVtxPos; }
    void setVtxPos(void* pVtxPos) { mVtxPos = pVtxPos; }

    void* getVtxNrm() { return mVtxNrm; }
    void setVtxNrm(void* pVtxNrm) { mVtxNrm = pVtxNrm; }

    void* getVtxCol() const { return mVtxCol; }
    void setVtxCol(_GXColor* pVtxCol) { mVtxCol = pVtxCol; }

    void setModel(J3DModel* pModel) {
        J3D_ASSERT(200, pModel, "Error : null pointer.");
        mModel = pModel;
    }
    void setShapePacket(J3DShapePacket* pPacket) { mShapePacket = pPacket; }
    void setMatPacket(J3DMatPacket* pPacket) { mMatPacket = pPacket; }
    J3DMatPacket* getMatPacket() { return mMatPacket; }
    void setMaterialMode(u32 mode) { mMaterialMode = mode; }

    void setCurrentMtxCalc(J3DMtxCalc * pCalc) { mCurrentMtxCalc = pCalc; }
    J3DMtxCalc * getCurrentMtxCalc() const { return mCurrentMtxCalc; }

    void setTexture(J3DTexture* pTex) { mTexture = pTex; }
    J3DTexture* getTexture() { return mTexture; }

    void setNBTScale(Vec* scale) { mNBTScale = scale; }
    Vec* getNBTScale() { return mNBTScale; }

    void onFlag(u32 flag) { mFlags |= flag; }

    void offFlag(u32 flag) { mFlags &= ~flag; }

    bool checkFlag(u32 flag) { return mFlags & flag; }

    void setModelDrawMtx(Mtx* pMtxArr) {
        mModelDrawMtx = pMtxArr;
        GXSetArray(GX_POS_MTX_ARRAY, mModelDrawMtx, sizeof(*mModelDrawMtx));
    }

    void setModelNrmMtx(Mtx33* pMtxArr) {
        JUT_ASSERT_MSG(241, pMtxArr, "Error : null pointer.");
        mModelNrmMtx = pMtxArr;
        GXSetArray(GX_NRM_MTX_ARRAY, mModelNrmMtx, sizeof(*mModelNrmMtx));
    }

    // Type 0: Opa Buffer
    // Type 1: Xlu Buffer
    void setDrawBuffer(J3DDrawBuffer* buffer, int type) {
        J3D_ASSERT(114, type >= 0 && type < 2, "Error : range over.");
        J3D_ASSERT(115, buffer, "Error : null pointer.");
        mDrawBuffer[type] = buffer;
    }

    // Type 0: Opa Buffer
    // Type 1: Xlu Buffer
    J3DDrawBuffer* getDrawBuffer(int type) {
        J3D_ASSERT(121, type >= 0 && type < 2, "Error : range over.");
        return mDrawBuffer[type];
    }

    Mtx& getModelDrawMtx(u16 no) { return mModelDrawMtx[no]; }
    J3DShapePacket* getShapePacket() { return mShapePacket; }

    void setViewMtx(Mtx m) { MTXCopy(m, mViewMtx); }

    J3DModel* getModel() { return mModel; }

    static Mtx mCurrentMtx;
    static Vec mCurrentS;
    static Vec mParentS;
    static J3DTexCoordScaleInfo sTexCoordScaleTable[8];
};

extern u32 j3dDefaultViewNo;
extern J3DSys j3dSys;

#endif /* J3DSYS_H */
