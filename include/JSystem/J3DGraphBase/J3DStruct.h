#ifndef J3DSTRUCT_H
#define J3DSTRUCT_H

#include "dolphin/gx/GXStruct.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/mtx/mtx44.h"
#include "dolphin/mtx/vec.h"

class J3DLightInfo {
public:
    /* 803256C4 */ void operator=(J3DLightInfo const&);

    /* 0x00 */ Vec mLightPosition;
    /* 0x0C */ Vec mLightDirection;
    /* 0x18 */ GXColor mColor;
    /* 0x1C */ Vec mCosAtten;
    /* 0x28 */ Vec mDistAtten;
};  // Size = 0x34

extern "C" extern J3DLightInfo const j3dDefaultLightInfo;

class J3DLightObj {
public:
    /* 80018C0C */ J3DLightObj() { mInfo = j3dDefaultLightInfo; }
    /* 80323590 */ void load(u32) const;

    J3DLightInfo& getLightInfo() { return mInfo; }
    J3DLightObj& operator=(J3DLightObj const& other) {
        mInfo = other.mInfo;
        return *this;
    }

    /* 0x00 */ J3DLightInfo mInfo;
    /* 0x34 */ u8 field_0x34[64];
};  // Size = 0x74

struct J3DTextureSRTInfo {
    /* 0x00 */ f32 mScaleX;
    /* 0x04 */ f32 mScaleY;
    /* 0x08 */ s16 mRotation;
    /* 0x0C */ f32 mTranslationX;
    /* 0x10 */ f32 mTranslationY;

    inline void operator=(J3DTextureSRTInfo const& other) {
        register const f32* src = &other.mScaleX;
        register f32* dst = &mScaleX;
        register f32 xy;
        asm {
            psq_l xy, 0(src), 0, 0
            psq_st xy, 0(dst), 0, 0
        };
        // Unclear why there's a 4 byte copy here.
        *(u32*)&mRotation = *(u32*)&other.mRotation;
        src = &other.mTranslationX;
        dst = &mTranslationX;
        asm {
            psq_l xy, 0(src), 0, 0
            psq_st xy, 0(dst), 0, 0
        };
    }
};  // Size: 0x14

struct J3DTexMtxInfo {
    /* 80325718 */ void operator=(J3DTexMtxInfo const&);
    /* 80325794 */ void setEffectMtx(Mtx);

    /* 0x00 */ u8 mProjection;
    /* 0x01 */ s8 mInfo;
    /* 0x04 */ Vec mCenter;
    /* 0x10 */ J3DTextureSRTInfo mSRT;
    /* 0x24 */ Mtx44 mEffectMtx;    
};  // Size: 0x64

struct J3DIndTexMtxInfo {
    /* 803257DC */ void operator=(J3DIndTexMtxInfo const&);

    /* 0x00 */ Mtx23 field_0x0;
    /* 0x18 */ u8 field_0x18;
};  // Size: 0x1C

struct J3DFogInfo {
    /* 80325800 */ void operator=(J3DFogInfo const&);

    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u16 field_0x2;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 field_0x17;
    /* 0x18 */ u16 field_0x18[10];
};  // Size: 0x2C

struct J3DNBTScaleInfo {
    /* 8032587C */ void operator=(J3DNBTScaleInfo const&);

    /* 0x0 */ u8 mbHasScale;
    /* 0x4 */ Vec mScale;
};  // Size: 0x10

#endif /* J3DSTRUCT_H */
