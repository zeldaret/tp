#ifndef J3DDRAWBUFFER_H
#define J3DDRAWBUFFER_H

#include "JSystem/J3DGraphBase/J3DSys.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

class J3DDrawBuffer;
class J3DPacket;
class J3DDrawPacket;
class J3DMatPacket;
class J3DShapePacket;

typedef void (*J3DDrawBuffer_DrawFunc)(const J3DDrawBuffer* this_);

class J3DDrawBuffer {
public:
    J3DDrawBuffer() { initialize(); }
    ~J3DDrawBuffer();
    void initialize();
    J3DError allocBuffer(u32);
    void frameInit();
    void entryMatSort(J3DMatPacket*);
    void entryMatAnmSort(J3DMatPacket*);
    void entryZSort(J3DMatPacket*);
    void entryModelSort(J3DMatPacket*);
    void entryInvalidSort(J3DMatPacket*);
    bool entryNonSort(J3DMatPacket*);
    bool entryImm(J3DPacket* pPacket, u16 index);
    void draw() const;
    void drawHead() const;
    void drawTail() const;

    inline void calcZRatio();

public:
    J3DPacket** mpBuf;
    u32 mBufSize;
    u32 mDrawType;
    u32 mSortType;
    float mZNear;
    float mZFar;
    float mZRatio;
    Mtx* mpZMtx;
    J3DPacket* mpCallBackPacket;

    static u8 sortFuncTable[72];
    static u8 drawFuncTable[24];
    static u8 entryNum[4 + 4 /* padding */];
};

#endif /* J3DDRAWBUFFER_H */
