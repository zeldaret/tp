#ifndef J3DSYS_H
#define J3DSYS_H

#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

// Perhaps move to a new J3DEnum.h?
enum J3DError {
    kJ3DError_Success = 0,
    kJ3DError_Alloc = 4,
};

struct _GXTexCacheSize {};

class J3DMtxCalc;
class J3DModel;
class J3DMatPacket;
class J3DShapePacket;
class J3DShape;
class J3DDrawBuffer;
class J3DTexture;

struct J3DSys {
    /* 0x00 */ Mtx mMtx;
    /* 0x30 */ J3DMtxCalc* mMtxCalc;
    /* 0x34 */ u32 mFlags;
    /* 0x38 */ J3DModel* mModel;
    /* 0x3C */ J3DMatPacket* mMatPacket;
    /* 0x40 */ J3DShapePacket* mShapePacket;
    /* 0x44 */ J3DShape* mShape;
    /* 0x48 */ J3DDrawBuffer* mDrawBuffer[2];
    /* 0x50 */ u32 mDrawMode;
    /* 0x54 */ u32 mMaterialMode;
    /* 0x58 */ J3DTexture* mTexture;

    u8 field_0x5c[0x11C - 0x5C];
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

    static Mtx mCurrentMtx;
    static f32 mCurrentS[3];
    static f32 mParentS[3];
    static u16 sTexCoordScaleTable[34];
};

extern J3DSys j3dSys;

#endif /* J3DSYS_H */
