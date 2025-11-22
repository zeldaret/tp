#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JAISoundParams.h"

void JAISoundParamsMove::moveVolume(f32 newValue, u32 maxSteps) {
    JUT_ASSERT(12, (newValue>=0.f));
    if (maxSteps == 0) {
        mParams.mVolume = newValue;
        mTransition.mVolume.remainingSteps_ = 0;
    } else {
        mTransition.mVolume.set(newValue, mParams.mVolume, maxSteps);
    }
}

void JAISoundParamsMove::movePitch(f32 newValue, u32 maxSteps) {
    JUT_ASSERT(27, (newValue>=0.f));
    if (maxSteps == 0) {
        mParams.mPitch = newValue;
        mTransition.mPitch.remainingSteps_ = 0;
    } else {
        mTransition.mPitch.set(newValue, mParams.mPitch, maxSteps);
    }
}

void JAISoundParamsMove::moveFxMix(f32 newValue, u32 maxSteps) {
    if (maxSteps == 0) {
        mParams.mFxMix = newValue;
        mTransition.mFxMix.remainingSteps_ = 0;
    } else {
        mTransition.mFxMix.set(newValue, mParams.mFxMix, maxSteps);
    }
}

void JAISoundParamsMove::movePan(f32 newValue, u32 maxSteps) {
    if (maxSteps == 0) {
        mParams.mPan = newValue;
        mTransition.mPan.remainingSteps_ = 0;
    } else {
        mTransition.mPan.set(newValue, mParams.mPan, maxSteps);
    }
}

void JAISoundParamsMove::moveDolby(f32 newValue, u32 maxSteps) {
    if (maxSteps == 0) {
        mParams.mDolby = newValue;
        mTransition.mDolby.remainingSteps_ = 0;
    } else {
        mTransition.mDolby.set(newValue, mParams.mDolby, maxSteps);
    }
}
