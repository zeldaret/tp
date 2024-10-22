/**
 * c_m3d_g_cyl.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_m3d.h"

/* 8026F0A8-8026F114 2699E8 006C+00 0/0 1/1 0/0 .text            __ct__8cM3dGCylFPC4cXyzff */
cM3dGCyl::cM3dGCyl(const cXyz* center, f32 radius, f32 height) {
    SetC(*center);
    SetR(radius);
    SetH(height);
}

/* 8026F114-8026F180 269A54 006C+00 0/0 1/1 4/4 .text            Set__8cM3dGCylFRC9cM3dGCylS */
void cM3dGCyl::Set(const cM3dGCylS& other) {
    SetC(cXyz(other.mCenter));
    SetR(other.mRadius);
    SetH(other.mHeight);
}

/* 8026F180-8026F1DC 269AC0 005C+00 0/0 2/2 1/1 .text            Set__8cM3dGCylFRC4cXyzff */
void cM3dGCyl::Set(const cXyz& center, f32 radius, f32 height) {
    SetC(center);
    SetR(radius);
    SetH(height);
}

/* 8026F1DC-8026F1F8 269B1C 001C+00 3/3 13/13 257/257 .text            SetC__8cM3dGCylFRC4cXyz */
void cM3dGCyl::SetC(const cXyz& center) {
    mCenter = center;
}

/* 8026F1F8-8026F200 269B38 0008+00 3/3 11/11 197/197 .text            SetH__8cM3dGCylFf */
void cM3dGCyl::SetH(f32 height) {
    mHeight = height;
}

/* 8026F200-8026F208 269B40 0008+00 3/3 6/6 204/204 .text            SetR__8cM3dGCylFf */
void cM3dGCyl::SetR(f32 radius) {
    mRadius = radius;
}

/* 8026F208-8026F22C 269B48 0024+00 0/0 1/1 0/0 .text            cross__8cM3dGCylCFPC8cM3dGSphP4cXyz
 */
bool cM3dGCyl::cross(const cM3dGSph* other, cXyz* out) const {
    f32 f;
    return cM3d_Cross_CylSph(this, other, out, &f);
}

/* 8026F22C-8026F24C 269B6C 0020+00 0/0 1/1 0/0 .text            cross__8cM3dGCylCFPC8cM3dGCylP4cXyz
 */
bool cM3dGCyl::cross(const cM3dGCyl* other, cXyz* out) const {
    return cM3d_Cross_CylCyl(this, other, out);
}

/* 8026F24C-8026F2A8 269B8C 005C+00 0/0 2/2 0/0 .text            calcMinMax__8cM3dGCylFP4cXyzP4cXyz
 */
void cM3dGCyl::calcMinMax(cXyz* min, cXyz* max) {
    min->x = mCenter.x - mRadius;
    min->y = mCenter.y;
    min->z = mCenter.z - mRadius;
    max->x = mCenter.x + mRadius;
    max->y = mCenter.y + mHeight;
    max->z = mCenter.z + mRadius;
}