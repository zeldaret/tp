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

    MtxP getAnmMtx(int idx) const { return mpAnmMtx[idx]; }

    void setScaleFlag(int idx, u8 flag) { mScaleFlagArray[idx] = flag; }
    u32* getCurrentViewNoPtr() { return &mCurrentViewNo; }
    u8* getScaleFlagArray() const { return mScaleFlagArray; }
    Mtx** getDrawMtxPtrPtr() const { return mpDrawMtxArr; }
    Mtx* getDrawMtxPtr() const { return mpDrawMtxArr[mCurrentViewNo]; }
    Mtx33** getNrmMtxPtrPtr() const { return mpNrmMtxArr; }
    Mtx33* getNrmMtxPtr() const { return mpNrmMtxArr[mCurrentViewNo]; }
    Mtx33*** getBumpMtxPtrPtr() const { return mpBumpMtxArr; }
    Mtx33* getBumpMtxPtr(int idx) const { return mpBumpMtxArr[idx][mCurrentViewNo]; }

    void swapDrawMtx() {
        Mtx* tmp = mpOldDrawMtxArr[mCurrentViewNo];
        mpOldDrawMtxArr[mCurrentViewNo] = mpDrawMtxArr[mCurrentViewNo];
        mpDrawMtxArr[mCurrentViewNo] = tmp;
    }

    void swapNrmMtx() {
        Mtx33* tmp = mpOldNrmMtxArr[mCurrentViewNo];
        mpOldNrmMtxArr[mCurrentViewNo] = mpNrmMtxArr[mCurrentViewNo];
        mpNrmMtxArr[mCurrentViewNo] = tmp;
    }

    static Mtx sNoUseDrawMtx;
    static Mtx33 sNoUseNrmMtx;
    static Mtx* sNoUseDrawMtxPtr;
    static Mtx33* sNoUseNrmMtxPtr;

private:
    /* 0x00 */ J3DJointTree* mJointTree;
    /* 0x04 */ u8* mScaleFlagArray;
    /* 0x08 */ u8* mEnvScaleFlag;
    /* 0x0C */ Mtx* mpAnmMtx;
    /* 0x10 */ Mtx* mpWeightEnvMtx;
    /* 0x14 */ Mtx** mpOldDrawMtxArr;
    /* 0x18 */ Mtx** mpDrawMtxArr;
    /* 0x1C */ Mtx33** mpOldNrmMtxArr;
    /* 0x20 */ Mtx33** mpNrmMtxArr;
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ Mtx33*** mpBumpMtxArr;
    /* 0x2C */ u32 mFlags;
    /* 0x30 */ u32 mCurrentViewNo;
    /* 0x34 */ Mtx** mUserAnmMtx;

public:
    /* 803283B4 */ virtual ~J3DMtxBuffer();
};

void J3DCalcViewBaseMtx(f32 (*param_0)[4], Vec const& param_1, f32 const (&param_2)[3][4],
                            f32 (*param_3)[4]);

#endif /* J3DMTXBUFFER_H */
