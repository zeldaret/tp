#ifndef JSUINPUTSTREAM_H
#define JSUINPUTSTREAM_H

#include "JSystem/JSupport/JSUIosBase.h"
#include "dolphin/types.h"

enum JSUStreamSeekFrom {
    JSUStreamSeekFrom_SET = 0,  // absolute
    JSUStreamSeekFrom_CUR = 1,  // relative
    JSUStreamSeekFrom_END = 2,  // relative to end
};

class JSUInputStream : public JSUIosBase {
public:
    JSUInputStream() {}
    virtual ~JSUInputStream();

    /* vt[3] */ virtual s32 getAvailable() const = 0;
    /* vt[4] */ virtual s32 skip(s32);
    /* vt[5] */ virtual u32 readData(void*, s32) = 0;

    // TODO: return value probably wrong
    /* 802DC298 */ s32 read(void*, s32);
};  // Size = 0x8

#endif /* JSUINPUTSTREAM_H */
