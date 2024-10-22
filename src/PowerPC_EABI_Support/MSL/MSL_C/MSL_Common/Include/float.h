#ifndef _MSL_COMMON_FLOAT_H
#define _MSL_COMMON_FLOAT_H

#include "fdlibm.h"

#define FP_SNAN 0
#define FP_QNAN 1
#define FP_INFINITE 2
#define FP_ZERO 3
#define FP_NORMAL 4
#define FP_SUBNORMAL 5

#define FP_NAN FP_QNAN

#define fpclassify(x) ((sizeof(x) == sizeof(float)) ? __fpclassifyf(x) : __fpclassifyd(x))
#define signbit(x) ((sizeof(x) == sizeof(float)) ? __signbitf(x) : __signbitd(x))
#define isfinite(x) ((fpclassify(x) > 2))

#define __signbitf(x) ((int)(__HI(x) & 0x80000000))

// TODO: OK?
#define __signbitd(x) ((int)(__HI(x) & 0x80000000))

extern unsigned long __float_nan[];
extern unsigned long __float_huge[];
extern unsigned long __float_max[];
extern unsigned long __float_epsilon[];

inline int __fpclassifyf(float __value) {
    unsigned long integer = *(unsigned long*)&__value;

    switch (integer & 0x7f800000) {
    case 0x7f800000:
        if ((integer & 0x7fffff) != 0) {
            return FP_QNAN;
        }
        return FP_INFINITE;

    case 0:
        if ((integer & 0x7fffff) != 0) {
            return FP_SUBNORMAL;
        }
        return FP_ZERO;
    }

    return FP_NORMAL;
}

inline int __fpclassifyd(double __value) {
    switch (__HI(__value) & 0x7ff00000) {
	case 0x7ff00000: {
		if ((__HI(__value) & 0x000fffff) || (__LO(__value) & 0xffffffff))
			return FP_QNAN;
		else
			return FP_INFINITE;
		break;
	}
	case 0: {
		if ((__HI(__value) & 0x000fffff) || (__LO(__value) & 0xffffffff))
			return FP_SUBNORMAL;
		else
			return FP_ZERO;
		break;
	}
	}
	return FP_NORMAL;
}

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

#endif /* _MSL_COMMON_FLOAT_H */