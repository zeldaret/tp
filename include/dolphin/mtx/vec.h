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

inline void C_VECAdd(register const Vec* a, register const Vec* b, register Vec* ab) {
    register f32 axy;
    register f32 bxy;
    register f32 az;
    register f32 sumz;
    register f32 bz;
    asm {
        psq_l axy, 0(a), 0, 0
        psq_l bxy, 0(b), 0, 0
        ps_add axy, axy, bxy
        psq_st axy, 0(ab), 0, 0
        psq_l az, 8(a), 1, 0
        psq_l bz, 8(b), 1, 0
        ps_add sumz, az, bz
        psq_st sumz, 8(ab), 1, 0
    }
}

inline f32 C_VECSquareMag(const Vec* v) {
    register f32 x_y;
    register f32 z;
    register f32 res;
    register const f32* src = &v->x;
    asm {
        psq_l   x_y, 0(src), 0, 0
        ps_mul  x_y, x_y, x_y
        lfs     z,   8(src)
        ps_madd res, z, z, x_y
        ps_sum0 res, res, x_y, x_y
    };
    return res;
}

#ifdef __cplusplus
};
#endif

#endif /* VEC_H */
