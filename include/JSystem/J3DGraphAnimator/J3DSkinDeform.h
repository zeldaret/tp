#ifndef J3DSKINDEFORM_H
#define J3DSKINDEFORM_H

#include "JSystem/J3DGraphAnimator/J3DCluster.h"
#include "JSystem/J3DGraphAnimator/J3DMtxBuffer.h"
#include "dolphin/types.h"

class J3DModel;
class J3DAnmCluster;
class J3DClusterVertex;
class JUTNameTab;

struct J3DSkinNList {
    /* 8032C6E4 */ J3DSkinNList();
    /* 8032C85C */ void calcSkin_VtxPosF32(f32 (*)[4], void*, void*);
    /* 8032C8E4 */ void calcSkin_VtxNrmF32(f32 (*)[4], void*, void*);

    /* 0x00 */ u16* field_0x0;
    /* 0x04 */ u16* field_0x4;
    /* 0x08 */ f32* field_0x8;
    /* 0x0C */ f32* field_0xc;
    /* 0x10 */ u16 field_0x10;
    /* 0x12 */ u16 field_0x12;
};  // Size: 0x14

class J3DSkinDeform {
public:
    /* 8032C96C */ J3DSkinDeform();
    /* 8032C9B0 */ void initSkinInfo(J3DModelData*);
    /* 8032CF44 */ int initMtxIndexArray(J3DModelData*);
    /* 8032D378 */ void changeFastSkinDL(J3DModelData*);
    /* 8032D5C4 */ void calcNrmMtx(J3DMtxBuffer*);
    /* 8032D738 */ void transformVtxPosNrm(J3DModelData*);
    /* 8032D87C */ void calcAnmInvJointMtx(J3DMtxBuffer*);
    /* 8032D8F4 */ void deformFastVtxPos_F32(J3DVertexBuffer*, J3DMtxBuffer*) const;
    /* 8032DA1C */ void deformFastVtxNrm_F32(J3DVertexBuffer*, J3DMtxBuffer*) const;
    /* 8032DB50 */ void deformVtxPos_F32(J3DVertexBuffer*, J3DMtxBuffer*) const;
    /* 8032DC74 */ void deformVtxPos_S16(J3DVertexBuffer*, J3DMtxBuffer*) const;
    /* 8032DDB8 */ void deformVtxNrm_F32(J3DVertexBuffer*) const;
    /* 8032DEBC */ void deformVtxNrm_S16(J3DVertexBuffer*) const;
    /* 8032DFDC */ void deform(J3DModel*);
    void setNrmMtx(int i, MtxP mtx) {
        J3DPSMtx33CopyFrom34(mtx, (Mtx3P)mNrmMtx[i]);
    }
    Mtx3P getNrmMtx(int i) { return mNrmMtx[i]; }
    void onFlag(u32 flag) { mFlags |= flag; }
    void offFlag(u32 flag) { mFlags &= ~flag; }
    bool checkFlag(u32 flag) { return mFlags & flag; }

    /* 8032E064 */ virtual void deform(J3DVertexBuffer*, J3DMtxBuffer*);
    /* 8032E1B0 */ virtual ~J3DSkinDeform();

    static u16* sWorkArea_WEvlpMixMtx[1024];
    static f32* sWorkArea_WEvlpMixWeight[1024];
    static u16 sWorkArea_MtxReg[1024 + 4 /* padding */];

private:
    /* 0x04 */ u16* mPosData;
    /* 0x08 */ u16* mNrmData;
    /* 0x0C */ Mtx* mPosMtx;
    /* 0x10 */ Mtx33* mNrmMtx;
    /* 0x14 */ u32 mFlags;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ J3DSkinNList* mSkinNList;
};

class J3DDeformer {
public:
    /* 8032E39C */ J3DDeformer(J3DDeformData*);
    /* 8032EAB4 */ void deform(J3DVertexBuffer*, u16, f32*);
    /* 8032E3BC */ void deform(J3DVertexBuffer*, u16);
    /* 8032E4A4 */ void deform_VtxPosF32(J3DVertexBuffer*, J3DCluster*, J3DClusterKey*, f32*);
    /* 8032E60C */ void deform_VtxNrmF32(J3DVertexBuffer*, J3DCluster*, J3DClusterKey*, f32*);
    /* 8032EBCC */ void normalizeWeight(int, f32*);

    void offFlag(u32 i_flag) { mFlags &= ~i_flag; }
    void setAnmCluster(J3DAnmCluster* anm) { mAnmCluster = anm; }

    /* 0x00 */ J3DDeformData* mDeformData;
    /* 0x04 */ J3DAnmCluster* mAnmCluster;
    /* 0x08 */ f32* field_0x8;
    /* 0x0C */ f32* field_0xc;
    /* 0x10 */ u32 mFlags;
};  // Size: 0x14

inline void J3DFillZero32B(register void* param_0, register u32 param_1) {
    asm {
        srwi param_1, param_1, 5
        mtctr param_1
    lbl_8032D948:
    	dcbz 0, param_0
    	addi param_0, param_0, 0x20
    	bdnz lbl_8032D948
    }
}

#endif /* J3DSKINDEFORM_H */
