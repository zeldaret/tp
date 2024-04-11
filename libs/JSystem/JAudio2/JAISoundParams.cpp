#include "JSystem/JAudio2/JAISoundParams.h"

void JAISoundParamsMove::moveVolume(f32 newValue, u32 count) {
    if (count == 0) {
        mParams.mVolume = newValue;
        mTransition.mVolume.mCount = 0;
    } else {
        mTransition.mVolume.set(newValue, mParams.mVolume, count);
    }
}

void JAISoundParamsMove::movePitch(f32 newValue, u32 count) {
    if (count == 0) {
        mParams.mPitch = newValue;
        mTransition.mPitch.mCount = 0;
    } else {
        mTransition.mPitch.set(newValue, mParams.mPitch, count);
    }
}

void JAISoundParamsMove::moveFxMix(f32 newValue, u32 count) {
    if (count == 0) {
        mParams.mFxMix = newValue;
        mTransition.mFxMix.mCount = 0;
    } else {
        mTransition.mFxMix.set(newValue, mParams.mFxMix, count);
    }
}

void JAISoundParamsMove::movePan(f32 newValue, u32 count) {
    if (count == 0) {
        mParams.mPan = newValue;
        mTransition.mPan.mCount = 0;
    } else {
        mTransition.mPan.set(newValue, mParams.mPan, count);
    }
}

void JAISoundParamsMove::moveDolby(f32 newValue, u32 count) {
    if (count == 0) {
        mParams.mDolby = newValue;
        mTransition.mDolby.mCount = 0;
    } else {
        mTransition.mDolby.set(newValue, mParams.mDolby, count);
    }
}
