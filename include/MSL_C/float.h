
#ifndef MSL_FLOAT_H_
#define MSL_FLOAT_H_

#include "MSL_C/MSL_Common/Src/float.h"

#define FLT_MANT_DIG   24
#define FLT_DIG        6
#define FLT_MIN_EXP    (-125)
#define FLT_MIN_10_EXP (-37)
#define FLT_MAX_EXP    128
#define FLT_MAX_10_EXP 38

#define FLT_MAX (*(float*) __float_max)
#define FLT_EPSILON (*(float*) __float_epsilon)

#define DBL_MANT_DIG   53
#define DBL_DIG        15
#define DBL_MIN_EXP    (-1021)
#define DBL_MIN_10_EXP (-308)
#define DBL_MAX_EXP    1024
#define DBL_MAX_10_EXP 308

#endif
