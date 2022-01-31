#ifndef J3DMODEL_H
#define J3DMODEL_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphAnimator/J3DMtxBuffer.h"
#include "JSystem/J3DGraphAnimator/J3DSkinDeform.h"
#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "JSystem/J3DGraphBase/J3DShape.h"
#include "JSystem/J3DGraphBase/J3DVertex.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

enum J3DMdlFlag {
    /* 0x4 */ J3DMdlFlag_SkinPosCpu = 0x4,
    /* 0x8 */ J3DMdlFlag_SkinNrmCpu = 0x8,
};

struct J3DUnkCalc1 {
    virtual void calc(J3DModel* model);
};

struct J3DUnkCalc2 {
    virtual void unk();
    virtual void calc(J3DModelData* mpModelData);
};

typedef void (*J3DCalcCallBack)(J3DModel*, u32 timing);

class J3DModel {
public:
    /* 800CFFF4 */ void setBaseTRMtx(f32 (*)[4]);
    /* 80327100 */ void initialize();
    /* 80327184 */ s32 entryModelData(J3DModelData*, u32, u32);
    /* 80327300 */ s32 createShapePacket(J3DModelData*);
    /* 803273CC */ s32 createMatPacket(J3DModelData*, u32);
    /* 803275FC */ void newDifferedDisplayList(u32);
    /* 8032767C */ void lock();
    /* 803276B4 */ void unlock();
    /* 803279A0 */ void diff();
    /* 80327A2C */ s32 setDeformData(J3DDeformData*, u32);
    /* 80327AA0 */ s32 setSkinDeform(J3DSkinDeform*, u32);
    /* 80327BD4 */ void calcAnmMtx();
    /* 80327C58 */ void calcWeightEnvelopeMtx();
    /* 80328190 */ void calcNrmMtx();
    /* 803281B4 */ void calcBumpMtx();
    /* 803282B8 */ void calcBBoardMtx();
    /* 803282EC */ void prepareShapePackets();
    MtxP getAnmMtx(int);

    /* 80327CA4 */ virtual void update();
    /* 80327E4C */ virtual void entry();
    /* 80327CF0 */ virtual void calc();
    /* 803276EC */ virtual void calcMaterial();
    /* 80327858 */ virtual void calcDiffTexMtx();
    /* 80327F40 */ virtual void viewCalc();
    /* 80328350 */ virtual ~J3DModel();

    J3DModelData* getModelData() { return mModelData; }

    void onFlag(u32 flag) { mFlags |= flag; }
    void offFlag(u32 flag) { mFlags &= ~flag; }
    bool checkFlag(u32 flag) const { return (mFlags & flag) ? true : false; }
    Mtx& getBaseTRMtx() { return mBaseTransformMtx; }
    void i_setBaseTRMtx(Mtx m) { PSMTXCopy(m, mBaseTransformMtx); }
    u32 getMtxCalcMode() const { return mFlags & 0x03; }
    J3DVertexBuffer* getVertexBuffer() const { return (J3DVertexBuffer*)&mVertexBuffer; }
    J3DShapePacket* getShapePacket(u16 idx) const { return &mShapePacket[idx]; }
    Mtx33* getBumpMtxPtr(int idx) const { return mMtxBuffer->getBumpMtxPtr(idx); }
    Mtx33* getNrmMtxPtr() const { return mMtxBuffer->getNrmMtxPtr(); }
    void setBaseScale(const Vec& scale) { mBaseScale = scale; }

    // is there a better way to handle inlines with same name as non-inlines?
    MtxP i_getAnmMtx(int p1) { return mMtxBuffer->getAnmMtx(p1); }

    /* 0x04 */ J3DModelData* mModelData;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u32 mDiffFlag;
    /* 0x10 */ J3DCalcCallBack mCalcCallBack;
    /* 0x14 */ u32 mUserArea;
    /* 0x18 */ Vec mBaseScale;
    /* 0x24 */ Mtx mBaseTransformMtx;
    /* 0x54 */ Mtx mInternalView;
    /* 0x84 */ J3DMtxBuffer* mMtxBuffer;
    /* 0x88 */ J3DVertexBuffer mVertexBuffer;
    /* 0xC0 */ J3DMatPacket* mMatPacket;
    /* 0xC4 */ J3DShapePacket* mShapePacket;
    /* 0xC8 */ J3DDeformData* mDeformData;
    /* 0xCC */ J3DSkinDeform* mSkinDeform;
    /* 0xD0 */ J3DVtxColorCalc* mVtxColorCalc;
    /* 0xD4 */ J3DUnkCalc1* mUnkCalc1;
    /* 0xD8 */ J3DUnkCalc2* mUnkCalc2;
};

#endif /* J3DMODEL_H */
