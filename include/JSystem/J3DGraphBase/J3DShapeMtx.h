#ifndef J3DSHAPEMTX_H
#define J3DSHAPEMTX_H

#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

class J3DTexMtx;
class J3DTexGenBlock;

class J3DTexMtxObj {
public:
    Mtx& getMtx(u16 idx) { return mpTexMtx[idx]; }

private:
    /* 0x00 */ Mtx *mpTexMtx;
};

class J3DDifferedTexMtx {
public:
    /* 8031322C */ static void loadExecute(f32 const (*)[4]);

    static inline void load(Mtx m) {
        if (sTexGenBlock != NULL)
            loadExecute(m);
    }

    static J3DTexGenBlock* sTexGenBlock;
    static J3DTexMtxObj* sTexMtxObj;
};

extern u8 struct_804515B0;
extern u8 struct_804515B1;
extern u8 struct_804515B2;
extern u8 struct_804515B3;

class J3DShapeMtx {
public:
    J3DShapeMtx(u16 useMtxIndex)
        : mUseMtxIndex(useMtxIndex)
    {}

    /* 803130A8 */ void resetMtxLoadCache();
    /* 803130E4 */ void loadMtxIndx_PNGP(int, u16) const;
    /* 80313128 */ void loadMtxIndx_PCPU(int, u16) const;
    /* 80313188 */ void loadMtxIndx_NCPU(int, u16) const;
    /* 803131D4 */ void loadMtxIndx_PNCPU(int, u16) const;

    /* 80314798 */ virtual ~J3DShapeMtx();
    /* 803147E0 */ virtual u32 getType() const;
    /* 80273E08 */ virtual u32 getUseMtxNum() const;
    /* 8031459C */ virtual u32 getUseMtxIndex(u16) const;
    /* 80313B94 */ virtual void load() const;
    /* 80313BF0 */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

    static u8 sMtxLoadPipeline[48];
    static u16 sMtxLoadCache[10 + 2 /* padding */];
    static u32 sCurrentPipeline;
    // static J3DScaleFlag sCurrentScaleFlag;
    static u8* sCurrentScaleFlag;
    static u32 sTexMtxLoadType;

    static void setCurrentPipeline(u32 pipeline) { sCurrentPipeline = pipeline; }
    static void setLODFlag(u8 flag) { struct_804515B1 = flag; }
    static u8 getLODFlag() { return struct_804515B1; }
    static void resetMtxLoadCache();

private:
    /* 0x04 */ u16 mUseMtxIndex;
};

class J3DShapeMtxConcatView : public J3DShapeMtx {
public:
    J3DShapeMtxConcatView(u16 useMtxIndex)
        : J3DShapeMtx(useMtxIndex)
    {}

    /* 80314730 */ virtual ~J3DShapeMtxConcatView();
    /* 803147E0 */ virtual u32 getType() const;
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
    J3DShapeMtxYBBoardConcatView(u16 useMtxIndex)
        : J3DShapeMtxConcatView(useMtxIndex)
    {}

    /* 80314520 */ virtual ~J3DShapeMtxYBBoardConcatView();
    /* 803147E0 */ virtual u32 getType() const;
    /* 803143E4 */ virtual void load() const;
};

class J3DShapeMtxBBoardConcatView : public J3DShapeMtxConcatView {
public:
    J3DShapeMtxBBoardConcatView(u16 useMtxIndex)
        : J3DShapeMtxConcatView(useMtxIndex)
    {}

    /* 803145A4 */ virtual ~J3DShapeMtxBBoardConcatView();
    /* 803147E0 */ virtual u32 getType() const;
    /* 803142D4 */ virtual void load() const;
};

class J3DShapeMtxMulti : public J3DShapeMtx {
public:
    J3DShapeMtxMulti(u16 useMtxIndex, u16 useMtxNum, u16* useMtxIndexTable)
        : J3DShapeMtx(useMtxIndex)
        , mUseMtxNum(useMtxNum)
        , mUseMtxIndexTable(useMtxIndexTable)
    {}

    /* 803146B0 */ virtual ~J3DShapeMtxMulti();
    /* 803147E0 */ virtual u32 getType() const;
    /* 80273E08 */ virtual u32 getUseMtxNum() const;
    /* 8031459C */ virtual u32 getUseMtxIndex(u16) const;
    /* 80313E4C */ virtual void load() const;
    /* 80313EEC */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

private:
    /* 0x6 */ u16 mUseMtxNum;
    /* 0x8 */ u16* mUseMtxIndexTable;
};

class J3DShapeMtxMultiConcatView : public J3DShapeMtxConcatView {
public:
    J3DShapeMtxMultiConcatView(u16 useMtxIndex, u16 useMtxNum, u16* useMtxIndexTable)
        : J3DShapeMtxConcatView(useMtxIndex)
        , mUseMtxNum(useMtxNum)
        , mUseMtxIndexTable(useMtxIndexTable)
    {}

    /* 8031461C */ virtual ~J3DShapeMtxMultiConcatView();
    /* 803147E0 */ virtual u32 getType() const;
    /* 80273E08 */ virtual u32 getUseMtxNum() const;
    /* 8031459C */ virtual u32 getUseMtxIndex(u16) const;
    /* 80313FA4 */ virtual void load() const;
    /* 803146AC */ virtual void loadNrmMtx(int, u16) const;
    /* 8031419C */ virtual void loadNrmMtx(int, u16, f32 (*)[4]) const;

private:
    /* 0x6 */ u16 mUseMtxNum;
    /* 0x8 */ u16* mUseMtxIndexTable;
};

#endif /* J3DSHAPEMTX_H */