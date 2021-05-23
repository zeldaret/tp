#ifndef J3DANIMATION_H
#define J3DANIMATION_H

#include "dolphin/types.h"

#pragma pack(push, 1)
class J3DFrameCtrl {
public:
    void init(s16);
    BOOL checkPass(f32);
    void update();
    ~J3DFrameCtrl();

    float getRate() const { return mRate; }
    void setAttribute(u8 pAttr) { mAttribute = pAttr; }
    void setEnd(s16 pEnd) { mEnd = pEnd; }
    void setRate(float pRate) { mRate = pRate; }
    void setStart(s16 pStart) {
        mStart = pStart;
        mFrame = pStart;
    }
    void setFrame(float pFrame) { mFrame = pFrame; }
    void setLoop(s16 pLoop) { mLoop = pLoop; }

private:
    void* vtable;
    u8 mAttribute;
    bool mState;
    s16 mStart;
    s16 mEnd;
    s16 mLoop;
    float mRate;
    float mFrame;
};
#pragma pack(pop)

#endif /* J3DANIMATION_H */
