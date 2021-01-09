#ifndef __JSUFILEINPUTSTREAM_H__
#define __JSUFILEINPUTSTREAM_H__

#include "dolphin/types.h"
#include "JSystem/JSupport/JSURandomInputStream/JSURandomInputStream.h"

class JSUFileInputStream : public JSURandomInputStream {
public:
    virtual ~JSUFileInputStream();
};

#endif
