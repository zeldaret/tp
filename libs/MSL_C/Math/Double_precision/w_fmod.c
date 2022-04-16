#include "fdlibm.h"

/* 8036C760-8036C780 3670A0 0020+00 0/0 8/8 0/0 .text            fmod */
double fmod(double x, double y) {
    return __ieee754_fmod(x, y);
}
