#include "fdlibm.h"

/* 8036C720-8036C740 367060 0020+00 0/0 6/6 0/0 .text            atan2 */
double atan2(double x, double y) {
    return __ieee754_atan2(x, y);
}