#ifndef J3DMTXBUFFER_H
#define J3DMTXBUFFER_H

#include "JSystem/J3DGraphAnimator/J3DJointTree.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class J3DModelData;

class J3DMtxBuffer {
public:
    J3DMtxBuffer() { initialize(); }

    /* 80326214 */ void initialize();
    /* 80326258 */ s32 create(J3DModelData*, u32);
    /* 80326364 */ void createAnmMtx(J3DModelData*);
    /* 803263F0 */ void createWeightEnvelopeMtx(J3DModelData*);
    /* 8032648C */ void setNoUseDrawMtx();
    /* 803264B8 */ void createDoubleDrawMtx(J3DModelData*, u32);
    /* 80326664 */ void createBumpMtxArray(J3DModelData*, u32);
    /* 803268D4 */ void calcWeightEnvelopeMtx();
    /* 80326ACC */ void calcDrawMtx(u32, Vec const&, f32 const (&)[3][4]);
    /* 80326D3C */ void calcNrmMtx();
    /* 80326EF0 */ void calcBBoardMtx();

    MtxP getAnmMtx(int idx) const { return *(mMatrices[0] + idx); }

    void setScaleFlag(int idx, u8 flag) { mScaleFlag[idx] = flag; }

    static Mtx sNoUseDrawMtx;
    static Mtx33 sNoUseNrmMtx;
    static Mtx* sNoUseDrawMtxPtr;
    static Mtx33* sNoUseNrmMtxPtr;

private:
    /* 0x00 */ J3DJointTree* mJointTree;
    /* 0x04 */ u8* mScaleFlag;
    /* 0x08 */ u8* mEnvScaleFlag;
    /* 0x0C */ Mtx* mMatrices[5];  // fix this later
    /* 0x20 */ Mtx33* mpNrmMtxPtrPtr;
    /* 0x24 */ Mtx** field_0x24;
    /* 0x28 */ Mtx** mpBumpMtxPtr;
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ u32* mCurrentViewNoPtr;
    /* 0x34 */ Mtx** mUserAnmMtx;

public:
    /* 803283B4 */ virtual ~J3DMtxBuffer();
};

#endif /* J3DMTXBUFFER_H */
