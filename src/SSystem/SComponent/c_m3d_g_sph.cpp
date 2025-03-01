/**
 * c_m3d_g_sph.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_sph.h"
#include "SSystem/SComponent/c_m3d.h"

/* 8026F648-8026F664 269F88 001C+00 2/2 5/5 254/254 .text            SetC__8cM3dGSphFRC4cXyz */
void cM3dGSph::SetC(const cXyz& center) {
    mCenter = center;
}

/* 8026F664-8026F6A8 269FA4 0044+00 0/0 3/3 2/2 .text            Set__8cM3dGSphFRC4cXyzf */
void cM3dGSph::Set(const cXyz& center, f32 radius) {
    SetC(center);
    SetR(radius);
}

/* 8026F6A8-8026F708 269FE8 0060+00 0/0 2/2 0/0 .text            Set__8cM3dGSphFRC9cM3dGSphS */
void cM3dGSph::Set(const cM3dGSphS& other) {
    SetC(cXyz(other.mCenter));
    SetR(other.mRadius);
}

/* 8026F708-8026F710 26A048 0008+00 2/2 10/10 197/197 .text            SetR__8cM3dGSphFf */
void cM3dGSph::SetR(f32 radius) {
    mRadius = radius;
}

/* 8026F710-8026F73C 26A050 002C+00 0/0 1/1 0/0 .text            cross__8cM3dGSphCFPC8cM3dGSphP4cXyz
 */
bool cM3dGSph::cross(const cM3dGSph* other, cXyz* out) const {
    return cM3d_Cross_SphSph(other, this, out);
}

/* 8026F73C-8026F76C 26A07C 0030+00 0/0 1/1 0/0 .text            cross__8cM3dGSphCFPC8cM3dGCylP4cXyz
 */
bool cM3dGSph::cross(const cM3dGCyl* cyl, cXyz* out) const {
    return cM3d_Cross_CylSph(cyl, this, out);
}

/* 8026F76C-8026F7B0 26A0AC 0044+00 0/0 1/1 0/0 .text GetMinMaxCube__8cM3dGSphCFR4cXyzR4cXyz */
void cM3dGSph::GetMinMaxCube(cXyz& min, cXyz& max) const {
    min.x = mCenter.x - mRadius;
    min.y = mCenter.y - mRadius;
    min.z = mCenter.z - mRadius;
    max.x = mCenter.x + mRadius;
    max.y = mCenter.y + mRadius;
    max.z = mCenter.z + mRadius;
}
