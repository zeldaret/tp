#ifndef JSUINPUTSTREAM_H_
#define JSUINPUTSTREAM_H_

#include "JSystem/JSupport/JSUIosBase.h"
#include "dolphin/types.h"

class JSUInputStream : public JSUIosBase {
public:
    JSUInputStream();
    virtual ~JSUInputStream();

    /* vt[3] */ virtual s32 getAvailable() const = 0;
    /* vt[4] */ virtual s32 skip(s32);
};

#endif
