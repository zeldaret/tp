#ifndef J3DSHAPEMTX_H
#define J3DSHAPEMTX_H

#include "dolphin/types.h"
#include "dolphin/mtx/mtxvec.h"

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
    static u8 sMtxLoadCache[20 + 4 /* padding */];
    static u8 sCurrentPipeline[4];
    static u8 sCurrentScaleFlag[4];
    static u8 sTexMtxLoadType[4];

private:
    /* 0x04 */ u16 mUseMtxIndex;
};

#endif /* J3DSHAPEMTX_H */
