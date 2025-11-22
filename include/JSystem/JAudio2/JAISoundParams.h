#ifndef JAISOUNDPARAMS_H
#define JAISOUNDPARAMS_H

#include "JSystem/JAudio2/JASSoundParams.h"

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISoundParamsProperty {
    void init() {
        field_0x0 = 1.0f;
        field_0x4 = 0.0f;
        field_0x8 = 1.0f;
    }

    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
};  // Size: 0xC

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISoundParamsTransition {
    struct TTransition {
        void zero() {
            step_ = 0.0f;
            remainingSteps_ = 0;
            targetValue_ = 0.0f;
        }

        void set(f32 newValue, f32 currentValue, u32 maxSteps) {
            remainingSteps_ = maxSteps;
            step_ = (newValue - currentValue) / remainingSteps_;
            targetValue_ = newValue;
        }

        f32 apply(f32 value) {
            if (remainingSteps_ > 1) {
                remainingSteps_--;
                value += step_;
            } else {
                if (remainingSteps_ == 1) {
                    remainingSteps_ = 0;
                    value = targetValue_;
                }
            }
            return value;
        }

        /* 0x0 */ f32 step_;
        /* 0x4 */ f32 targetValue_;
        /* 0x8 */ u32 remainingSteps_;
    };  // Size: 0xC

    void init() {
        mVolume.zero();
        mPitch.zero();
        mFxMix.zero();
        mPan.zero();
        mDolby.zero();
    }

    void apply(JASSoundParams* pParams) {
        pParams->mVolume = mVolume.apply(pParams->mVolume);
        pParams->mPitch = mPitch.apply(pParams->mPitch);
        pParams->mFxMix = mFxMix.apply(pParams->mFxMix);
        pParams->mDolby = mDolby.apply(pParams->mDolby);
        pParams->mPan = mPan.apply(pParams->mPan);
    }

    /* 0x00 */ TTransition mVolume;
    /* 0x0C */ TTransition mPitch;
    /* 0x18 */ TTransition mFxMix;
    /* 0x24 */ TTransition mPan;
    /* 0x30 */ TTransition mDolby;
};  // Size: 0x3C

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISoundParamsMove {
    JAISoundParamsMove() : mParams() {}

    void init() {
        mParams.init();
        mTransition.init();
    }

    void calc() { mTransition.apply(&mParams); }

    /* 802A2DB4 */ void moveVolume(f32 newValue, u32 maxSteps);
    /* 802A2E0C */ void movePitch(f32 newValue, u32 maxSteps);
    /* 802A2E64 */ void moveFxMix(f32 newValue, u32 maxSteps);
    /* 802A2EBC */ void movePan(f32 newValue, u32 maxSteps);
    /* 802A2F14 */ void moveDolby(f32 newValue, u32 maxSteps);

    /* 0x00 */ JASSoundParams mParams;
    /* 0x14 */ JAISoundParamsTransition mTransition;
};  // Size: 0x50

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JAISoundParams {
    JAISoundParams() : mMove() {}
    void mixOutAll(const JASSoundParams& inParams, JASSoundParams* outParams, f32);

    void init() {
        mMove.init();
        mProperty.init();
    }

    /* 0x0 */ JAISoundParamsProperty mProperty;
    /* 0xC */ JAISoundParamsMove mMove;
};  // Size: 0x5C

#endif /* JAISOUNDPARAMS_H */
