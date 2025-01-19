#ifndef JSUMEMORYSTREAM_H
#define JSUMEMORYSTREAM_H

#include "JSystem/JSupport/JSURandomInputStream.h"
#include "JSystem/JSupport/JSURandomOutputStream.h"

/**
* @ingroup jsystem-jsupport
* 
*/
class JSUMemoryInputStream : public JSURandomInputStream {
public:
    JSUMemoryInputStream(const void* res, s32 size) { setBuffer(res, size); }

    /* 802552B8 */ virtual ~JSUMemoryInputStream() {}
    /* 802DC520 */ void setBuffer(void const*, s32);
    /* 802DC534 */ u32 readData(void*, s32);
    /* 802DC5AC */ s32 seekPos(s32, JSUStreamSeekFrom);
    /* 802DC628 */ s32 getLength() const;
    /* 802DC630 */ s32 getPosition() const;

    void* getPointer() const {
        return (u8*)mBuffer + mPosition;
    }

private:
    /* 0x08 */ const void* mBuffer;
    /* 0x0C */ s32 mLength;
    /* 0x10 */ s32 mPosition;
};  // Size = 0x14

class JSUMemoryOutputStream : public JSURandomOutputStream {
public:
    JSUMemoryOutputStream() { setBuffer(NULL, 0); }
    JSUMemoryOutputStream(void* buffer, s32 len) { setBuffer(buffer, len); }

    void setBuffer(void* buffer, s32 len);

    virtual ~JSUMemoryOutputStream() {}
    virtual s32 writeData(const void*, s32);
    virtual s32 getLength() const;
    virtual s32 getPosition() const;
    virtual s32 seek(s32, JSUStreamSeekFrom);
    virtual s32 getAvailable() const;
    virtual s32 seekPos(s32, JSUStreamSeekFrom);

private:
    /* 0x08 */ void* mBuffer;
    /* 0x0C */ s32 mLength;
    /* 0x10 */ s32 mPosition;
};  // Size = 0x14

#endif /* JSUMEMORYSTREAM_H */
