#ifndef JSUFILESTREAM_H
#define JSUFILESTREAM_H

#include "JSystem/JSupport/JSURandomInputStream.h"
#include "dolphin/types.h"

struct JKRFile;

class JSUFileInputStream : public JSURandomInputStream {
public:
    virtual ~JSUFileInputStream();

    // TODO: fix return values
    /* 802DC638 */ JSUFileInputStream(JKRFile*);
    /* 802DC67C */ void readData(void*, s32);
    /* 802DC74C */ void seekPos(s32, JSUStreamSeekFrom);
    /* 802DC82C */ s32 getLength() const;
    /* 802DC85C */ s32 getPosition() const;
};

#endif /* JSUFILESTREAM_H */
