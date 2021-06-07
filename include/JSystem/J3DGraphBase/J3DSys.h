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

struct J3DSys {
    Mtx mMtx;
    u8 _30[0x11C - 0x30];
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

    static u8 mCurrentMtx[48];
    static f32 mCurrentS[3];
    static f32 mParentS[3];
    static u8 sTexCoordScaleTable[64 + 4 /* padding */];
};

extern J3DSys j3dSys;

#endif /* J3DSYS_H */
