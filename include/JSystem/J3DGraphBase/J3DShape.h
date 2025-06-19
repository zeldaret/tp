#ifndef J3DSHAPE_H
#define J3DSHAPE_H

#include "JSystem/J3DGraphBase/J3DShapeDraw.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "dolphin/gx.h"
#include "mtx.h"

class J3DShapeMtx;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DCurrentMtxInfo {
public:
    u32 mMtxIdxRegA;
    u32 mMtxIdxRegB;
};

static inline void J3DFifoWriteCPCmd(u8 cmd, u32 param) {
    GXWGFifo.u8 = GX_LOAD_CP_REG;
    GXWGFifo.u8 = cmd;
    GXWGFifo.u32 = param;
}

static inline void J3DFifoWriteXFCmd(u16 cmd, u16 len) {
    GXWGFifo.u8 = GX_LOAD_XF_REG;
    GXWGFifo.u16 = (len - 1);
    GXWGFifo.u16 = cmd;
}

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DCurrentMtx : public J3DCurrentMtxInfo {
public:
    J3DCurrentMtx() {
        mMtxIdxRegA = 0x3cf3cf00;
        mMtxIdxRegB = 0x00f3cf3c;
    }

    J3DCurrentMtx& operator=(J3DCurrentMtxInfo const& info) {
        mMtxIdxRegA = info.mMtxIdxRegA;
        mMtxIdxRegB = info.mMtxIdxRegB;
        return *this;
    }

    u32 getMtxIdxRegA() const { return mMtxIdxRegA; }
    u32 getMtxIdxRegB() const { return mMtxIdxRegB; }

    inline void load() const {
        J3DFifoWriteCPCmd(0x30, mMtxIdxRegA);  // CP_MATINDEX_A
        J3DFifoWriteCPCmd(0x40, mMtxIdxRegB);  // CP_MATINDEX_B
        J3DFifoWriteXFCmd(0x1018, 2);
        GXCmd1u32(mMtxIdxRegA);
        GXCmd1u32(mMtxIdxRegB);
    }

    void setCurrentTexMtx(u8 param_1, u8 param_2, u8 param_3, u8 param_4,
                          u8 param_5, u8 param_6, u8 param_7, u8 param_8) {
        mMtxIdxRegA = (param_1 << 6) | (param_2 << 0xc) | (param_3 << 0x12) | (param_4 << 0x18);
        mMtxIdxRegB = (param_5) | param_6 << 6 | param_7 << 0xc | param_8 << 0x12;
    }
};

class J3DMaterial;
class J3DVertexData;
class J3DDrawMtxData;

enum J3DShpFlag {
    J3DShpFlag_Visible = 0x0001,
    J3DShpFlag_SkinPosCpu = 0x0004,
    J3DShpFlag_SkinNrmCpu = 0x0008,
    J3DShpFlag_Hidden = 0x0010,
    J3DShpFlag_EnableLod = 0x0100,
    J3DShpFlag_NoMtx = 0x0200,
};

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShape {
public:
    J3DShape() {
        initialize();
    }

    enum {
        kVcdVatDLSize = 0xC0,
    };

    /* 80314B48 */ void initialize();
    /* 80314BB8 */ void addTexMtxIndexInDL(_GXAttr, u32);
    /* 80314CBC */ void addTexMtxIndexInVcd(_GXAttr);
    /* 80314DA8 */ void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);
    /* 80314E28 */ u32 countBumpMtxNum() const;
    /* 80314EEC */ void loadVtxArray() const;
    /* 80314F5C */ bool isSameVcdVatCmd(J3DShape*);
    /* 80314F98 */ void makeVtxArrayCmd();
    /* 80315260 */ void makeVcdVatCmd();
    /* 80315300 */ void loadPreDrawSetting() const;
    /* 80315398 */ void setArrayAndBindPipeline() const;

    /* 803155E0 */ virtual void draw() const;
    /* 8031544C */ virtual void drawFast() const;
    /* 80315628 */ virtual void simpleDraw() const;
    /* 803156AC */ virtual void simpleDrawCache() const;

    void onFlag(u32 flag) { mFlags |= flag; }
    void offFlag(u32 flag) { mFlags &= ~flag; }
    bool checkFlag(u32 flag) const { return !!(mFlags & flag); }
    void setDrawMtxDataPointer(J3DDrawMtxData* pMtxData) { mDrawMtxData = pMtxData; }
    void setVertexDataPointer(J3DVertexData* pVtxData) { mVertexData = pVtxData; }
    void* getVcdVatCmd() { return mVcdVatCmd; }
    void setVcdVatCmd(void* pVatCmd) { mVcdVatCmd = (u8*)pVatCmd; }
    void show() { offFlag(J3DShpFlag_Visible); }
    void hide() { onFlag(J3DShpFlag_Visible); }
    void setCurrentViewNoPtr(u32* pViewNoPtr) { mCurrentViewNo = pViewNoPtr; }
    void setCurrentMtx(J3DCurrentMtx& mtx) { mCurrentMtx = mtx; }
    void setScaleFlagArray(u8* pScaleFlagArray) { mScaleFlagArray = pScaleFlagArray; }
    void setDrawMtx(Mtx** pDrawMtx) { mDrawMtx = pDrawMtx; }
    void setNrmMtx(Mtx33** pNrmMtx) { mNrmMtx = pNrmMtx; }
    void setTexMtxLoadType(u32 type) { mFlags = (mFlags & 0xFFFF0FFF) | type; }
    bool getNBTFlag() const { return mHasNBT; }
    u32 getBumpMtxOffset() const { return mBumpMtxOffset; }
    void setBumpMtxOffset(u32 offset) { mBumpMtxOffset = offset; }
    GXVtxDescList* getVtxDesc() { return mVtxDesc; }

    J3DMaterial* getMaterial() const { return mMaterial; }
    u16 getIndex() const { return mIndex; }
    u32 getTexMtxLoadType() const { return mFlags & 0xF000; }
    u32 getMtxGroupNum() const { return mMtxGroupNum; }
    J3DShapeDraw* getShapeDraw(u16 idx) { return mShapeDraw[idx]; }
    J3DShapeMtx* getShapeMtx(u16 idx) { return mShapeMtx[idx]; }
    Vec* getMin() { return &mMin; }
    Vec* getMax() { return &mMax; }

    static void resetVcdVatCache() { sOldVcdVatCmd = NULL; }

    static void* sOldVcdVatCmd;

private:
    friend struct J3DShapeFactory;
    friend class J3DJointTree;

    /* 0x04 */ J3DMaterial* mMaterial;
    /* 0x08 */ u16 mIndex;
    /* 0x0A */ u16 mMtxGroupNum;
    /* 0x0C */ u32 mFlags;
    /* 0x10 */ f32 mRadius;
    /* 0x14 */ Vec mMin;
    /* 0x20 */ Vec mMax;
    /* 0x2C */ u8* mVcdVatCmd;
    /* 0x30 */ GXVtxDescList* mVtxDesc;
    /* 0x34 */ bool mHasNBT;
    /* 0x38 */ J3DShapeMtx** mShapeMtx;
    /* 0x3C */ J3DShapeDraw** mShapeDraw;
    /* 0x40 */ J3DCurrentMtx mCurrentMtx;
    /* 0x48 */ bool mHasPNMTXIdx;
    /* 0x4C */ J3DVertexData* mVertexData;
    /* 0x50 */ J3DDrawMtxData* mDrawMtxData;
    /* 0x54 */ u8* mScaleFlagArray;
    /* 0x58 */ Mtx** mDrawMtx;
    /* 0x5C */ Mtx33** mNrmMtx;
    /* 0x60 */ u32* mCurrentViewNo;
    /* 0x64 */ u32 mBumpMtxOffset;
};

typedef void (J3DShapeMtx::*J3DShapeMtx_LoadFunc)(int, u16) const;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtx {
public:
    J3DShapeMtx(u16 useMtxIndex)
        : mUseMtxIndex(useMtxIndex)
    {}

    /* 803130E4 */ void loadMtxIndx_PNGP(int, u16) const;
    /* 80313128 */ void loadMtxIndx_PCPU(int, u16) const;
    /* 80313188 */ void loadMtxIndx_NCPU(int, u16) const;
    /* 803131D4 */ void loadMtxIndx_PNCPU(int, u16) const;

    /* 80314798 */ virtual ~J3DShapeMtx() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMTX'; }
    /* 80273E08 */ virtual u32 getUseMtxNum() const { return 1; }
    /* 8031459C */ virtual u32 getUseMtxIndex(u16) const { return mUseMtxIndex; }
    /* 80313B94 */ virtual void load() const;
    /* 80313BF0 */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

    static J3DShapeMtx_LoadFunc sMtxLoadPipeline[4];
    static u16 sMtxLoadCache[10];
    static u32 sCurrentPipeline;
    static u8* sCurrentScaleFlag;
    static u8 sNBTFlag;
    static u8 sLODFlag;
    static u32 sTexMtxLoadType;

    static void setCurrentPipeline(u32 pipeline) {
        J3D_ASSERT(91, pipeline < 4, "Error : range over.");
        sCurrentPipeline = pipeline;
    }
    static void setLODFlag(u8 flag) { sLODFlag = flag; }
    static u32 getLODFlag() { return sLODFlag; }
    static void resetMtxLoadCache();

protected:
    /* 0x04 */ u16 mUseMtxIndex;
};

#endif /* J3DSHAPE_H */
