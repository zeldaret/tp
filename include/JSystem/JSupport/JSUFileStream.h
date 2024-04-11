#ifndef JSUFILESTREAM_H
#define JSUFILESTREAM_H

#include "JSystem/JSupport/JSURandomInputStream.h"

class JKRFile;

/**
* @ingroup jsystem-jsupport
* 
*/
class JSUFileInputStream : public JSURandomInputStream {
public:
    virtual ~JSUFileInputStream() {}

    // TODO: fix return values
    /* 802DC638 */ JSUFileInputStream(JKRFile*);
    /* 802DC67C */ u32 readData(void*, s32);
    /* 802DC74C */ s32 seekPos(s32, JSUStreamSeekFrom);
    /* 802DC82C */ s32 getLength() const;
    /* 802DC85C */ s32 getPosition() const;

private:
    /* 0x08 */ JKRFile* mFile;
    /* 0x0C */ s32 mPosition;
};  // Size = 0x10

#endif /* JSUFILESTREAM_H */
