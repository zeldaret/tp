#include "fdlibm.h"

/* 8036C740-8036C760 367080 0020+00 0/0 1/1 0/0 .text            exp */
double exp(double x) {
    return __ieee754_exp(x);
}