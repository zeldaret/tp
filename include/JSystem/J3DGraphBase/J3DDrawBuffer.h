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

typedef int (J3DDrawBuffer::*sortFunc)(J3DMatPacket*);
typedef void (J3DDrawBuffer::*drawFunc)() const;

class J3DDrawBuffer {
public:
    enum EDrawType {
        DRAW_HEAD,
        DRAW_TAIL,
    };

    enum ESortType {
        SORT_MAT,
        SORT_MAT_ANM,
        SORT_Z,
        SORT_MODEL,
        SORT_INVALID,
        SORT_NON,
    };

    J3DDrawBuffer() { initialize(); }
    ~J3DDrawBuffer();
    void initialize();
    J3DError allocBuffer(u32);
    void frameInit();
    int entryMatSort(J3DMatPacket*);
    int entryMatAnmSort(J3DMatPacket*);
    int entryZSort(J3DMatPacket*);
    int entryModelSort(J3DMatPacket*);
    int entryInvalidSort(J3DMatPacket*);
    int entryNonSort(J3DMatPacket*);
    int entryImm(J3DPacket* pPacket, u16 index);
    void draw() const;
    void drawHead() const;
    void drawTail() const;

    inline void calcZRatio();
    void setNonSort() { mSortType = 5; }
    void setZSort() { mSortType = 2; }

public:
    /* 0x00 */ J3DPacket** mpBuf;
    /* 0x04 */ u32 mBufSize;
    /* 0x08 */ u32 mDrawType;
    /* 0x0C */ u32 mSortType;
    /* 0x10 */ f32 mZNear;
    /* 0x14 */ f32 mZFar;
    /* 0x18 */ f32 mZRatio;
    /* 0x1C */ MtxP mpZMtx;
    /* 0x20 */ J3DPacket* mpCallBackPacket;

    static sortFunc sortFuncTable[6];
    static drawFunc drawFuncTable[2];
    static int entryNum;
};

#endif /* J3DDRAWBUFFER_H */
