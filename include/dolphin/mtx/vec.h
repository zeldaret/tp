#ifndef VEC_H
#define VEC_H

#include "dolphin/types.h"

struct Vec {
    f32 x, y, z;
    f32 GetX() const { return x; }
    f32 GetY() const { return y; }
    f32 GetZ() const { return z; }
    f32 getXDiff(const Vec* other) const { return x - other->x; }
    f32 getYDiff(const Vec* other) const { return y - other->y; }
    f32 getZDiff(const Vec* other) const { return z - other->z; }
    void set(f32 pX, f32 pY, f32 pZ) {
        x = pX;
        y = pY;
        z = pZ;
    }
    void set(const Vec& other) {
        x = other.x;
        y = other.y;
        z = other.z;
    }
};

typedef Vec* VecPtr;
typedef Vec Point3d;
typedef Vec* Point3dPtr;

struct SVec {
    s16 x, y, z;

    void set(s16 oX, s16 oY, s16 oZ) {
        x = oX;
        y = oY;
        z = oZ;
    }

    void setall(s16 val) {
        x = val;
        y = val;
        z = val;
    }
};

extern "C" {
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
}

#endif /* VEC_H */
