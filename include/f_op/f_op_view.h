#ifndef F_F_OP_VIEW_H_
#define F_F_OP_VIEW_H_

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_leaf.h"

struct view_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition mBase;
    /* 0x24 */ leafdraw_method_class* mSubMtd; // Subclass methods
    /* 0x28 */ u8 unk28;
    /* 0x29 */ u8 unk29[3]; // pad
    /* 0x2C */ u32 unk2C;
    /* 0x30 */ u32 unk30;
    /* 0x34 */ u32 unk34;
    /* 0x38 */ u32 unk38;
};

class lookat_class {
public:
    /* 0x00 */ cXyz mEye;
    /* 0x0C */ cXyz mCenter;
    /* 0x18 */ cXyz mUp;
};

struct scissor_class {
    /* 0x0 */ f32 mXOrig;
    /* 0x4 */ f32 mYOrig;
    /* 0x8 */ f32 mWidth;
    /* 0xC */ f32 mHeight;
};

struct view_port_class {
    /* 0x00 */ f32 mXOrig;
    /* 0x04 */ f32 mYOrig;
    /* 0x08 */ f32 mWidth;
    /* 0x0C */ f32 mHeight;
    /* 0x10 */ f32 mNearZ;
    /* 0x14 */ f32 mFarZ;
    /* 0x18 */ scissor_class mScissor;
};

struct view_class : public leafdraw_class {
    /* 0x0C0 */ leafdraw_method_class* mSubMtd;
    /* 0x0C4 */ u8 field_0xc4;
    /* 0x0C8 */ f32 mNear;
    /* 0x0CC */ f32 mFar;
    /* 0x0D0 */ f32 mFovy;
    /* 0x0D4 */ f32 mAspect;
    /* 0x0D8 */ lookat_class mLookat;
    /* 0x0FC */ s16 mBank;
    /* 0x100 */ Mtx44 mProjMtx;
    /* 0x140 */ Mtx mViewMtx;
    /* 0x170 */ Mtx mInvViewMtx;
    /* 0x1A0 */ Mtx44 mProjViewMtx;
    /* 0x1E0 */ Mtx mViewMtxNoTrans;
};

#endif