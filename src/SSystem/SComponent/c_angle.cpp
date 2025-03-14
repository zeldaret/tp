/**
 * c_angle.cpp
 *
 */

#include "SSystem/SComponent/c_angle.h"

extern f32 cM_atan2f(f32, f32);

const cSAngle cSAngle::_0(static_cast<s16>(0));
const cSAngle cSAngle::_1(static_cast<s16>(0xb6));
const cSAngle cSAngle::_90(static_cast<s16>(0x4000));
const cSAngle cSAngle::_180(static_cast<s16>(-0x8000));
const cSAngle cSAngle::_270(static_cast<s16>(-0x4000));

/* 80270F68-80270F98 0030+00 s=0 e=33 z=2  None .text      __ct__7cSAngleFRC7cSAngle */
cSAngle::cSAngle(const cSAngle& angle) {
    Val(angle);
}

/* 80270F98-80270FC8 0030+00 s=14 e=50 z=4  None .text      __ct__7cSAngleFs */
cSAngle::cSAngle(s16 angle) {
    Val(angle);
}

/* 80270FC8-80270FF8 0030+00 s=0 e=22 z=0  None .text      __ct__7cSAngleFf */
cSAngle::cSAngle(f32 angle) {
    Val(angle);
}

/* 80270FF8-80271004 000C+00 s=2 e=6 z=0  None .text      Val__7cSAngleFRC7cSAngle */
void cSAngle::Val(const cSAngle& other) {
    mAngle = other.mAngle;
}

/* 80271004-8027100C 0008+00 s=4 e=7 z=0  None .text      Val__7cSAngleFs */
void cSAngle::Val(s16 val) {
    mAngle = val;
}

/* 8027100C-80271030 0024+00 s=1 e=8 z=0  None .text      Val__7cSAngleFf */
void cSAngle::Val(f32 degree) {
    mAngle = cAngle::Degree_to_SAngle(degree);
}

/* 80271030-80271064 0034+00 s=0 e=11 z=0  None .text      Degree__7cSAngleCFv */
f32 cSAngle::Degree() const {
    return cAngle::SAngle_to_Degree(mAngle);
}

/* 80271064-80271098 0034+00 s=3 e=0 z=0  None .text      Radian__7cSAngleCFv */
f32 cSAngle::Radian() const {
    return cAngle::SAngle_to_Radian(mAngle);
}

/* 80271098-802710CC 0034+00 s=0 e=1 z=0  None .text      Norm__7cSAngleCFv */
f32 cSAngle::Norm() const {
    return cAngle::SAngle_to_Normal(mAngle);
}

/* 802710CC-802710E8 001C+00 s=0 e=5 z=1  None .text      Abs__7cSAngleCFv */
s16 cSAngle::Abs() const {
    return mAngle >= 0 ? mAngle : -mAngle;
}

/* 802710E8-802710F8 0010+00 s=2 e=22 z=2  None .text      Inv__7cSAngleCFv */
s16 cSAngle::Inv() const {
    return mAngle - 0x8000;
}

/* 802710F8-80271120 0028+00 s=0 e=6 z=1  None .text      Sin__7cSAngleCFv */
f32 cSAngle::Sin() const {
    return sin(Radian());
}

/* 80271120-80271148 0028+00 s=0 e=8 z=1  None .text      Cos__7cSAngleCFv */
f32 cSAngle::Cos() const {
    return cos(Radian());
}

/* 80271148-80271174 002C+00 s=2 e=8 z=0  None .text      __mi__7cSAngleCFv */
cSAngle cSAngle::operator-() const {
    return cSAngle(static_cast<s16>(-mAngle));
}

/* 80271174-802711A4 0030+00 s=0 e=30 z=1  None .text      __pl__7cSAngleCFRC7cSAngle */
cSAngle cSAngle::operator+(const cSAngle& other) const {
    return cSAngle(static_cast<s16>(mAngle + other.mAngle));
}

/* 802711A4-802711D4 0030+00 s=2 e=37 z=0  None .text      __mi__7cSAngleCFRC7cSAngle */
cSAngle cSAngle::operator-(const cSAngle& other) const {
    return cSAngle(static_cast<s16>(mAngle - other.mAngle));
}

/* 802711D4-802711E8 0014+00 s=0 e=15 z=0  None .text      __apl__7cSAngleFRC7cSAngle */
void cSAngle::operator+=(const cSAngle& other) {
    mAngle += other.mAngle;
}

/* 802711E8-802711FC 0014+00 s=0 e=3 z=0  None .text      __ami__7cSAngleFRC7cSAngle */
void cSAngle::operator-=(const cSAngle& other) {
    mAngle -= other.mAngle;
}

/* 802711FC-80271228 002C+00 s=0 e=5 z=0  None .text      __pl__7cSAngleCFs */
cSAngle cSAngle::operator+(s16 other) const {
    return cSAngle(static_cast<s16>(mAngle + other));
}

/* 80271228-80271254 002C+00 s=0 e=9 z=3  None .text      __mi__7cSAngleCFs */
cSAngle cSAngle::operator-(s16 other) const {
    return cSAngle(static_cast<s16>(mAngle - other));
}

/* 80271254-80271264 0010+00 s=0 e=1 z=0  None .text      __apl__7cSAngleFs */
void cSAngle::operator+=(s16 other) {
    mAngle += other;
}

/* 80271264-802712B4 0050+00 s=0 e=31 z=0  None .text      __ml__7cSAngleCFf */
cSAngle cSAngle::operator*(f32 f1) const {
    return cSAngle(static_cast<s16>(mAngle * f1));
}

/* 802712B4-802712F4 0040+00 s=0 e=3 z=0  None .text      __amu__7cSAngleFf */
void cSAngle::operator*=(f32 f1) {
    mAngle *= f1;
}

/* 802712F4-80271320 002C+00 s=0 e=2 z=0  None .text      __pl__FsRC7cSAngle */
cSAngle operator+(s16 other, const cSAngle& angle) {
    return cSAngle(static_cast<s16>(other + angle.Val()));
}

/* 80271320-8027134C 002C+00 s=0 e=5 z=0  None .text      __mi__FsRC7cSAngle */
cSAngle operator-(s16 other, const cSAngle& angle) {
    return cSAngle(static_cast<s16>(other - angle.Val()));
}

/* 8027134C-8027137C 0030+00 s=0 e=3 z=0  None .text      __ct__7cDegreeFf */
cDegree::cDegree(f32 f) {
    Val(f);
}

/* 8027137C-802713BC 0040+00 s=1 e=0 z=0  None .text      Formal__7cDegreeFv */
cDegree& cDegree::Formal() {
    mDegree = cAngle::Adjust<f32>(mDegree, -180.0f, 180.0f);
    return *this;
}

/* 802713BC-802713E0 0024+00 s=1 e=0 z=0  None .text      Val__7cDegreeFf */
void cDegree::Val(f32 f) {
    mDegree = f;
    Formal();
}

/* 802713E0-802713F0 0010+00 s=3 e=0 z=0  None .text      Radian__7cDegreeCFv */
f32 cDegree::Radian() const {
    return cAngle::Degree_to_Radian(mDegree);
}

/* 802713F0-80271418 0028+00 s=0 e=1 z=0  None .text      Sin__7cDegreeCFv */
f32 cDegree::Sin() const {
    return sin(Radian());
}

/* 80271418-80271440 0028+00 s=0 e=2 z=0  None .text      Cos__7cDegreeCFv */
f32 cDegree::Cos() const {
    return cos(Radian());
}

/* 80271440-80271468 0028+00 s=0 e=1 z=0  None .text      Tan__7cDegreeCFv */
f32 cDegree::Tan() const {
    return tan(Radian());
}

/* 80271468-80271498 0030+00 s=1 e=0 z=0  None .text      __ct__7cSPolarFRC4cXyz */
cSPolar::cSPolar(const cXyz& xyz) {
    Val(xyz);
}

/* 80271498-80271558 00C0+00 s=2 e=0 z=0  None .text      Formal__7cSPolarFv */
cSPolar& cSPolar::Formal() {
    if (mRadial < 0.0f) {
        mRadial = -mRadial;
        cSAngle tmp(static_cast<s16>(-0x8000));
        mAngle1.Val(tmp - mAngle1);
        mAngle2.Val(mAngle2.Inv());
    }

    if (mAngle1.Val() < 0 && mAngle1.Val() != -0x8000) {
        mAngle1.Val(-mAngle1);
        mAngle2.Val(mAngle2.Inv());
    }

    return *this;
}

/* 80271558-802715BC 0064+00 s=1 e=0 z=0  None .text      Val__7cSPolarFfss */
void cSPolar::Val(f32 f, s16 s1, s16 s2) {
    mRadial = f;
    mAngle1 = cSAngle(s1);
    mAngle2 = cSAngle(s2);
    Formal();
}

inline double square(f32 f) {
    return f * f;
}

/* 802715BC-802716EC 0130+00 s=1 e=0 z=0  None .text      Val__7cSPolarFRC4cXyz */
void cSPolar::Val(const cXyz& xyz) {
    f32 x, y, z, tmp4;
    x = xyz.x;
    y = xyz.y;
    z = xyz.z;
    double tmp = square(z) + square(x);
    double tmp2 = square(y) + tmp;
    tmp4 = (tmp > 0.0) ? (f32)sqrt(tmp) : 0.0f;
    mRadial = (tmp2 > 0.0) ? (f32)sqrt(tmp2) : 0.0f;
    mAngle1.Val(cAngle::Radian_to_SAngle(cM_atan2f(tmp4, y)));
    mAngle2.Val(cAngle::Radian_to_SAngle(cM_atan2f(x, z)));
    Formal();
}

/* 802716EC-802717B4 00C8+00 s=1 e=1 z=0  None .text      Xyz__7cSPolarCFv */
cXyz cSPolar::Xyz() const {
    f32 ang1Cos;
    f32 ang2Cos;
    f32 ang1Sin = mRadial * (f32)sin(mAngle1.Radian());
    ang2Cos = (f32)cos(mAngle2.Radian());
    ang1Cos = mRadial * (f32)cos(mAngle1.Radian());
    f32 ang2Sin = sin(mAngle2.Radian());
    return cXyz(ang1Sin * ang2Sin, ang1Cos, ang1Sin * ang2Cos);
}

/* 802717B4-802717F0 003C+00 s=1 e=0 z=0  None .text      Globe__7cSPolarCFP7cSGlobe */
void cSPolar::Globe(cSGlobe* globe) const {
    globe->Val(mRadial, 0x4000 - mAngle1.Val(), mAngle2.Val());
}

/* 802717F0-80271820 0030+00 s=0 e=6 z=0  None .text      __ct__7cSGlobeFRC7cSGlobe */
cSGlobe::cSGlobe(const cSGlobe& other) {
    Val(other);
}

/* 80271820-80271850 0030+00 s=0 e=3 z=0  None .text      __ct__7cSGlobeFfss */
cSGlobe::cSGlobe(f32 f, s16 s1, s16 s2) {
    Val(f, s1, s2);
}

/* 80271850-80271880 0030+00 s=1 e=4 z=0  None .text      __ct__7cSGlobeFfRC7cSAngleRC7cSAngle */
cSGlobe::cSGlobe(f32 f, const cSAngle& a1, const cSAngle& a2) {
    Val(f, a1, a2);
}

/* 80271880-802718B0 0030+00 s=0 e=35 z=3  None .text      __ct__7cSGlobeFRC4cXyz */
cSGlobe::cSGlobe(const cXyz& xyz) {
    Val(xyz);
}

/* 802718B0-8027196C 00BC+00 s=5 e=0 z=0  None .text      Formal__7cSGlobeFv */
cSGlobe& cSGlobe::Formal() {
    if (mRadius < 0.0f) {
        mRadius = -mRadius;
        mInclination = -mInclination;
        mAzimuth.Val(mAzimuth.Inv());
    }

    if (mInclination.Val() < -0x4000 || 0x4000 < mInclination.Val()) {
        mInclination = cSAngle((s16)-0x8000) - mInclination;
        mAzimuth.Val(mAzimuth.Inv());
    }

    return *this;
}

/* 8027196C-802719A4 0038+00 s=1 e=0 z=0  None .text      Val__7cSGlobeFRC7cSGlobe */
void cSGlobe::Val(const cSGlobe& other) {
    mRadius = other.mRadius;
    mInclination = other.mInclination;
    mAzimuth = other.mAzimuth;
    Formal();
}

/* 802719A4-80271A08 0064+00 s=2 e=3 z=0  None .text      Val__7cSGlobeFfss */
void cSGlobe::Val(f32 f, s16 s1, s16 s2) {
    mRadius = f;
    mInclination = cSAngle(s1);
    mAzimuth = cSAngle(s2);
    Formal();
}

/* 80271A08-80271A70 0068+00 s=1 e=11 z=0  None .text      Val__7cSGlobeFfRC7cSAngleRC7cSAngle */
void cSGlobe::Val(f32 f, const cSAngle& a1, const cSAngle& a2) {
    mRadius = f;
    mInclination = cSAngle(a1.Val());
    mAzimuth = cSAngle(a2.Val());
    Formal();
}

/* 80271A70-80271AB4 0044+00 s=1 e=38 z=0  None .text      Val__7cSGlobeFRC4cXyz */
void cSGlobe::Val(const cXyz& xyz) {
    cSPolar csp(xyz);
    csp.Globe(this);
    Formal();
}

/* 80271AB4-80271AF4 0040+00 s=1 e=38 z=0  None .text      Xyz__7cSGlobeCFv */
cXyz cSGlobe::Xyz() const {
    cSPolar csp;
    Polar(&csp);
    return csp.Xyz();
}

/* 80271AF4-80271B30 003C+00 s=1 e=0 z=0  None .text      Polar__7cSGlobeCFP7cSPolar */
void cSGlobe::Polar(cSPolar* csp) const {
    csp->Val(mRadius, 0x4000 - mInclination.Val(), mAzimuth.Val());
}

/* 80271B30-80271B7C 004C+00 s=0 e=3 z=0  None .text      Norm__7cSGlobeCFv */
cXyz cSGlobe::Norm() const {
    cSGlobe glob(1.0f, mInclination, mAzimuth);
    return glob.Xyz();
}

/* 80271B7C-80271BA8 002C+00 s=0 e=2 z=0  None .text      Invert__7cSGlobeFv */
cSGlobe& cSGlobe::Invert() {
    mRadius = -mRadius;
    return Formal();
}