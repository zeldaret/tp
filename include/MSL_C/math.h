#ifndef MSL_MATH_H_
#define MSL_MATH_H_

#include "MSL_C/MSL_Common/Src/float.h"
#include "dolphin/types.h"

#define M_PI 3.14159265358979323846f

#define DEG_TO_RAD(degrees) (degrees * (M_PI / 180.0f))

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
double copysign(double, double);
double cos(double);
float cosf(float);
double exp(double);

extern float __fabsf(float);
inline double fabs(double f) {
    return __fabsf(f);
}
inline double fabsf2(float f) {
    return __fabsf(f);
}
inline float fabsf(float f) {
    return fabsf2(f);
}

double floor(double);
double fmod(double, double);
inline float fmodf(float f1, float f2) {
    return fmod(f1, f2);
}

double frexp(double, int*);
double ldexp(double, int);
double modf(double, double*);
double pow(double, double);
double sin(double);
float sinf(float);
double sqrt(double);
double tan(double);
float tanf(float);

extern float __float_nan[4];
extern float __float_epsilon[4];
extern float __float_max[4];

inline double sqrt_step(double tmpd, float mag) {
    return tmpd * 0.5 * (3.0 - mag * (tmpd * tmpd));
}

inline float sqrtf(float mag) {
    if (mag > 0.0f) {
        double tmpd = __frsqrte(mag);
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

inline float atan2f(float y, float x) {
    return (f32)atan2(y, x);
}

#ifdef __cplusplus
};
#endif

#endif
