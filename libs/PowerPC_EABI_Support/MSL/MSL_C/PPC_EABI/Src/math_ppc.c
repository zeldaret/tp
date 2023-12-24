#include "math_ppc.h"
#include "fdlibm.h"

/* 8036CA30-8036CA54 367370 0024+00 0/0 1/1 0/0 .text            acosf */
float acosf(float x) {
    return acos(x);
}

/* 8036CA0C-8036CA30 36734C 0024+00 0/0 4/4 0/0 .text            cosf */
float cosf(float x) {
    return cos(x);
}

/* 8036C9E8-8036CA0C 367328 0024+00 0/0 4/4 0/0 .text            sinf */
float sinf(float x) {
    return sin(x);
}

/* 8036C9C4-8036C9E8 367304 0024+00 0/0 2/2 0/0 .text            tanf */
float tanf(float x) {
    return tan(x);
}
