#ifndef MSL_MATH_H_
#define MSL_MATH_H_

#include "MSL_C/MSL_Common/Src/float.h"

#define NAN (*(float*) __float_nan)
#define HUGE_VALF (*(float*) __float_huge)

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
    return __fabs(f);
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
        return NAN;
    } else if (fpclassify(mag) == 1) {
        return NAN;
    } else {
        return mag;
    }
}

inline float atan2f(float y, float x) {
    return (float)atan2(y, x);
}

inline float i_sinf(float x) { return sin(x); }
inline float i_cosf(float x) { return cos(x); }

#ifdef __cplusplus
};
#endif

#endif
