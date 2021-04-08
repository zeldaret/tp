#ifndef J3DPACKET_H_
#define J3DPACKET_H_

#include "dolphin/types.h"

class J3DPacket {
public:
    virtual void draw();

private:
    /* 0x04 */ J3DPacket* mNextPacket;
    /* 0x08 */ J3DPacket* mChildPacket;
    /* 0x0C */ u32 mUserArea;
};  // Size = 0x10

#endif