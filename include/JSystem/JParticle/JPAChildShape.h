#ifndef JPACHILDSHAPE_H
#define JPACHILDSHAPE_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

struct JPAChildShapeData {
    // Common header.
    /* 0x00 */ u8 mMagic[4];
    /* 0x04 */ u32 mSize;

    /* 0x08 */ u32 mFlags;
    /* 0x0C */ f32 mPosRndm;
    /* 0x10 */ f32 mBaseVel;
    /* 0x14 */ f32 mBaseVelRndm;
    /* 0x18 */ f32 mVelInfRate;
    /* 0x1C */ f32 mGravity;
    /* 0x20 */ f32 mScaleX;
    /* 0x24 */ f32 mScaleY;
    /* 0x28 */ f32 mInheritScale;
    /* 0x2C */ f32 mInheritAlpha;
    /* 0x30 */ f32 mInheritRGB;
    /* 0x34 */ GXColor mPrmClr;
    /* 0x38 */ GXColor mEnvClr;
    /* 0x3C */ f32 mTiming;
    /* 0x40 */ s16 mLife;
    /* 0x42 */ s16 mRate;
    /* 0x44 */ u8 mStep;
    /* 0x45 */ u8 mTexIdx;
    /* 0x46 */ s16 mRotSpeed;
};

class JPAChildShape {
public:
    /* 8027B038 */ JPAChildShape(u8 const*);

    void getPrmClr(GXColor* dst) { *dst = mpData->mPrmClr; }
    void getEnvClr(GXColor* dst) { *dst = mpData->mEnvClr; }

public:
    /* 0x00 */ const JPAChildShapeData* mpData;
};

#endif /* JPACHILDSHAPE_H */
