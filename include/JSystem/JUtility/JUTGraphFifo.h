#ifndef JUTGRAPHFIFO_H
#define JUTGRAPHFIFO_H

#include "dolphin/gx/GX.h"

class JUTGraphFifo {
public:
    /* 802DEB58 */ JUTGraphFifo(u32);

    /* 802DEC34 */ virtual ~JUTGraphFifo();

    void getGpStatus() {
        GXGetGPStatus((GXBool*)&mGpStatus[0], (GXBool*)&mGpStatus[1], (GXBool*)&mGpStatus[2],
                      (GXBool*)&mGpStatus[3], (GXBool*)&mGpStatus[4]);
    }

    bool isGPActive() {
        getGpStatus();
        return mGpStatus[2] == false;
    }

    void save() { GXSaveCPUFifo(this->mFifo); }

    static JUTGraphFifo* sCurrentFifo;
    static bool mGpStatus[5];

private:
    /* 0x04 */ GXFifoObj* mFifo;
    /* 0x08 */ void* mBase;
    /* 0x0C */ u32 mSize;
    /* 0x10 */ u8 field_0x10[0xC];
};

inline void JUTCreateFifo(u32 bufSize) { new JUTGraphFifo(bufSize); }

#endif /* JUTGRAPHFIFO_H */
