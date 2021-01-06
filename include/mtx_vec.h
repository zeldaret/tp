#ifndef __MTX_VEC_H_
#define __MTX_VEC_H_

#include "dolphin/types.h"

struct Vec {
    float x, y, z;
};

struct Quaternion {
    float x, y, z, w;
};

struct Mtx {
    float data[3][4];
};

extern "C" {
void PSMTXIdentity(Mtx* matrix);
void PSMTXCopy(Mtx* src, Mtx* dst);
void PSMTXConcat(Mtx* src_a, Mtx* src_b, Mtx* dst);
u32 PSMTXInverse(Mtx* src, Mtx* dst);
void PSMTXRotRad(Mtx* matrix, u8 axis, float rad);
void PSMTXRotTrig(Mtx* matrix, u8 axis, float sin, float cos);
double __PSMTXRotAxisRadInternal(double param_1, double param_2, int param_3, int param_4);
void PSMTXRotAxisRad(Mtx* matrix, Vec* axis, float rad);
void PSMTXTrans(Mtx* matrix, float x_trans, float y_trans, float z_trans);
void PSMTXTransApply(Mtx* src, Mtx* dst, float x, float y, float z);
void PSMTXScale(Mtx* matrix, float x_scale, float y_scale, float z_scale);
void PSMTXScaleApply(Mtx* src, Mtx* dst, float x_scale, float y_scale, float z_scale);
void PSMTXQuat(Mtx* matrix, Quaternion* quat);
void C_MTXLookAt(float* param_1, float* param_2, Vec* param_3, float* param_4);
void C_MTXLightPerspective(Mtx* matrix, float fov_y, float aspect, float scale_s, float scale_t,
                           float trans_s, float trans_t);
void C_MTXLightOrtho(Mtx* matrix, float top, float bottom, float left, float right, float scale_s,
                     float scale_t, float trans_s, float trans_t);
void PSMTXMultVec(Mtx* matrix, Vec* src, Vec* dst);
void PSMTXMultVecArray(Mtx* matrix, Vec* src, Vec* dst, u32 count);
void PSMTXMultVecSR(Mtx* matrix, Vec* src, Vec* dst);
void PSMTXMultVecArraySR(Mtx* matrix, Vec* src, Vec* dst, u32 count);
void C_MTXPerspective(Mtx* matrix, float fov_y, float aspect, float near, float far);
void C_MTXOrtho(Mtx* matrix, float top, float bottom, float left, float right, float near,
                float far);
void PSVECAdd(Vec* src_a, Vec* src_b, Vec* dst);
void PSVECSubtract(Vec* a, Vec* b, Vec* dst);
void PSVECScale(Vec* src, Vec* dst, float scale);
void PSVECNormalize(Vec* src, Vec* dst);
float PSVECSquareMag(Vec* vec);
float PSVECMag(Vec* data);
float PSVECDotProduct(Vec* a, Vec* b);
void PSVECCrossProduct(Vec* src_a, Vec* src_b, Vec* dst);
void C_VECHalfAngle(Vec* incident, Vec* line_of_sight, Vec* out_half);
void C_VECReflect(Vec* src, Vec* surface_normal, Vec* dst);
float PSVECSquareDistance(Vec* a, Vec* b);
float PSVECDistance(Vec* a, Vec* b);
void PSQUATMultiply(Quaternion* src_a, Quaternion* src_b, Quaternion* dst);
void C_QUATRotAxisRad(Quaternion* quat, Vec* axis, float rad);
void C_QUATSlerp(Quaternion* p, Quaternion* q, Quaternion* r, float t);
}

#endif