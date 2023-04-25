#ifndef TYPES_H_
#define TYPES_H_

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;
typedef volatile f32 vf32;
typedef volatile f64 vf64;

typedef int BOOL;

#define TRUE 1
#define FALSE 0

#include "MSL_C/MSL_Common/Src/stddef.h"

#define INT32_MAX (0x7fffffff)
#define UINT32_MAX (0xffffffff)

#define FLOAT_MIN (1.175494351e-38f)
#define FLOAT_MAX (3.40282346638528860e+38f)

#endif