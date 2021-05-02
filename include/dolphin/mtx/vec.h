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

#endif /* VEC_H */
