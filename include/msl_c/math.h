#ifndef MSL_MATH_H_
#define MSL_MATH_H_

#include "dolphin/types.h"

extern "C" {
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
inline f32 fabsf(f32 f) {
    return (f32)fabs(f);
}

f64 floor(f64);
f64 fmod(f64, f64);
inline f32 fmodf(f32 f1, f32 f2) {
    return (f32)fmod(f1, f2);
}
f64 frexp(f64, s32*);
f64 ldexp(f64, s32);
f64 modf(f64, f64*);
f64 pow(f64, f64);
f64 sin(f64);
f32 sinf(f32);
f64 tan(f64);
f32 tanf(f32);
f64 sin(f64);
}

#endif