/**
 * c_m3d_g_pla.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "SSystem/SComponent/c_m3d.h"

/* 8026F3DC-8026F408 269D1C 002C+00 0/0 3/3 0/0 .text            __ct__8cM3dGPlaFPC4cXyzf */
cM3dGPla::cM3dGPla(const cXyz* normal, f32 d) : mNormal(*normal), mD(d) {}

/* 8026F408-8026F4C4 269D48 00BC+00 0/0 3/3 0/0 .text crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
 */
bool cM3dGPla::crossInfLin(const cXyz& start, const cXyz& end, cXyz& out) const {
    f32 tmp1 = (mD + VECDotProduct(&mNormal, &start));
    f32 tmp2 = tmp1 - (mD + VECDotProduct(&mNormal, &end));
    if (fabsf(tmp2) < G_CM3D_F_ABS_MIN) {
        out = end;
        return false;
    } else {
        cM3d_InDivPos2(&start, &end, (tmp1 / tmp2), &out);
        return true;
    }
}

/* 8026F4C4-8026F52C 269E04 0068+00 0/0 1/1 0/0 .text            SetupNP0__8cM3dGPlaFRC3VecRC3Vec */
void cM3dGPla::SetupNP0(const Vec& normal, const Vec& point) {
    mNormal = normal;
    VECNormalize(&mNormal, &mNormal);
    mD = -VECDotProduct(&mNormal, &point);
}

/* 8026F52C-8026F57C 269E6C 0050+00 0/0 2/2 0/0 .text            SetupNP__8cM3dGPlaFRC3VecRC3Vec */
void cM3dGPla::SetupNP(const Vec& normal, const Vec& point) {
    mNormal = normal;
    mD = -VECDotProduct(&mNormal, &point);
}

/* 8026F57C-8026F5D4 269EBC 0058+00 0/0 2/2 0/0 .text            getCrossY__8cM3dGPlaCFRC4cXyzPf */
bool cM3dGPla::getCrossY(const cXyz& point, f32* out) const {
    if (fabsf(mNormal.y) < G_CM3D_F_ABS_MIN) {
        return false;
    } else {
        *out = (-mNormal.x * point.x - mNormal.z * point.z - mD) / mNormal.y;
        return true;
    }
}

/* 8026F5D4-8026F624 269F14 0050+00 0/0 1/1 0/0 .text            getCrossYLessD__8cM3dGPlaCFRC3VecPf
 */
bool cM3dGPla::getCrossYLessD(const Vec& point, f32* out) const {
    if (fabsf(mNormal.y) < G_CM3D_F_ABS_MIN) {
        return false;
    } else {
        *out = (-mNormal.x * point.x - mNormal.z * point.z) / mNormal.y;
        return true;
    }
}

/* 8026F624-8026F648 269F64 0024+00 0/0 1/1 0/0 .text            Set__8cM3dGPlaFPC8cM3dGPla */
void cM3dGPla::Set(const cM3dGPla* other) {
    *this = *other;
}