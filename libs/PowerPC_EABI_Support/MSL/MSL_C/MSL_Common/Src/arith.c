#include "arith.h"

/* 803650D0-803650E0 35FA10 0010+00 0/0 66/66 225/225 .text            abs */
int abs(int n) {
    if (n < 0)
        return (-n);
    else
        return (n);
}

/* 80365078-803650D0 35F9B8 0058+00 0/0 1/1 0/0 .text            div */
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
