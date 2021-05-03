#ifndef JSUINPUTSTREAM_H
#define JSUINPUTSTREAM_H

#include "JSystem/JSupport/JSUIosBase.h"
#include "dolphin/types.h"

struct JSUStreamSeekFrom {};

class JSUInputStream : public JSUIosBase {
public:
    JSUInputStream();
    virtual ~JSUInputStream();

    /* vt[3] */ virtual s32 getAvailable() const = 0;
    /* vt[4] */ virtual s32 skip(s32);
    /* vt[5] */ virtual s32 readData(void*, s32) = 0;

    // TODO: return value probably wrong
    /* 802DC298 */ void read(void*, s32);
};

#endif /* JSUINPUTSTREAM_H */
