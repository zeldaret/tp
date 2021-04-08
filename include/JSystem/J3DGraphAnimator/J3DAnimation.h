#ifndef J3DANIMATION_H_
#define J3DANIMATION_H_

#include "global.h"

#pragma pack(push, 1)
class J3DFrameCtrl {
public:
private:
    void* vtable;
    u8 mAttribute;
    bool mState;
    u16 mStart;
    s16 mEnd;
    u16 mLoop;
    float mRate;
    float mFrame;
};
#pragma pack(pop)

#endif