#ifndef QUAT_H
#define QUAT_H

#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Quaternion {
    f32 x, y, z, w;
} Quaternion;

void PSQUATMultiply(const Quaternion* src_a, const Quaternion* src_b, Quaternion* dst);
void C_QUATRotAxisRad(Quaternion* q, const Vec* axis, f32 rad);
void C_QUATSlerp(const Quaternion* p, const Quaternion* q, Quaternion* r, f32 t);

#ifdef __cplusplus
};
#endif

#endif /* QUAT_H */
