#include "fdlibm.h"

/* 8036C700-8036C720 367040 0020+00 0/0 2/2 0/0 .text            asin */
double asin(double x) {
    return __ieee754_asin(x);
}
