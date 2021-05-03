#ifndef J3DDRAWBUFFER_H
#define J3DDRAWBUFFER_H

#include "dolphin/types.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"

class J3DPacket;
class J3DMatPacket;

class J3DDrawBuffer {
    /* 80324F08 */ void initialize();
    /* 80324F70 */ void allocBuffer(u32);
    /* 80325008 */ ~J3DDrawBuffer();
    /* 80325068 */ void frameInit();
    /* 8032509C */ void entryMatSort(J3DMatPacket*);
    /* 803251E4 */ void entryMatAnmSort(J3DMatPacket*);
    /* 8032529C */ void entryZSort(J3DMatPacket*);
    /* 803253B4 */ void entryModelSort(J3DMatPacket*);
    /* 80325404 */ void entryInvalidSort(J3DMatPacket*);
    /* 80325458 */ void entryNonSort(J3DMatPacket*);
    /* 8032548C */ void entryImm(J3DPacket*, u16);
    /* 803254AC */ void draw() const;
    /* 80325500 */ void drawHead() const;
    /* 80325578 */ void drawTail() const;

    static u8 sortFuncTable[72];
    static u8 drawFuncTable[24];
    static u8 entryNum[4 + 4 /* padding */];
};

#endif /* J3DDRAWBUFFER_H */
