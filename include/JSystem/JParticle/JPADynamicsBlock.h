#ifndef JPADYNAMICSBLOCK_H
#define JPADYNAMICSBLOCK_H

#include "JSystem/JGeometry.h"

#include "dolphin/types.h"

class JPAEmitterWorkData;

struct JPADynamicsBlockData {
    // Common header.
    /* 0x00 */ u8 mMagic[4];
    /* 0x04 */ u32 mSize;

    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u32 mResUserWork;
    /* 0x10 */ JGeometry::TVec3<f32> mEmitterScl;
    /* 0x1C */ JGeometry::TVec3<f32> mEmitterTrs;
    /* 0x28 */ JGeometry::TVec3<f32> mEmitterDir;
    /* 0x34 */ f32 mInitialVelOmni;
    /* 0x38 */ f32 mInitialVelAxis;
    /* 0x3C */ f32 mInitialVelRndm;
    /* 0x40 */ f32 mInitialVelDir;
    /* 0x44 */ f32 mSpread;
    /* 0x48 */ f32 mInitialVelRatio;
    /* 0x4C */ f32 mRate;
    /* 0x50 */ f32 mRateRndm;
    /* 0x54 */ f32 mLifeTimeRndm;
    /* 0x58 */ f32 mVolumeSweep;
    /* 0x5C */ f32 mVolumeMinRad;
    /* 0x60 */ f32 mAirResist;
    /* 0x64 */ f32 mMoment;
    /* 0x68 */ JGeometry::TVec3<s16> mEmitterRot;
    /* 0x6E */ s16 mMaxFrame;
    /* 0x70 */ s16 mStartFrame;
    /* 0x72 */ s16 mLifeTime;
    /* 0x74 */ s16 mVolumeSize;
    /* 0x76 */ s16 mDivNumber;
    /* 0x78 */ u8 mRateStep;
    /* 0x7C */ u32 field_0x7c;
};

typedef void (*JPADynamicsCalcVolumeFunc)(JPAEmitterWorkData*);

class JPADynamicsBlock {
public:
    /* 8027BB18 */ JPADynamicsBlock(u8 const*);
    /* 8027BB4C */ void init();
    /* 8027BBE8 */ void create(JPAEmitterWorkData*);

    void calc(JPAEmitterWorkData* work) {
        mpCalcVolumeFunc(work);
    }

    s16 getStartFrame() const { return mpData->mStartFrame; }
    u32 getResUserWork() const { return mpData->mResUserWork; }

public:
    JPADynamicsBlockData *mpData;
    JPADynamicsCalcVolumeFunc mpCalcVolumeFunc;
};

#endif /* JPADYNAMICSBLOCK_H */
