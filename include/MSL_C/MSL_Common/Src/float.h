#ifndef MSL_COMMON_SRC_FLOAT_H
#define MSL_COMMON_SRC_FLOAT_H

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

#define __signbitf(x) ((*(unsigned char*)&(x)) & 0x80)

// TODO: OK?
#define __signbitd(x) ((*(unsigned char*)&(x)) & 0x80)

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

#endif /* MSL_COMMON_SRC_FLOAT_H */
