#ifndef J3DSHAPEMTX_H
#define J3DSHAPEMTX_H

#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class J3DTexMtx;
class J3DTexGenBlock;

class J3DDifferedTexMtx {
public:
    /* 8031322C */ void loadExecute(f32 const (*)[4]);

    static J3DTexGenBlock* sTexGenBlock;
    static J3DTexMtx* sTexMtxObj;
};

extern u8 struct_804515B0[4];

class J3DShapeMtx {
public:
    /* 803130A8 */ void resetMtxLoadCache();
    /* 803130E4 */ void loadMtxIndx_PNGP(int, u16) const;
    /* 80313128 */ void loadMtxIndx_PCPU(int, u16) const;
    /* 80313188 */ void loadMtxIndx_NCPU(int, u16) const;
    /* 803131D4 */ void loadMtxIndx_PNCPU(int, u16) const;

    /* 80314798 */ virtual ~J3DShapeMtx();
    /* 803147E0 */ virtual void getType() const;
    /* 80273E08 */ virtual bool getUseMtxNum() const;
    /* 8031459C */ virtual void getUseMtxIndex(u16) const;
    /* 80313B94 */ virtual void load() const;
    /* 80313BF0 */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

    static u8 sMtxLoadPipeline[48];
    static u16 sMtxLoadCache[10 + 2 /* padding */];
    static u32 sCurrentPipeline;
    // static J3DScaleFlag sCurrentScaleFlag;
    static u8* sCurrentScaleFlag;
    static u32 sTexMtxLoadType;

    static void setCurrentPipeline(u32 pipeline) { sCurrentPipeline = pipeline; }
    static void setLODFlag(u8 flag) { struct_804515B0[1] = flag; }

private:
    /* 0x04 */ u16 mUseMtxIndex;
};

class J3DShapeMtxConcatView : public J3DShapeMtx {
public:
    /* 80314730 */ virtual ~J3DShapeMtxConcatView();
    /* 8031478C */ virtual void getType() const;
    /* 80313C54 */ virtual void load() const;
    /* 80314598 */ virtual void loadNrmMtx(int, u16) const;
    /* 80313D28 */ virtual void loadNrmMtx(int, u16, f32 (*)[4]) const;

    /* 80313828 */ void loadMtxConcatView_PNGP(int, u16) const;
    /* 803138C8 */ void loadMtxConcatView_PCPU(int, u16) const;
    /* 8031396C */ void loadMtxConcatView_NCPU(int, u16) const;
    /* 80313A14 */ void loadMtxConcatView_PNCPU(int, u16) const;
    /* 80313AC8 */ void loadMtxConcatView_PNGP_LOD(int, u16) const;

    static u8 sMtxLoadPipeline[48];
    static u8 sMtxLoadLODPipeline[48];
    static u8 sMtxPtrTbl[8];
};

class J3DShapeMtxYBBoardConcatView : public J3DShapeMtxConcatView {
public:
    /* 80314520 */ virtual ~J3DShapeMtxYBBoardConcatView();
    /* 8031458C */ virtual void getType() const;
    /* 803143E4 */ virtual void load() const;
};

class J3DShapeMtxBBoardConcatView : public J3DShapeMtxConcatView {
public:
    /* 803145A4 */ virtual ~J3DShapeMtxBBoardConcatView();
    /* 80314610 */ virtual void getType() const;
    /* 803142D4 */ virtual void load() const;
};

class J3DShapeMtxMulti : public J3DShapeMtx {
public:
    /* 803146B0 */ virtual ~J3DShapeMtxMulti();
    /* 8031470C */ virtual void getType() const;
    /* 80314718 */ virtual void getUseMtxNum() const;
    /* 80314720 */ virtual void getUseMtxIndex(u16) const;
    /* 80313E4C */ virtual void load() const;
    /* 80313EEC */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

private:
    /* 0x6 */ u16 mUseMtxNum;
    /* 0x8 */ u16* mUseMtxIndex;
};

class J3DShapeMtxMultiConcatView : public J3DShapeMtx {
public:
    /* 8031461C */ virtual ~J3DShapeMtxMultiConcatView();
    /* 80314688 */ virtual void getType() const;
    /* 80314694 */ virtual void getUseMtxNum() const;
    /* 8031469C */ virtual void getUseMtxIndex(u16) const;
    /* 80313FA4 */ virtual void load() const;
    /* 803146AC */ virtual void loadNrmMtx(int, u16) const;
    /* 8031419C */ virtual void loadNrmMtx(int, u16, f32 (*)[4]) const;

private:
    /* 0x6 */ u16 mUseMtxNum;
    /* 0x8 */ u16* mUseMtxIndex;
};

#endif /* J3DSHAPEMTX_H */
