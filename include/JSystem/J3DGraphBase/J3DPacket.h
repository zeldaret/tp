#ifndef J3DPACKET_H
#define J3DPACKET_H

#include "JSystem/J3DGraphBase/J3DSys.h"
#include "dolphin/gd/GDBase.h"
#include "dolphin/types.h"

class J3DMatPacket;

class J3DDrawBuffer;
class J3DMaterial;
class J3DMaterialAnm;
class J3DModel;
class J3DMtxBuffer;
class J3DShape;
class J3DTexMtx;
class J3DTexMtxObj;
class J3DTexture;

inline u32 getDiffFlag_LightObjNum(u32 param_1) {
    return (param_1 & 0xf0) >> 4;
}

inline u32 getDiffFlag_TexGenNum(u32 param_1) {
    return (param_1 & 0xf00) >> 8;
}

inline int calcDifferedBufferSize_TexMtxSize(int param_1) {
  return param_1 * 0x35;
}

inline int calcDifferedBufferSize_TexGenSize(int param_1) {
    return param_1 * 0x3d + 10;
}

inline u32 getDiffFlag_TexNoNum(u32 param_1) {
    return (param_1 & 0xf0000) >> 0x10;
}

inline int calcDifferedBufferSize_TexNoSize(int param_1) {
    return param_1 * 0x37;
}

inline u32 calcDifferedBufferSize_TexNoAndTexCoordScaleSize(u32 param_1) {
    u32 res = param_1 * 0x37;
    res += ((param_1 + 1) >> 1) * 0x37;
    return res;
}

inline u32 getDiffFlag_TevStageNum(u32 param_1) {
    return (param_1 & 0xf00000) >> 0x14;
}

inline int calcDifferedBufferSize_TevStageSize(int param_1) {
    return param_1 * 10;
}

inline int calcDifferedBufferSize_TevStageDirectSize(int param_1) {
    return param_1 * 5;
}

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
        mpNextPacket = NULL;
        mpFirstChild = NULL;
        mpUserData = NULL;
    }

    void addChildPacket(J3DPacket*);
    
    J3DPacket* getNextPacket() const { return mpNextPacket; }
    void setNextPacket(J3DPacket* i_packet) { mpNextPacket = i_packet; }

    void drawClear() {
        mpNextPacket = NULL;
        mpFirstChild = NULL;
    }

    void setUserArea(u32 area) { mpUserData = (void*)area; }

    virtual int entry(J3DDrawBuffer*);
    virtual void draw();
    virtual ~J3DPacket() {}

public:
    /* 0x04 */ J3DPacket* mpNextPacket;
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

    void beginPatch() { mpDisplayListObj->beginPatch(); }
    void endPatch() { mpDisplayListObj->endPatch(); }

    void callDL() const { getDisplayListObj()->callDL(); }

    enum {
        LOCKED = 0x01,
    };

    bool checkFlag(u32 flag) const { return (mFlags & flag) != 0; }
    void onFlag(u32 flag) { mFlags |= flag; }
    void offFlag(u32 flag) { mFlags &= ~flag; }
    void lock() { onFlag(LOCKED); }
    void unlock() { offFlag(LOCKED); }
    J3DTexMtxObj* getTexMtxObj() const { return mpTexMtxObj; }
    bool isLocked() const { return checkFlag(1); }

public:
    /* 0x10 */ u32 mFlags;
    /* 0x14 */ char mPad0[0x0C];  // unk
    /* 0x20 */ J3DDisplayListObj* mpDisplayListObj;
    /* 0x24 */ J3DTexMtxObj* mpTexMtxObj;
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
    Mtx* getBaseMtxPtr() const { return mpBaseMtxPtr; }

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

    J3DMaterial* getMaterial() const { return mpMaterial; }
    J3DShapePacket* getShapePacket() const { return mpShapePacket; }
    void setShapePacket(J3DShapePacket* packet) { mpShapePacket = packet; }
    void setInitShapePacket(J3DShapePacket* packet) { mpInitShapePacket = packet; }
    void setMaterialAnmID(J3DMaterialAnm* materialAnm) { mpMaterialAnm = materialAnm; }
    bool isChanged() const { return mDiffFlag & 0x80000000; }
    bool isEnabled_Diff() const { return mpInitShapePacket->getDisplayListObj() != NULL; }

    virtual ~J3DMatPacket();
    virtual int entry(J3DDrawBuffer*);
    virtual void draw();

public:
    /* 0x28 */ J3DShapePacket* mpInitShapePacket;
    /* 0x2C */ J3DShapePacket* mpShapePacket;
    /* 0x30 */ J3DMaterial* mpMaterial;
    /* 0x34 */ u32 mDiffFlag;
    /* 0x38 */ J3DTexture* mpTexture;
    /* 0x3C */ J3DMaterialAnm* mpMaterialAnm;
};  // Size: 0x40

#endif /* J3DPACKET_H */
