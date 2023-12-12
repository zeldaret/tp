#ifndef J3DMTXBUFFER_H
#define J3DMTXBUFFER_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "dolphin/types.h"

class J3DModelData;

class J3DMtxBuffer {
public:
    J3DMtxBuffer() { initialize(); }

    /* 80326214 */ void initialize();
    /* 80326258 */ s32 create(J3DModelData*, u32);
    /* 80326364 */ s32 createAnmMtx(J3DModelData*);
    /* 803263F0 */ s32 createWeightEnvelopeMtx(J3DModelData*);
    /* 8032648C */ s32 setNoUseDrawMtx();
    /* 803264B8 */ s32 createDoubleDrawMtx(J3DModelData*, u32);
    /* 80326664 */ s32 createBumpMtxArray(J3DModelData*, u32);
    /* 803268D4 */ void calcWeightEnvelopeMtx();
    /* 80326ACC */ void calcDrawMtx(u32, Vec const&, f32 const (&)[3][4]);
    /* 80326D3C */ void calcNrmMtx();
    /* 80326EF0 */ void calcBBoardMtx();

    MtxP getAnmMtx(int idx) const { return mpAnmMtx[idx]; }
    void setAnmMtx(int i, Mtx m) { MTXCopy(m, (MtxP)mpAnmMtx[i]); }
    MtxP getWeightAnmMtx(int idx) const { return mpWeightEvlpMtx[idx]; }
    MtxP getUserAnmMtx(int idx) const { return mpUserAnmMtx[idx]; }

    void setScaleFlag(int idx, u8 flag) { mpScaleFlagArr[idx] = flag; }
    u32* getCurrentViewNoPtr() { return &mCurrentViewNo; }
    u8* getScaleFlagArray() const { return mpScaleFlagArr; }
    u8 getScaleFlag(int idx) const { return mpScaleFlagArr[idx]; }
    u8 getEnvScaleFlag(int idx) const { return mpEvlpScaleFlagArr[idx]; }
    Mtx** getDrawMtxPtrPtr() const { return mpDrawMtxArr[1]; }
    Mtx* getDrawMtxPtr() const { return mpDrawMtxArr[1][mCurrentViewNo]; }
    Mtx* getDrawMtx(u16 idx) const { return &mpDrawMtxArr[1][mCurrentViewNo][idx]; }
    Mtx33** getNrmMtxPtrPtr() const { return mpNrmMtxArr[1]; }
    Mtx33* getNrmMtxPtr() const { return mpNrmMtxArr[1][mCurrentViewNo]; }
    Mtx33* getNrmMtx(u16 idx) const { return &mpNrmMtxArr[1][mCurrentViewNo][idx]; }
    Mtx33*** getBumpMtxPtrPtr() const { return mpBumpMtxArr[1]; }
    Mtx33* getBumpMtxPtr(int idx) const { return mpBumpMtxArr[1][idx][mCurrentViewNo]; }
    J3DJointTree* getJointTree() const { return mJointTree; }

    void swapDrawMtx() {
        Mtx* tmp = mpDrawMtxArr[0][mCurrentViewNo];
        mpDrawMtxArr[0][mCurrentViewNo] = mpDrawMtxArr[1][mCurrentViewNo];
        mpDrawMtxArr[1][mCurrentViewNo] = tmp;
    }

    void swapNrmMtx() {
        Mtx33* tmp = mpNrmMtxArr[0][mCurrentViewNo];
        mpNrmMtxArr[0][mCurrentViewNo] = mpNrmMtxArr[1][mCurrentViewNo];
        mpNrmMtxArr[1][mCurrentViewNo] = tmp;
    }

    static Mtx sNoUseDrawMtx;
    static Mtx33 sNoUseNrmMtx;
    static Mtx* sNoUseDrawMtxPtr;
    static Mtx33* sNoUseNrmMtxPtr;

private:
    /* 0x00 */ J3DJointTree* mJointTree;
    /* 0x04 */ u8* mpScaleFlagArr;
    /* 0x08 */ u8* mpEvlpScaleFlagArr;
    /* 0x0C */ Mtx* mpAnmMtx;
    /* 0x10 */ Mtx* mpWeightEvlpMtx;
    /* 0x14 */ Mtx** mpDrawMtxArr[2];
    /* 0x1C */ Mtx33** mpNrmMtxArr[2];
    /* 0x28 */ Mtx33*** mpBumpMtxArr[2];
    /* 0x2C */ u32 mFlags;
    /* 0x30 */ u32 mCurrentViewNo;
    /* 0x34 */ Mtx* mpUserAnmMtx;

public:
    /* 803283B4 */ virtual ~J3DMtxBuffer();
};

void J3DCalcViewBaseMtx(f32 (*param_0)[4], Vec const& param_1, f32 const (&param_2)[3][4],
                            f32 (*param_3)[4]);

#endif /* J3DMTXBUFFER_H */
