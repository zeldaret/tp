#ifndef MTX_H
#define MTX_H

#include "dolphin/mtx/quat.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

typedef float Mtx[3][4];
typedef float Mtx33[3][3];
typedef float Mtx23[2][3];
typedef f32 (*MtxP)[4];
typedef const f32 (*CMtxP)[4];  // Change name later?

extern "C" {
void PSMTXIdentity(Mtx matrix);
void PSMTXCopy(const Mtx src, Mtx dst);
void PSMTXConcat(const Mtx src_a, const Mtx src_b, Mtx dst);
u32 PSMTXInverse(const Mtx src, Mtx dst);
void PSMTXRotRad(Mtx matrix, u8 axis, float rad);
void PSMTXRotTrig(Mtx matrix, u8 axis, float sin, float cos);
double __PSMTXRotAxisRadInternal(double param_1, double param_2, int param_3, int param_4);
void PSMTXRotAxisRad(Mtx matrix, const Vec* axis, float rad);
void PSMTXTrans(Mtx matrix, float x_trans, float y_trans, float z_trans);
void PSMTXTransApply(const Mtx src, Mtx dst, float x, float y, float z);
void PSMTXScale(Mtx matrix, float x_scale, float y_scale, float z_scale);
void PSMTXScaleApply(const Mtx src, Mtx dst, float x_scale, float y_scale, float z_scale);
void PSMTXQuat(Mtx matrix, const Quaternion* quat);
void PSMTXMultVec(const Mtx matrix, const Vec* src, Vec* dst);
void PSMTXMultVecSR(const Mtx matrix, const Vec* src, Vec* dst);

void C_MTXLookAt(Mtx param_1, const Vec* param_2, const Vec* param_3, const Vec* param_4);
void C_MTXLightPerspective(Mtx matrix, float fov_y, float aspect, float scale_s, float scale_t,
                           float trans_s, float trans_t);
void C_MTXLightOrtho(Mtx matrix, float top, float bottom, float left, float right, float scale_s,
                     float scale_t, float trans_s, float trans_t);
}

#endif /* MTX_H */
