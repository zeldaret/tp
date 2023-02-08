#ifndef JPAMATH_H
#define JPAMATH_H

#include "dolphin/mtx/mtx.h"
#include "JSystem/JGeometry.h"

void JPAGetXYZRotateMtx(s16 x, s16 y, s16 z, Mtx dst);
void JPASetRMtxTVecfromMtx(f32 const (*param_0)[4], f32 (*param_1)[4],
                               JGeometry::TVec3<f32>* param_2);

#endif /* JPAMATH_H */
