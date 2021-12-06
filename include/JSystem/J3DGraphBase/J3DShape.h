#ifndef J3DSHAPE_H
#define J3DSHAPE_H

#include "JSystem/J3DGraphBase/J3DShapeDraw.h"
#include "JSystem/J3DGraphBase/J3DShapeMtx.h"
#include "dolphin/gx/GX.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class J3DCurrentMtxInfo {
public:
    u32 mMtxIdxRegA;
    u32 mMtxIdxRegB;
};

class J3DCurrentMtx : public J3DCurrentMtxInfo {
public:
    u32 getMtxIdxRegA() const { return mMtxIdxRegA; }
    u32 getMtxIdxRegB() const { return mMtxIdxRegB; }
};

class J3DMaterial;
class J3DVertexData;
class J3DDrawMtxData;

enum J3DShpFlag {
    J3DShpFlag_SkinPosCpu = 0x0004,
    J3DShpFlag_SkinNrmCpu = 0x0008,
    J3DShpFlag_Hidden = 0x0010,
    J3DShpFlag_EnableLod = 0x0100,
};

class J3DShape {
public:
    /* 80314B48 */ void initialize();
    /* 80314BB8 */ void addTexMtxIndexInDL(_GXAttr, u32);
    /* 80314CBC */ void addTexMtxIndexInVcd(_GXAttr);
    /* 80314DA8 */ void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);
    /* 80314E28 */ void countBumpMtxNum() const;
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
    bool checkFlag(u32 flag) { return !!(mFlags & flag); }
    void setDrawMtxDataPointer(J3DDrawMtxData* pMtxData) { mDrawMtxData = pMtxData; }
    void setVertexDataPointer(J3DVertexData* pVtxData) { mVertexData = pVtxData; }
    void* getVcdVatCmd() const { return mVcdVatCmd; }
    void setVcdVatCmd(void* pVatCmd) { mVcdVatCmd = pVatCmd; }
    void show() { offFlag(1); }
    void hide() { onFlag(1); }
    void setCurrentViewNoPtr(u32* pViewNoPtr) { mCurrentViewNo = pViewNoPtr; }
    void setScaleFlagArray(u8* pScaleFlagArray) { mScaleFlagArray = pScaleFlagArray; }
    void setDrawMtx(Mtx** pDrawMtx) { mDrawMtx = pDrawMtx; }
    void setNrmMtx(Mtx33** pNrmMtx) { mNrmMtx = pNrmMtx; }
    bool getNBTFlag() const { return mHasNBT; }
    u32 getBumpMtxOffset() const { return mBumpMtxOffset; }

    inline J3DMaterial* getMaterial() const { return mMaterial; }
    inline u32 getPipeline() const { return (mFlags >> 2) & 7; }
    inline u32 getTexMtxLoadType() const { return mFlags & 0xF000; }
    static void resetVcdVatCache() { sOldVcdVatCmd = NULL; }

    static void* sOldVcdVatCmd;

private:
    /* 0x04 */ J3DMaterial* mMaterial;
    /* 0x08 */ u16 mIndex;
    /* 0x0A */ u16 mMtxGroupNum;
    /* 0x0C */ u32 mFlags;
    /* 0x10 */ f32 mRadius;
    /* 0x14 */ Vec mMin;
    /* 0x20 */ Vec mMax;
    /* 0x2C */ void* mVcdVatCmd;
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

#endif /* J3DSHAPE_H */
