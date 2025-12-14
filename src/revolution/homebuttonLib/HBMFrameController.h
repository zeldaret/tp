#ifndef RVL_SDK_HBM_FRAME_CONTROLLER_H
#define RVL_SDK_HBM_FRAME_CONTROLLER_H

#include <revolution/types.h>

namespace homebutton {
    class FrameController {
        // enums
    public:
        enum eState { eState_Stopped, eState_Playing };

        enum eAnmType {
            eAnmType_Forward,  // name known from asserts
            eAnmType_Backward,
            eAnmType_Wrap,
            eAnmType_Alternate,

            eAnmType_Max  // name known from asserts
        };

        // methods
    public:
        // cdtors
        /* FrameController() = default; */
        virtual ~FrameController() {}

        // virtual function ordering
        // vtable FrameController
        virtual void calc();

        // methods
        f32 getMaxFrame() const { return mMaxFrame; }
        f32 getCurrentFrame() const { return mCurFrame; }
        f32 getLastFrame() const { return mMaxFrame - 1.0f; }
        bool isPlaying() const { return mState == eState_Playing; }

        void setAnmType(int anm_type) { mAnmType = anm_type; }

        void init(int anm_type, f32 max_frame, f32 min_frame, f32 delta);
        void initFrame();

        void start() {
            initFrame();
            restart();
        }

        void stop() { mState = eState_Stopped; }
        void restart() { mState = eState_Playing; }

        // members
    protected:            // GroupAnmController::doCalc
        /* vtable */      // size 0x04, offset 0x00
        f32 mMaxFrame;    // size 0x04, offset 0x04
        f32 mMinFrame;    // size 0x04, offset 0x08
        f32 mCurFrame;    // size 0x04, offset 0x0c
        f32 mFrameDelta;  // size 0x04, offset 0x10
        int mState;       // size 0x04, offset 0x14
        int mAnmType;     // size 0x04, offset 0x18
        bool mAltFlag;    // size 0x01, offset 0x1c
                          /* 3 bytes padding */
    };  // size 0x20
}  // namespace homebutton

#endif  // RVL_SDK_HBM_FRAME_CONTROLLER_H
