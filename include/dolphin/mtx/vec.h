#ifndef VEC_H
#define VEC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Vec {
    f32 x, y, z;
} Vec;

typedef Vec* VecPtr;
typedef Vec Point3d;
typedef Vec* Point3dPtr;

typedef struct SVec {
    s16 x, y, z;
} SVec;

void PSVECAdd(const Vec* a, const Vec* b, Vec* ab);
void PSVECSubtract(const Vec* a, const Vec* b, Vec* a_b);
void PSVECScale(const Vec* src, Vec* dst, f32 scale);
void PSVECNormalize(const Vec* src, Vec* unit);
f32 PSVECSquareMag(const Vec* v);
f32 PSVECMag(const Vec* v);
f32 PSVECDotProduct(const Vec* a, const Vec* b);
void PSVECCrossProduct(const Vec* a, const Vec* b, Vec* axb);
f32 PSVECSquareDistance(const Vec* a, const Vec* b);
f32 PSVECDistance(const Vec* a, const Vec* b);

void C_VECHalfAngle(const Vec* a, const Vec* b, Vec* half);
void C_VECReflect(const Vec* src, const Vec* normal, Vec* dst);

#ifdef __cplusplus
};
#endif

#endif /* VEC_H */
