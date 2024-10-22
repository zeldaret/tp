#ifndef J3DDRAWBUFFER_H
#define J3DDRAWBUFFER_H

#include "JSystem/J3DGraphBase/J3DSys.h"

// matches debug
inline f32 J3DCalcZValue(register MtxP m, register Vec v) {
    register f32 temp_f4;
    register f32 out;
    register f32 temp_f0;
    register f32 temp_f2;
    register f32 temp_f1 = 1.0f;

    // clang-format off
    asm {
        psq_l temp_f0, 0(v), 0, 0 /* qr0 */
        lfs temp_f2, 8(v)
        psq_l temp_f4, 32(m), 0, 0 /* qr0 */
        psq_l out, 40(m), 0, 0 /* qr0 */
        ps_merge00 temp_f2, temp_f2, temp_f1
        ps_mul temp_f4, temp_f0, temp_f4
        ps_madd out, temp_f2, out, temp_f4
        ps_sum0 out, out, out, out
    }
    // clang-format on

    return out;
}

class J3DDrawBuffer;
class J3DPacket;
class J3DDrawPacket;
class J3DMatPacket;
class J3DShapePacket;

typedef int (J3DDrawBuffer::*sortFunc)(J3DMatPacket*);
typedef void (J3DDrawBuffer::*drawFunc)() const;

/**
 * @ingroup jsystem-j3d
 * 
 */
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

    u32 getEntryTableSize() { return mBufSize; }

    inline void calcZRatio();
    void setNonSort() { mSortType = 5; }
    void setZSort() { mSortType = 2; }
    void setZMtx(MtxP mtx) { mpZMtx = mtx; }

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
