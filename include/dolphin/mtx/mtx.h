#ifndef MTX_H
#define MTX_H

#include "dolphin/mtx/mtx44.h"
#include "dolphin/mtx/quat.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef f32 Mtx[3][4];
typedef f32 Mtx33[3][3];
typedef f32 Mtx23[2][3];
typedef f32 (*MtxP)[4];
typedef const f32 (*CMtxP)[4];  // Change name later?

void PSMTXIdentity(Mtx m);
void PSMTXCopy(const Mtx src, Mtx dst);
void PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);
u32 PSMTXInverse(const Mtx src, Mtx inv);
void PSMTXRotRad(Mtx m, u8 axis, f32 rad);
void PSMTXRotTrig(Mtx m, u8 axis, f32 sin, f32 cos);
f64 __PSMTXRotAxisRadInternal(f64 param_1, f64 param_2, int param_3, int param_4);
void PSMTXRotAxisRad(Mtx m, const Vec* axis, f32 rad);
void PSMTXTrans(Mtx m, f32 x_trans, f32 y_trans, f32 z_trans);
void PSMTXTransApply(const Mtx src, Mtx dst, f32 x, f32 y, f32 z);
void PSMTXScale(Mtx m, f32 x_scale, f32 y_scale, f32 z_scale);
void PSMTXScaleApply(const Mtx src, Mtx dst, f32 x_scale, f32 y_scale, f32 z_scale);
void PSMTXQuat(Mtx m, const Quaternion* q);
void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecArray(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);
void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecArraySR(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);

void C_MTXLookAt(Mtx m, const Vec* camPos, const Vec* camUp, const Vec* target);
void C_MTXLightPerspective(Mtx m, f32 fovY, f32 aspect, f32 scale_s, f32 scale_t, f32 trans_s,
                           f32 trans_t);
void C_MTXLightOrtho(Mtx m, f32 top, f32 bottom, f32 left, f32 right, f32 scale_s, f32 scale_t,
                     f32 trans_s, f32 trans_t);

#ifdef __cplusplus
};
#endif

#endif /* MTX_H */
