#ifndef F_F_OP_CAMERA_MNG_H_
#define F_F_OP_CAMERA_MNG_H_

#include "SSystem/SComponent/c_phase.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "f_op/f_op_draw_tag.h"
#include "f_op/f_op_view.h"
#include "f_pc/f_pc_leaf.h"

class camera_class : public view_class {
public:
    /* 0x170 */ Mtx field_0x170;
    /* 0x1A0 */ Mtx field_0x1a0;
    /* 0x1D0 */ u8 field_0x1d0[0x10];
    /* 0x1E0 */ Mtx field_0x1e0;
    /* 0x210 */ create_tag_class pCreateTag;
    /* 0x224 */ leafdraw_method_class* pMthd;
    /* 0x228 */ u8 field_0x228[4];
    /* 0x22C */ s8 mPrm1;
    /* 0x22D */ s8 mPrm2;
    /* 0x22E */ s8 mPrm3;
    /* 0x22F */ u8 field_0x22f;
    /* 0x230 */ csXyz mAngle;
    /* 0x238 */ int field_0x238;
};

/* void fopCamM_SetNear(camera_class* cam, f32 near) {
    cam->mNear = near;
}

void fopCamM_SetFar(camera_class* cam, f32 far) {
    cam->mFar = far;
}

void fopCamM_SetFovy(camera_class* cam, f32 fovy) {
    cam->mFovy = fovy;
}

void fopCamM_SetAspect(camera_class* cam, f32 aspect) {
    cam->mAspect = aspect;
}

void fopCamM_SetEye(camera_class* cam, f32 x, f32 y, f32 z) {
    cam->field_0xd8.mEye.set(x, y, z);
}

void fopCamM_SetCenter(camera_class* cam, f32 x, f32 y, f32 z) {
    cam->field_0xd8.mCenter.set(x, y, z);
}

void fopCamM_SetBank(camera_class* cam, s16 bank) {
    cam->mBank = bank;
} */

u32 fopCamM_Create(int i_cameraIdx, s16 pProcName, void* param_3);
void fopCamM_Management(void);
u32 fopCamM_GetParam(camera_class* pCamera);
void fopCamM_Init(void);

#endif