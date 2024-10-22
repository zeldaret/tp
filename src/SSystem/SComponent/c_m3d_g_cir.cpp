/**
 * c_m3d_g_cir.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_cir.h"

/* 8026EEB4-8026EED0 001C+00 s=0 e=1 z=0  None .text      __ct__8cM3dGCirFv */
cM3dGCir::cM3dGCir() {}

/* 8026EF18-8026EF74 005C+00 s=1 e=4 z=386  None .text      __dt__8cM3dGCirFv */
cM3dGCir::~cM3dGCir() {}

/* 8026EF74-8026EF88 0014+00 s=0 e=1 z=0  None .text      Set__8cM3dGCirFffff */
void cM3dGCir::Set(f32 pos_x, f32 pos_y, f32 posz, f32 radius) {
    mPosX = pos_x;
    mPosY = pos_y;
    mRadius = radius;
    mPosZ = posz;
}