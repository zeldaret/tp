#ifndef MSL_MATH_H_
#define MSL_MATH_H_

#include "global.h"
#include "float.h"

#define NAN (*(float*) __float_nan)
#define HUGE_VALF (*(float*) __float_huge)

#define M_PI 3.14159265358979323846f
#define M_SQRT3 1.73205f

#define DEG_TO_RAD(degrees) (degrees * (M_PI / 180.0f))
#define RAD_TO_DEG(radians) (radians * (180.0f / M_PI))

#ifdef __cplusplus
extern "C" {
#endif

int abs(int);
double acos(double);
float acosf(float);
double asin(double);
double atan(double);
double atan2(double, double);

double ceil(double);
inline float ceilf(float num) {
    return ceil(num);
}

double copysign(double, double);
double cos(double);
float cosf(float);
double exp(double);

inline float expf(float x) {
    return exp(x);
}

extern double __frsqrte(double);
extern float __fres(float);

extern double __fabs(double);
extern float __fabsf(float);
inline double fabs(double f) {
    return __fabs(f);
}
inline double fabsf2(float f) {
    return __fabsf(f);
}
inline float fabsf(float f) {
    return fabsf2(f);
}

double floor(double);
inline float floorf(float num) {
    return floor(num);
}

double fmod(double, double);
inline float fmodf(float f1, float f2) {
    return fmod(f1, f2);
}

double frexp(double, int*);
double ldexp(double, int);
double modf(double, double*);
double pow(double, double);
float powf(float, float);
double sin(double);
float sinf(float);
double sqrt(double);
double tan(double);
float tanf(float);

#if PLATFORM_WII || PLATFORM_SHIELD
inline float sqrtf(float mag) {
    return sqrt(mag);
}
#else
#ifdef DECOMPCTX
// Hack to mitigate fake mismatches when building from decompctx output
// (which doesn't support precompiled headers).
//
// When built without a PCH, these constants would end up .rodata instead of .data
// which causes a variety of knock-on effects in individual functions' assembly.
//
// Making them into globals is a bit of a hack, but it generally fixes later
// .data and .rodata offsets and allows individual functions to match.
static double _half = 0.5;
static double _three = 3.0;
#endif
inline float sqrtf(float mag) {
#ifndef DECOMPCTX
    // part of the same hack, these are defined outside of the function when using decompctx
    static const double _half = 0.5;
    static const double _three = 3.0;
#endif
    if (mag > 0.0f) {
        double tmpd = __frsqrte(mag);
        tmpd = tmpd * _half * (_three - mag * (tmpd * tmpd));
        tmpd = tmpd * _half * (_three - mag * (tmpd * tmpd));
        tmpd = tmpd * _half * (_three - mag * (tmpd * tmpd));
        return mag * tmpd;
    } else if (mag < 0.0) {
        return NAN;
    } else if (isnan(mag)) {
        return NAN;
    } else {
        return mag;
    }
}
#endif

inline float atan2f(float y, float x) {
    return (float)atan2(y, x);
}

inline float i_sinf(float x) { return sin(x); }
inline float i_cosf(float x) { return cos(x); }
inline float i_tanf(float x) { return tan(x); }
inline float i_acosf(float x) { return acos(x); }

#ifdef __cplusplus
};
#endif

#endif
