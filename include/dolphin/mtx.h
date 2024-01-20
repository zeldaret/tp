#ifndef MTX_H
#define MTX_H

#include "dolphin/mtx/mtx44.h"
#include "dolphin/mtx/quat.h"
#include "dolphin/mtx/vec.h"

#ifdef __cplusplus
extern "C" {
#endif

// ====== MATRIX ====== //

#define MTXDegToRad(a) ((a)*0.01745329252f)

typedef f32 Mtx[3][4];
typedef f32 Mtx33[3][3];
typedef f32 Mtx23[2][3];
typedef f32 (*MtxP)[4];
typedef f32 (*Mtx3P)[3];
typedef const f32 (*CMtxP)[4];  // Change name later?

void PSMTXIdentity(Mtx m);
void PSMTXCopy(const Mtx src, Mtx dst);
void PSMTXConcat(const Mtx a, const Mtx b, Mtx ab);
u32 PSMTXInverse(const Mtx src, Mtx inv);
void PSMTXRotRad(Mtx m, char axis, f32 rad);
void PSMTXRotTrig(Mtx m, char axis, f32 sin, f32 cos);
void PSMTXRotAxisRad(Mtx m, const Vec* axis, f32 rad);
void PSMTXTrans(Mtx m, f32 x, f32 y, f32 z);
void PSMTXTransApply(const Mtx src, Mtx dst, f32 x, f32 y, f32 z);
void PSMTXScale(Mtx m, f32 x, f32 y, f32 z);
void PSMTXScaleApply(const Mtx src, Mtx dst, f32 x, f32 y, f32 z);
void PSMTXQuat(Mtx m, const PSQuaternion* q);

void C_MTXLookAt(Mtx m, const Vec* camPos, const Vec* camUp, const Vec* target);
void C_MTXLightPerspective(Mtx m, f32 fovY, f32 aspect, f32 scale_s, f32 scale_t, f32 trans_s,
                           f32 trans_t);
void C_MTXLightOrtho(Mtx m, f32 top, f32 bottom, f32 left, f32 right, f32 scale_s, f32 scale_t,
                     f32 trans_s, f32 trans_t);

inline void C_MTXRotAxisRad(Mtx m, const Vec* axis, f32 rad) {
    PSMTXRotAxisRad(m, axis, rad);
}

/* When compiling in debug mode, use C implementations */
#ifdef DEBUG
// TODO: Add debug rom C implementations
/* #define MTXIdentity C_MTXIdentity
#define MTXCopy C_MTXCopy
#define MTXConcat C_MTXConcat
#define MTXInverse C_MTXInverse
#define MTXRotRad C_MTXRotRad
#define MTXRotTrig C_MTXRotTrig
#define MTXRotAxisRad C_MTXRotAxisRad
#define MTXTrans C_MTXTrans
#define MTXTransApply C_MTXTransApply
#define MTXScale C_MTXScale
#define MTXScaleApply C_MTXScaleApply
#define MTXQuat C_MTXQuat */

#define MTXIdentity PSMTXIdentity
#define MTXCopy PSMTXCopy
#define MTXConcat PSMTXConcat
#define MTXInverse PSMTXInverse
#define MTXRotRad PSMTXRotRad
#define MTXRotTrig PSMTXRotTrig
#define MTXRotAxisRad PSMTXRotAxisRad
#define MTXTrans PSMTXTrans
#define MTXTransApply PSMTXTransApply
#define MTXScale PSMTXScale
#define MTXScaleApply PSMTXScaleApply
#define MTXQuat PSMTXQuat
#else
#define MTXIdentity PSMTXIdentity
#define MTXCopy PSMTXCopy
#define MTXConcat PSMTXConcat
#define MTXInverse PSMTXInverse
#define MTXRotRad PSMTXRotRad
#define MTXRotTrig PSMTXRotTrig
#define MTXRotAxisRad PSMTXRotAxisRad
#define MTXTrans PSMTXTrans
#define MTXTransApply PSMTXTransApply
#define MTXScale PSMTXScale
#define MTXScaleApply PSMTXScaleApply
#define MTXQuat PSMTXQuat
#endif

// ====== MATRIX VECTOR ====== //

void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecArray(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);
void PSMTXMultVecArraySR(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);

/* When compiling in debug mode, use C implementations */
#ifdef DEBUG
// TODO: Add debug rom C implementations
/* #define MTXMultVec C_MTXMultVec
#define MTXMultVecSR C_MTXMultVecSR
#define MTXMultVecArray C_MTXMultVecArray
#define MTXMultVecArraySR C_MTXMultVecArraySR */

#define MTXMultVec PSMTXMultVec
#define MTXMultVecSR PSMTXMultVecSR
#define MTXMultVecArray PSMTXMultVecArray
#define MTXMultVecArraySR PSMTXMultVecArraySR
#else
#define MTXMultVec PSMTXMultVec
#define MTXMultVecSR PSMTXMultVecSR
#define MTXMultVecArray PSMTXMultVecArray
#define MTXMultVecArraySR PSMTXMultVecArraySR
#endif

#ifdef __cplusplus
};
#endif

#endif /* MTX_H */
