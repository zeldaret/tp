#include "fdlibm.h"

/* 8036CA54-8036CA74 367394 0020+00 0/0 8/8 1/1 .text            sqrt */
double sqrt(double x) {
    return __ieee754_sqrt(x);
}