#ifndef VEC_H
#define VEC_H

#include "dolphin/types.h"

struct Vec {
    float x, y, z;
    float GetX() const { return x; }
    float GetY() const { return y; }
    float GetZ() const { return z; }
    float getXDiff(const Vec* other) const { return x - other->x; }
    float getYDiff(const Vec* other) const { return y - other->y; }
    float getZDiff(const Vec* other) const { return z - other->z; }
};

extern "C" {
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
}

#endif /* VEC_H */
