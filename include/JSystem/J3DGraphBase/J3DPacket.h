#ifndef J3DPACKET_H
#define J3DPACKET_H

#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"
#include "JSystem/J3DGraphBase/J3DSys.h"

class J3DMatPacket;

class J3DDrawBuffer;
class J3DMaterial;
class J3DMaterialAnm;
class J3DModel;
class J3DMtxBuffer;
class J3DShape;
class J3DTexMtx;
class J3DTexture;

class J3DDisplayListObj {
public:
    J3DError newDisplayList(u32);
    J3DError newSingleDisplayList(u32);
    J3DError single_To_Double();
    void setSingleDisplayList(void*, u32);
    void swapBuffer();
    void callDL() const;
    void beginDL();
    void endDL();
    void beginPatch();
    void endPatch();

    static u8 sGDLObj[16];
    static u8 sInterruptFlag[4 + 4 /* padding */];

    void* mpData[2];
    u32 mSize;
    u32 mCapacity;
};

class J3DPacket {
public:
    void addChildPacket(J3DPacket* pChild);

    inline void clear() {
        mpNextSibling = NULL;
        mpFirstChild = NULL;
    }

    virtual bool entry(J3DDrawBuffer* pDrawBuffer);
    virtual void draw();
    virtual ~J3DPacket();

public:
    J3DPacket* mpNextSibling;
    J3DPacket* mpFirstChild;
};

class J3DDrawPacket : public J3DPacket {
public:
    J3DDrawPacket();
    ~J3DDrawPacket();
    J3DError newDisplayList(u32);
    J3DError newSingleDisplayList(u32);
    virtual void draw();

public:
    void* mpUserData;
    int mFlags;
    char mPad0[0x0C];  // unk
    J3DDisplayListObj* mpDisplayListObj;
    J3DTexMtx* mpTexMtx;
};

class J3DShapePacket : public J3DDrawPacket {
public:
    J3DShapePacket();
    void calcDifferedBufferSize(u32);
    void newDifferedDisplayList(u32);
    void prepareDraw() const;
    void drawFast();

    virtual ~J3DShapePacket();
    virtual void draw();

public:
    J3DShape* mpShape;
    J3DMtxBuffer* mpMtxBuffer;
    Mtx* mpViewMtx;
    u32 mDiffFlag;
    J3DModel* mpModel;
};

class J3DMatPacket : public J3DDrawPacket {
public:
    J3DMatPacket();
    void addShapePacket(J3DShapePacket*);
    void beginDiff();
    void endDiff();
    void isSame(J3DMatPacket*) const;

    virtual ~J3DMatPacket();
    virtual bool entry(J3DDrawBuffer* pDrawBuffer);
    virtual void draw();

public:
    J3DShapePacket* mpShapePacket;
    J3DShapePacket* mpFirstShapePacket;
    J3DMaterial* mpMaterial;
    s32 mSortFlags;
    J3DTexture* mpTexture;
    J3DMaterialAnm* mpMaterialAnm;
};

#endif /* J3DPACKET_H */
