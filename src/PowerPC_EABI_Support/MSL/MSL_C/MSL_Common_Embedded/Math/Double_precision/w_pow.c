#include "fdlibm.h"

/* 8036C780-8036C7A0 3670C0 0020+00 0/0 3/3 24/24 .text            pow */
double pow(double x, double y) {
    return __ieee754_pow(x, y);
}