#ifndef JSUINPUTSTREAM_H
#define JSUINPUTSTREAM_H

#include "JSystem/JSupport/JSUIosBase.h"

enum JSUStreamSeekFrom {
    JSUStreamSeekFrom_SET = 0,  // absolute
    JSUStreamSeekFrom_CUR = 1,  // relative
    JSUStreamSeekFrom_END = 2,  // relative to end
};

/**
* @ingroup jsystem-jsupport
* 
*/
class JSUInputStream : public JSUIosBase {
public:
    JSUInputStream() {}
    virtual ~JSUInputStream();

    /* vt[3] */ virtual s32 getAvailable() const = 0;
    /* vt[4] */ virtual s32 skip(s32);
    /* vt[5] */ virtual u32 readData(void*, s32) = 0;

    u32 readU32() {
        u32 val;
        this->read(&val, sizeof(val));
        return val;
    }

    u32 read32b() {
        u32 val;
        this->read(&val, sizeof(val));
        return val;
    }

    s32 readS32() {
        s32 val;
        this->read(&val, sizeof(val));
        return val;
    }

    s16 readS16() {
        s16 val;
        this->read(&val, sizeof(val));
        return val;
    }

    u16 readU16() {
        u16 val;
        this->read(&val, sizeof(val));
        return val;
    }

    u8 readU8() {
        u8 val;
        this->read(&val, sizeof(val));
        return val;
    }

    u8 read8b() {
        u8 val;
        this->read(&val, sizeof(val));
        return val;
    }

    u16 read16b() {
        u16 val;
        this->read(&val, sizeof(val));
        return val;
    }

    JSUInputStream* operator>>(u8& dest) {
        read(&dest, 1);
        return this;
    }

    JSUInputStream* operator>>(s16& dest) {
        read(&dest, 2);
        return this;
    }

    // TODO: return value probably wrong
    /* 802DC298 */ s32 read(void*, s32);
};  // Size = 0x8

// move?
/**
* @ingroup jsystem-jsupport
* 
*/
template <typename T>
T* JSUConvertOffsetToPtr(const void*, const void*);

#endif /* JSUINPUTSTREAM_H */
