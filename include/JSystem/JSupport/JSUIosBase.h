#ifndef __JSUIOSBASE_H__
#define __JSUIOSBASE_H__

#include "dolphin/types.h"

enum EIoState {
    IOS_STATE_1 = 1,
};

class JSUIosBase {
public:
    JSUIosBase() { mState = false; }

    virtual ~JSUIosBase();

    bool isGood() const { return mState == 0; }
    void clrState(EIoState state) { mState &= ~state; }
    void setState(EIoState state) { mState |= state; }

private:
    u8 mState;
};

#endif
