#ifndef J3DPACKET_H
#define J3DPACKET_H

#include "JSystem/J3DGraphBase/J3DSys.h"
#include "dolphin/gd/GDBase.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"

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
    J3DDisplayListObj() {
        mpData[0] = NULL;
        mpData[1] = NULL;
        mSize = 0;
        mCapacity = 0;
    }

    J3DError newDisplayList(u32);
    J3DError newSingleDisplayList(u32);
    J3DError single_To_Double();
    void setSingleDisplayList(void*, u32);
    void swapBuffer();
    void callDL() const;
    void beginDL();
    u32 endDL();
    void beginPatch();
    u32 endPatch();

    u8* getDisplayList(int idx) const { return (u8*)mpData[idx]; }
    u32 getDisplayListSize() const { return mSize; }

    static GDLObj sGDLObj;
    static s32 sInterruptFlag;

    /* 0x0 */ void* mpData[2];
    /* 0x8 */ u32 mSize;
    /* 0xC */ u32 mCapacity;
};  // Size: 0x10

class J3DPacket {
public:
    J3DPacket() {
        mpNextSibling = NULL;
        mpFirstChild = NULL;
        mpUserData = NULL;
    }

    void addChildPacket(J3DPacket*);
    J3DPacket* getNextPacket() const { return mpNextSibling; }

    inline void clear() {
        mpNextSibling = NULL;
        mpFirstChild = NULL;
    }

    virtual bool entry(J3DDrawBuffer*);
    virtual void draw();
    virtual ~J3DPacket() {}

public:
    /* 0x04 */ J3DPacket* mpNextSibling;
    /* 0x08 */ J3DPacket* mpFirstChild;
    /* 0x0C */ void* mpUserData;
};  // Size: 0x10

class J3DDrawPacket : public J3DPacket {
public:
    J3DDrawPacket();
    ~J3DDrawPacket();
    J3DError newDisplayList(u32);
    J3DError newSingleDisplayList(u32);
    virtual void draw();

    J3DDisplayListObj* getDisplayListObj() const { return mpDisplayListObj; }
    void setDisplayListObj(J3DDisplayListObj* pObj) { mpDisplayListObj = pObj; }

    void callDL() const { getDisplayListObj()->callDL(); }

    enum {
        LOCKED = 0x01,
    };

    bool checkFlag(u32 flag) const { return (mFlags & flag) != 0; }
    void onFlag(u32 flag) { mFlags |= flag; }
    void offFlag(u32 flag) { mFlags &= ~flag; }
    void lock() { onFlag(LOCKED); }
    void unlock() { offFlag(LOCKED); }
    J3DTexMtx* getTexMtxObj() const { return mpTexMtx; }

public:
    /* 0x10 */ u32 mFlags;
    /* 0x14 */ char mPad0[0x0C];  // unk
    /* 0x20 */ J3DDisplayListObj* mpDisplayListObj;
    /* 0x24 */ J3DTexMtx* mpTexMtx;
};  // Size: 0x28

class J3DShapePacket : public J3DDrawPacket {
public:
    J3DShapePacket();
    u32 calcDifferedBufferSize(u32);
    J3DError newDifferedDisplayList(u32);
    void prepareDraw() const;
    void drawFast();

    virtual ~J3DShapePacket();
    virtual void draw();

    void setShape(J3DShape* pShape) { mpShape = pShape; }
    void setModel(J3DModel* pModel) { mpModel = pModel; }
    void setMtxBuffer(J3DMtxBuffer* pMtxBuffer) { mpMtxBuffer = pMtxBuffer; }
    void setBaseMtxPtr(Mtx* pMtx) { mpBaseMtxPtr = pMtx; }

    J3DShape* getShape() const { return mpShape; }
    J3DModel* getModel() const { return mpModel; }

public:
    /* 0x28 */ J3DShape* mpShape;
    /* 0x2C */ J3DMtxBuffer* mpMtxBuffer;
    /* 0x30 */ Mtx* mpBaseMtxPtr;
    /* 0x34 */ u32 mDiffFlag;
    /* 0x38 */ J3DModel* mpModel;
};  // Size: 0x3C

class J3DMatPacket : public J3DDrawPacket {
public:
    J3DMatPacket();
    void addShapePacket(J3DShapePacket*);
    void beginDiff();
    void endDiff();
    bool isSame(J3DMatPacket*) const;

    J3DShapePacket* getShapePacket() const { return mpShapePacket; }
    void setShapePacket(J3DShapePacket* packet) { mpShapePacket = packet; }
    void setInitShapePacket(J3DShapePacket* packet) { mpInitShapePacket = packet; }

    virtual ~J3DMatPacket();
    virtual bool entry(J3DDrawBuffer*);
    virtual void draw();

public:
    /* 0x28 */ J3DShapePacket* mpInitShapePacket;
    /* 0x2C */ J3DShapePacket* mpShapePacket;
    /* 0x30 */ J3DMaterial* mpMaterial;
    /* 0x34 */ u32 mSortFlags;
    /* 0x38 */ J3DTexture* mpTexture;
    /* 0x3C */ J3DMaterialAnm* mpMaterialAnm;
};  // Size: 0x40

#endif /* J3DPACKET_H */
