#ifndef F_F_OP_VIEW_H_
#define F_F_OP_VIEW_H_

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_leaf.h"

class lookat_class {
public:
    /* 0x00 */ cXyz mEye;
    /* 0x0C */ cXyz mCenter;
    /* 0x18 */ cXyz mUp;
};

struct view_port_class {
    /* 0x00 */ f32 mXOrig;
    /* 0x04 */ f32 mYOrig;
    /* 0x08 */ f32 mWidth;
    /* 0x0C */ f32 mHeight;
    /* 0x10 */ f32 mNearZ;
    /* 0x14 */ f32 mFarZ;
    /* 0x18 */ f32 mScissorXOrig;
    /* 0x1C */ f32 mScissorYOrig;
    /* 0x20 */ f32 mScissorWidth;
    /* 0x24 */ f32 mScissorHeight;
};

struct view_class : public leafdraw_class {
    /* 0x0C0 */ leafdraw_method_class* mpLeafdrawMtd;
    /* 0x0C4 */ u8 field_0xc4[4];
    /* 0x0C8 */ f32 mNear;
    /* 0x0CC */ f32 mFar;
    /* 0x0D0 */ f32 mFovy;
    /* 0x0D4 */ f32 mAspect;
    /* 0x0D8 */ lookat_class mLookat;
    /* 0x0FC */ s16 mBank;
    /* 0x100 */ Mtx44 mProjMtx;
    /* 0x140 */ Mtx mViewMtx;
};

#endif