#ifndef QUAT_H
#define QUAT_H

#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

struct Quaternion {
    float x, y, z, w;
};

extern "C" {
void PSQUATMultiply(const Quaternion* src_a, const Quaternion* src_b, Quaternion* dst);
void C_QUATRotAxisRad(Quaternion* quat, const Vec* axis, float rad);
void C_QUATSlerp(const Quaternion* p, const Quaternion* q, Quaternion* r, float t);
}

#endif /* QUAT_H */
