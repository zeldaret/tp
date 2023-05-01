#ifndef JUTRESOURCE_H
#define JUTRESOURCE_H

#include "JSystem/JKernel/JKRArchive.h"
#include "dolphin/types.h"

class JSUInputStream;

class JUTResReference {
private:
    u8 unk_0x0[0x101];

public:
    JUTResReference() { unk_0x0[0] = 0; }
    /* 802DE078 */ void* getResource(JSUInputStream*, u32, JKRArchive*);
    /* 802DE120 */ void* getResource(void const*, u32, JKRArchive*);
    /* 802DE1BC */ void* getResource(u32, JKRArchive*);
};
// only rough size known due to getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive

#endif /* JUTRESOURCE_H */
