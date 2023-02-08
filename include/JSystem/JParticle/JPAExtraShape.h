#ifndef JPAEXTRASHAPE_H
#define JPAEXTRASHAPE_H

#include "dolphin/types.h"

struct JPAExtraShapeData {
    // Common header.
    /* 0x00 */ u8 mMagic[4];
    /* 0x04 */ u32 mSize;

    /* 0x08 */ u32 mFlags;
    /* 0x0C */ f32 mScaleInTiming;
    /* 0x10 */ f32 mScaleOutTiming;
    /* 0x14 */ f32 mScaleInValueX;
    /* 0x18 */ f32 mScaleOutValueX;
    /* 0x1C */ f32 mScaleInValueY;
    /* 0x20 */ f32 mScaleOutValueY;
    /* 0x24 */ f32 mScaleOutRandom;
    /* 0x28 */ s16 mScaleAnmCycleX;
    /* 0x2A */ s16 mScaleAnmCycleY;
    /* 0x2C */ f32 mAlphaInTiming;
    /* 0x30 */ f32 mAlphaOutTiming;
    /* 0x34 */ f32 mAlphaInValue;
    /* 0x38 */ f32 mAlphaBaseValue;
    /* 0x3C */ f32 mAlphaOutValue;
    /* 0x40 */ f32 mAlphaWaveFrequency;
    /* 0x44 */ f32 mAlphaWaveRandom;
    /* 0x48 */ f32 mAlphaWaveAmplitude;
    /* 0x4C */ f32 mRotateAngle;
    /* 0x50 */ f32 mRotateAngleRandom;
    /* 0x54 */ f32 mRotateSpeed;
    /* 0x58 */ f32 mRotateSpeedRandom;
    /* 0x5C */ f32 mRotateDirection;
};

class JPAExtraShape {
public:
    /* 8027AD88 */ JPAExtraShape(u8 const*);
    /* 8027ADBC */ void init();

    f32 getScaleInTiming() const { return mpData->mScaleInTiming; }
    f32 getScaleOutTiming() const { return mpData->mScaleOutTiming; }
    f32 getScaleInValueX() const { return mpData->mScaleInValueX; }
    f32 getScaleInValueY() const { return mpData->mScaleInValueY; }
    f32 getScaleOutValueX() const { return mpData->mScaleOutValueX; }
    f32 getScaleOutValueY() const { return mpData->mScaleOutValueY; }
    s16 getScaleAnmCycleX() const { return mpData->mScaleAnmCycleX; }
    s16 getScaleAnmCycleY() const { return mpData->mScaleAnmCycleY; }
    f32 getAlphaInTiming() const { return mpData->mAlphaInTiming; }
    f32 getAlphaOutTiming() const { return mpData->mAlphaOutTiming; }
    f32 getAlphaInValue() const { return mpData->mAlphaInValue; }
    f32 getAlphaOutValue() const { return mpData->mAlphaOutValue; }
    f32 getAlphaBaseValue() const { return mpData->mAlphaBaseValue; }
    f32 getAlphaFreq() const { return mpData->mAlphaWaveFrequency; }
    f32 getAlphaAmp() const { return mpData->mAlphaWaveAmplitude; }
    f32 getScaleIncRateX() const { return mScaleIncRateX; }
    f32 getScaleDecRateX() const { return mScaleDecRateX; }
    f32 getScaleIncRateY() const { return mScaleIncRateY; }
    f32 getScaleDecRateY() const { return mScaleDecRateY; }
    f32 getAlphaIncRate() const { return mAlphaIncRate; }
    f32 getAlphaDecRate() const { return mAlphaDecRate; }

private:
    /* 0x00 */ const JPAExtraShapeData* mpData;
    /* 0x04 */ f32 mAlphaIncRate;
    /* 0x08 */ f32 mAlphaDecRate;
    /* 0x0C */ f32 mScaleIncRateX;
    /* 0x10 */ f32 mScaleIncRateY;
    /* 0x14 */ f32 mScaleDecRateX;
    /* 0x18 */ f32 mScaleDecRateY;
};

#endif /* JPAEXTRASHAPE_H */
