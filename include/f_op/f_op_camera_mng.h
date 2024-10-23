#ifndef F_F_OP_CAMERA_MNG_H_
#define F_F_OP_CAMERA_MNG_H_

#include "SSystem/SComponent/c_phase.h"
#include "d/d_camera.h"
#include "f_op/f_op_view.h"

typedef struct leafdraw_method_class leafdraw_method_class;

class camera_process_class : public view_class {
public:
    /* 0x210 */ create_tag_class mCreateTag;
    /* 0x224 */ leafdraw_method_class* mpMtd;
    /* 0x228 */ u8 field_0x228[4];
    /* 0x22C */ s8 mPrm1;
    /* 0x22D */ s8 mPrm2;
    /* 0x22E */ s8 mPrm3;
    /* 0x22F */ s8 field_0x22f;
    /* 0x230 */ csXyz mAngle;
    /* 0x238 */ int field_0x238;
};

class camera_class : public camera_process_class {
public:
    /* 0x23C */ int field_0x23c;
    /* 0x240 */ request_of_phase_process_class mPhaseReq;
    /* 0x248 */ dCamera_c mCamera;
};

inline void fopCamM_SetNear(camera_class* i_this, f32 near) {
    i_this->mNear = near;
}

inline void fopCamM_SetFar(camera_class* i_this, f32 far) {
    i_this->mFar = far;
}

inline void fopCamM_SetFovy(camera_class* i_this, f32 fovy) {
    i_this->mFovy = fovy;
}

inline void fopCamM_SetAspect(camera_class* i_this, f32 aspect) {
    i_this->mAspect = aspect;
}

inline void fopCamM_SetEye(camera_class* i_this, f32 x, f32 y, f32 z) {
    i_this->mLookat.mEye.set(x, y, z);
}

inline void fopCamM_SetCenter(camera_class* i_this, f32 x, f32 y, f32 z) {
    i_this->mLookat.mCenter.set(x, y, z);
}

inline void fopCamM_SetBank(camera_class* i_this, s16 bank) {
    i_this->mBank = bank;
}

inline void fopCamM_SetPrm1(camera_class* i_this, int prm1) {
    i_this->mPrm1 = prm1;
}

inline void fopCamM_SetPrm2(camera_class* i_this, int prm2) {
    i_this->mPrm2 = prm2;
}

inline void fopCamM_SetPrm3(camera_class* i_this, int prm3) {
    i_this->mPrm3 = prm3;
}

inline s16 fopCamM_GetAngleX(camera_class* i_camera) {
    return i_camera->mAngle.x;
}

inline s16 fopCamM_GetAngleY(camera_class* i_camera) {
    return i_camera->mAngle.y;
}

inline s16 fopCamM_GetAngleZ(camera_class* i_camera) {
    return i_camera->mAngle.z;
}

inline f32 fopCamM_GetFovy(camera_class* i_camera) {
    return i_camera->mFovy;
}

inline cXyz* fopCamM_GetEye_p(camera_class* i_camera) {
    return &i_camera->mLookat.mEye;
}

inline cXyz* fopCamM_GetCenter_p(camera_class* i_camera) {
    return &i_camera->mLookat.mCenter;
}

u32 fopCamM_Create(int i_cameraIdx, s16 pProcName, void* param_3);
void fopCamM_Management(void);
u32 fopCamM_GetParam(camera_class* pCamera);
void fopCamM_Init(void);

#endif
