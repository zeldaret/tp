#ifndef MTX_VEC_H_
#define MTX_VEC_H_

#include "dolphin/types.h"

struct Vec {
    float x, y, z;
    float GetX() const {
        return x;
    }
    float GetY() const {
        return y;
    }
    float GetZ() const {
        return z;
    }
};

struct Quaternion {
    float x, y, z, w;
};

struct Mtx {
    float data[3][4];
};

extern "C" {
void PSMTXIdentity(Mtx* matrix);
void PSMTXCopy(const Mtx* src, Mtx* dst);
void PSMTXConcat(const Mtx* src_a, const Mtx* src_b, Mtx* dst);
u32 PSMTXInverse(const Mtx* src, Mtx* dst);
void PSMTXRotRad(Mtx* matrix, u8 axis, float rad);
void PSMTXRotTrig(Mtx* matrix, u8 axis, float sin, float cos);
double __PSMTXRotAxisRadInternal(double param_1, double param_2, int param_3, int param_4);
void PSMTXRotAxisRad(Mtx* matrix, const Vec* axis, float rad);
void PSMTXTrans(Mtx* matrix, float x_trans, float y_trans, float z_trans);
void PSMTXTransApply(const Mtx* src, Mtx* dst, float x, float y, float z);
void PSMTXScale(Mtx* matrix, float x_scale, float y_scale, float z_scale);
void PSMTXScaleApply(const Mtx* src, Mtx* dst, float x_scale, float y_scale, float z_scale);
void PSMTXQuat(Mtx* matrix, const Quaternion* quat);
void C_MTXLookAt(Mtx* param_1, const Vec* param_2, const Vec* param_3, const Vec* param_4);
void C_MTXLightPerspective(Mtx* matrix, float fov_y, float aspect, float scale_s, float scale_t,
                           float trans_s, float trans_t);
void C_MTXLightOrtho(Mtx* matrix, float top, float bottom, float left, float right, float scale_s,
                     float scale_t, float trans_s, float trans_t);
void PSMTXMultVec(const Mtx* matrix, const Vec* src, Vec* dst);
void PSMTXMultVecArray(const Mtx* matrix, const Vec* src, Vec* dst, u32 count);
void PSMTXMultVecSR(const Mtx* matrix, const Vec* src, Vec* dst);
void PSMTXMultVecArraySR(const Mtx* matrix, const Vec* src, Vec* dst, u32 count);
void C_MTXPerspective(Mtx* matrix, float fov_y, float aspect, float near, float far);
void C_MTXOrtho(Mtx* matrix, float top, float bottom, float left, float right, float near,
                float far);
void PSVECAdd(const Vec* src_a, const Vec* src_b, Vec* dst);
void PSVECSubtract(const Vec* a, const Vec* b, Vec* dst);
void PSVECScale(const Vec* src, Vec* dst, float scale);
void PSVECNormalize(const Vec* src, Vec* dst);
float PSVECSquareMag(const Vec* vec);
float PSVECMag(const Vec* data);
float PSVECDotProduct(const Vec* a, const Vec* b);
void PSVECCrossProduct(const Vec* src_a, const Vec* src_b, Vec* dst);
void C_VECHalfAngle(const Vec* incident, const Vec* line_of_sight, Vec* out_half);
void C_VECReflect(const Vec* src, const Vec* surface_normal, Vec* dst);
float PSVECSquareDistance(const Vec* a, const Vec* b);
float PSVECDistance(const Vec* a, const Vec* b);
void PSQUATMultiply(const Quaternion* src_a, const Quaternion* src_b, Quaternion* dst);
void C_QUATRotAxisRad(Quaternion* quat, const Vec* axis, float rad);
void C_QUATSlerp(const Quaternion* p, const Quaternion* q, Quaternion* r, float t);
}

#endif