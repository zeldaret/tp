#include "HBMFrameController.h"

#include <revolution/os.h>
#include <revolution/types.h>

namespace homebutton {
    void FrameController::init(int anm_type, f32 max_frame, f32 min_frame, f32 delta) {
        ASSERTLINE(21, eAnmType_Forward <= anm_type && anm_type < eAnmType_Max);
        ASSERTLINE(22, max_frame > min_frame && min_frame >= 0.0f);
        ASSERTLINE(23, delta > 0.0f);

        mAnmType = anm_type;

        mMaxFrame = max_frame;
        mMinFrame = min_frame;

        mFrameDelta = delta;
        mState = eState_Stopped;
        mAltFlag = FALSE;

        initFrame();
    }

    void FrameController::initFrame() {
        ASSERTLINE(40, mMinFrame <= mMaxFrame);

        mCurFrame = mAnmType == eAnmType_Backward ? mMaxFrame : mMinFrame;
    }

    void FrameController::calc() {
        if (mState != eState_Playing)
            return;

        switch (mAnmType) {
        case eAnmType_Forward:
            if ((mCurFrame += mFrameDelta) >= getLastFrame()) {
                mCurFrame = getLastFrame();
                stop();
            }

            break;

        case eAnmType_Backward:
            if ((mCurFrame -= mFrameDelta) <= mMinFrame) {
                mCurFrame = mMinFrame;
                stop();
            }

            break;

        case eAnmType_Wrap:
            if ((mCurFrame += mFrameDelta) >= mMaxFrame)
                mCurFrame -= mMaxFrame - mMinFrame;

            break;

        case eAnmType_Alternate:
            if (!mAltFlag) {
                if ((mCurFrame += mFrameDelta) >= getLastFrame()) {
                    mCurFrame = getLastFrame();
                    mAltFlag = TRUE;
                }
            } else {
                if ((mCurFrame -= mFrameDelta) <= mMinFrame) {
                    mCurFrame = mMinFrame;
                    mAltFlag = FALSE;
                }
            }

            break;
        }
    }

}  // namespace homebutton
