#ifndef J3DDRAWBUFFER_H_
#define J3DDRAWBUFFER_H_

#include "dolphin/types.h"

class J3DPacket;  // might need to be moved

class J3DDrawBuffer {
public:
    static int entryImm(J3DPacket* pPacket, u16 index);
};

#endif