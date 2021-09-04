#ifndef J3DMODEL_H
#define J3DMODEL_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class J3DModel;
struct J3DSkinDeform {
    /* 8032C9B0 */ void initSkinInfo(J3DModelData*);
    /* 8032CF44 */ void initMtxIndexArray(J3DModelData*);
    /* 8032D378 */ void changeFastSkinDL(J3DModelData*);
    /* 8032D738 */ void transformVtxPosNrm(J3DModelData*);
    /* 8032DFDC */ void deform(J3DModel*);
};

struct J3DDeformData {
    /* 8032E230 */ void offAllFlag(u32);
    /* 8032E274 */ void deform(J3DModel*);
};

class J3DMtxBuffer {
public:
    /* 80326214 */ void initialize();
    /* 80326258 */ void create(J3DModelData*, u32);
    /* 803268D4 */ void calcWeightEnvelopeMtx();
    /* 80326ACC */ void calcDrawMtx(u32, Vec const&, f32 const (&)[3][4]);
    /* 80326D3C */ void calcNrmMtx();
    /* 80326EF0 */ void calcBBoardMtx();
    /* 803283B4 */ ~J3DMtxBuffer();

    Mtx* getAnmMtx(int p1) {
        Mtx* tmp = mMatrices[0];
        return tmp + (p1);
    }

    /* 0x00 */ void* mJointTree;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ Mtx* mMatrices[5];
};

class J3DMtxBuffer;
class J3DVertexBuffer;
class J3DMatPacket;
class J3DShapePacket;
class J3DVtxColorCalc;

class J3DModel {
public:
    /* 800CFFF4 */ void setBaseTRMtx(f32 (*)[4]);
    /* 80327100 */ void initialize();
    /* 80327184 */ void entryModelData(J3DModelData*, u32, u32);
    /* 80327300 */ void createShapePacket(J3DModelData*);
    /* 803273CC */ void createMatPacket(J3DModelData*, u32);
    /* 803275FC */ void newDifferedDisplayList(u32);
    /* 8032767C */ void lock();
    /* 803276B4 */ void unlock();
    /* 803279A0 */ void diff();
    /* 80327A2C */ void setDeformData(J3DDeformData*, u32);
    /* 80327AA0 */ void setSkinDeform(J3DSkinDeform*, u32);
    /* 80327BD4 */ void calcAnmMtx();
    /* 80327C58 */ void calcWeightEnvelopeMtx();
    /* 80328190 */ void calcNrmMtx();
    /* 803281B4 */ void calcBumpMtx();
    /* 803282B8 */ void calcBBoardMtx();
    /* 803282EC */ void prepareShapePackets();
    Mtx* getAnmMtx(int);

    /* 80327CA4 */ void update();
    /* 80327E4C */ void entry();
    /* 80327CF0 */ void calc();
    /* 803276EC */ void calcMaterial();
    /* 80327858 */ void calcDiffTexMtx();
    /* 80327F40 */ void viewCalc();
    /* 80328350 */ ~J3DModel();

    // is there a better way to handle inlines with same name as non-inlines?
    Mtx* i_getAnmMtx(int p1) { return mMtxBuffer->getAnmMtx(p1); }

    /* 0x00 */ void* vtable;
    /* 0x04 */ J3DModelData* mModelData;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ u32 field_0x0c;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ void* mUserArea;
    /* 0x18 */ Vec mBaseScale;
    /* 0x24 */ Mtx mBaseTransformMtx;
    /* 0x54 */ Mtx mInternalView;
    /* 0x84 */ J3DMtxBuffer* mMtxBuffer;
    /* 0x88 */ J3DVertexBuffer* mVertexBuffer;
    /* 0xC0 */ J3DMatPacket* mMatPacket;
    /* 0xC4 */ J3DShapePacket* mShapePacket;
    /* 0xC8 */ J3DDeformData* mDeformData;
    /* 0xCC */ J3DSkinDeform* mSkinDeform;
    /* 0xD0 */ J3DVtxColorCalc* mVtxColorCalc;
    /* 0xD4 */ u8 field_0xd4[8];
};

#endif /* J3DMODEL_H */
