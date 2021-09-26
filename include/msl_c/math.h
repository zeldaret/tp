#ifndef MSL_MATH_H_
#define MSL_MATH_H_

#include "dolphin/types.h"
#include "MSL_C.PPCEABI.bare.H/MSL_Common/Src/float.h"

extern "C" {
s32 abs(s32);
f64 acos(f64);
f32 acosf(f32);
f64 asin(f64);
f64 atan(f64);
f64 atan2(f64);
f64 ceil(f64);
f64 copysign(f64, f64);
f64 cos(f64);
f32 cosf(f32);
f64 exp(f64);

extern f32 __fabsf(f32);
inline f64 fabs(f64 f) {
    return __fabsf(f);
}
inline f64 fabsf2(f32 f) {
    return __fabsf(f);
}
inline f32 fabsf(f32 f) {
    return fabsf2(f);
}

f64 floor(f64);
f64 fmod(f64, f64);
inline f32 fmodf(f32 f1, f32 f2) {
    return fmod(f1, f2);
}

f64 frexp(f64, s32*);
f64 ldexp(f64, s32);
f64 modf(f64, f64*);
f64 pow(f64, f64);
f64 sin(f64);
f32 sinf(f32);
f64 sqrt(f64);
f64 tan(f64);
f32 tanf(f32);

extern f32 __float_nan[4];
extern f32 __float_epsilon[4];

inline f64 sqrt_step(f64 tmpd, f32 mag) {
    return tmpd * 0.5 * (3.0 - mag * (tmpd * tmpd));
}

inline f32 sqrtf(f32 mag) {
    if (mag > 0.0f) {
        f64 tmpd = __frsqrte(mag);
        tmpd = sqrt_step(tmpd, mag);
        tmpd = sqrt_step(tmpd, mag);
        tmpd = sqrt_step(tmpd, mag);
        return mag * tmpd;
    } else if (mag < 0.0) {
        return __float_nan[0];
    } else if (fpclassify(mag) == 1) {
        return __float_nan[0];
    } else {
        return mag;
    }
}
}

#endif