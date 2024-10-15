#ifndef J3DSHAPEMTX_H
#define J3DSHAPEMTX_H

#include "dolphin/mtx.h"

class J3DTexMtx;
class J3DTexGenBlock;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DTexMtxObj {
public:
    Mtx& getMtx(u16 idx) { return mpTexMtx[idx]; }
    Mtx44& getEffectMtx(u16 idx) { return mpEffectMtx[idx]; }
    u16 getNumTexMtx() { return mTexMtxNum; }
    void setMtx(u16 idx, Mtx const* mtx) { MTXCopy(*mtx, mpTexMtx[idx]); }

    /* 0x00 */ Mtx* mpTexMtx;
    /* 0x04 */ Mtx44* mpEffectMtx;
    /* 0x08 */ u16 mTexMtxNum;
};

/**
 * @ingroup jsystem-j3d
 * 
 */
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

class J3DShapeMtx;
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
    static u16 sMtxLoadCache[10 + 2 /* padding */];
    static u32 sCurrentPipeline;
    static u8* sCurrentScaleFlag;
    static u8 sNBTFlag;
    static u8 sLODFlag;
    static u32 sTexMtxLoadType;

    static void setCurrentPipeline(u32 pipeline) { sCurrentPipeline = pipeline; }
    static void setLODFlag(u8 flag) { sLODFlag = flag; }
    static u8 getLODFlag() { return sLODFlag; }
    static void resetMtxLoadCache();

protected:
    /* 0x04 */ u16 mUseMtxIndex;
};

class J3DShapeMtxConcatView;
typedef void (J3DShapeMtxConcatView::*J3DShapeMtxConcatView_LoadFunc)(int, u16) const;

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtxConcatView : public J3DShapeMtx {
public:
    J3DShapeMtxConcatView(u16 useMtxIndex)
        : J3DShapeMtx(useMtxIndex)
    {}

    /* 80314730 */ virtual ~J3DShapeMtxConcatView() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMCV'; }
    /* 80313C54 */ virtual void load() const;
    /* 80314598 */ virtual void loadNrmMtx(int, u16) const {}
    /* 80313D28 */ virtual void loadNrmMtx(int, u16, f32 (*)[4]) const;

    /* 80313828 */ void loadMtxConcatView_PNGP(int, u16) const;
    /* 803138C8 */ void loadMtxConcatView_PCPU(int, u16) const;
    /* 8031396C */ void loadMtxConcatView_NCPU(int, u16) const;
    /* 80313A14 */ void loadMtxConcatView_PNCPU(int, u16) const;
    /* 80313AC8 */ void loadMtxConcatView_PNGP_LOD(int, u16) const;

    static J3DShapeMtxConcatView_LoadFunc sMtxLoadPipeline[4];
    static J3DShapeMtxConcatView_LoadFunc sMtxLoadLODPipeline[4];
    static MtxP sMtxPtrTbl[2];
};

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtxYBBoardConcatView : public J3DShapeMtxConcatView {
public:
    J3DShapeMtxYBBoardConcatView(u16 useMtxIndex)
        : J3DShapeMtxConcatView(useMtxIndex)
    {}

    /* 80314520 */ virtual ~J3DShapeMtxYBBoardConcatView() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMYB'; }
    /* 803143E4 */ virtual void load() const;
};

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtxBBoardConcatView : public J3DShapeMtxConcatView {
public:
    J3DShapeMtxBBoardConcatView(u16 useMtxIndex)
        : J3DShapeMtxConcatView(useMtxIndex)
    {}

    /* 803145A4 */ virtual ~J3DShapeMtxBBoardConcatView() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMBB'; }
    /* 803142D4 */ virtual void load() const;
};

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtxMulti : public J3DShapeMtx {
public:
    J3DShapeMtxMulti(u16 useMtxIndex, u16 useMtxNum, u16* useMtxIndexTable)
        : J3DShapeMtx(useMtxIndex)
        , mUseMtxNum(useMtxNum)
        , mUseMtxIndexTable(useMtxIndexTable)
    {}

    /* 803146B0 */ virtual ~J3DShapeMtxMulti() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMML'; }
    /* 80273E08 */ virtual u32 getUseMtxNum() const { return mUseMtxNum; }
    /* 8031459C */ virtual u32 getUseMtxIndex(u16 no) const { return mUseMtxIndexTable[no]; }
    /* 80313E4C */ virtual void load() const;
    /* 80313EEC */ virtual void calcNBTScale(Vec const&, f32 (*)[3][3], f32 (*)[3][3]);

private:
    /* 0x8 */ u16 mUseMtxNum;
    /* 0xC */ u16* mUseMtxIndexTable;
};

/**
 * @ingroup jsystem-j3d
 * 
 */
class J3DShapeMtxMultiConcatView : public J3DShapeMtxConcatView {
public:
    J3DShapeMtxMultiConcatView(u16 useMtxIndex, u16 useMtxNum, u16* useMtxIndexTable)
        : J3DShapeMtxConcatView(useMtxIndex)
        , mUseMtxNum(useMtxNum)
        , mUseMtxIndexTable(useMtxIndexTable)
    {}

    /* 8031461C */ virtual ~J3DShapeMtxMultiConcatView() {}
    /* 803147E0 */ virtual u32 getType() const { return 'SMMC'; }
    /* 80273E08 */ virtual u32 getUseMtxNum() const { return mUseMtxNum; }
    /* 8031459C */ virtual u32 getUseMtxIndex(u16 no) const { return mUseMtxIndexTable[no]; }
    /* 80313FA4 */ virtual void load() const;
    /* 803146AC */ virtual void loadNrmMtx(int, u16) const {}
    /* 8031419C */ virtual void loadNrmMtx(int, u16, f32 (*)[4]) const;

private:
    /* 0x8 */ u16 mUseMtxNum;
    /* 0xC */ u16* mUseMtxIndexTable;
};

#endif /* J3DSHAPEMTX_H */