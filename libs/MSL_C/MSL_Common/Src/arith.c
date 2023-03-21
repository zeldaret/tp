#include "MSL_C/MSL_Common/Src/arith.h"
#include "MSL_C/math.h"

/* 80365078-803650D0 35F9B8 0058+00 0/0 1/1 0/0 .text            div */
#ifdef NONMATCHING
// matches but causes function reordering
div_t div(int numerator, int denominator) {
    div_t ret;
    int i = 1;
    int j = 1;

    if (numerator < 0 ) {
        numerator = -numerator;
        i = -1;
    }

    if (denominator < 0) {
        denominator = -denominator;
        j = -1;
    }

    ret.quot = (numerator / denominator) * (i * j);
    ret.rem = numerator * i - j * (ret.quot * denominator);
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm div_t div(int numerator, int denominator) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/arith/div.s"
}
#pragma pop
#endif

/* 803650D0-803650E0 35FA10 0010+00 0/0 66/66 225/225 .text            abs */
int abs(int n) {
    if (n < 0)
        return (-n);
    else
        return (n);
}
