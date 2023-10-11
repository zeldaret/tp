#ifndef QUAT_H
#define QUAT_H

#include "dolphin/mtx/vec.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct Quaternion {
    f32 x, y, z, w;
} Quaternion;

void PSQUATMultiply(const Quaternion* a, const Quaternion* b, Quaternion* ab);
void C_QUATRotAxisRad(Quaternion* q, const Vec* axis, f32 rad);
void C_QUATSlerp(const Quaternion* p, const Quaternion* q, Quaternion* r, f32 t);

/* When compiling in debug mode, use C implementations */
#ifdef DEBUG
// TODO: Add debug rom C implementations
/* #define QUATMultiply C_QUATMultiply */

#define QUATMultiply PSQUATMultiply
#else
#define QUATMultiply PSQUATMultiply
#endif

#ifdef __cplusplus
};
#endif

#endif /* QUAT_H */
