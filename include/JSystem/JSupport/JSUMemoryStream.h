#ifndef JSUMEMORYSTREAM_H
#define JSUMEMORYSTREAM_H

#include "JSystem/JSupport/JSURandomInputStream.h"
#include "dolphin/types.h"

class JSUMemoryInputStream : JSURandomInputStream {
public:
    /* 802552B8 */ ~JSUMemoryInputStream() {}
    /* 802DC520 */ void setBuffer(void const*, s32);
    /* 802DC534 */ u32 readData(void*, s32);
    /* 802DC5AC */ s32 seekPos(s32, JSUStreamSeekFrom);
    /* 802DC628 */ s32 getLength() const;
    /* 802DC630 */ s32 getPosition() const;

private:
    /* 0x08 */ const void* mBuffer;
    /* 0x0C */ s32 mLength;
    /* 0x10 */ s32 mPosition;
};  // Size = 0x14

#endif /* JSUMEMORYSTREAM_H */
