#ifndef _global_h_
#define _global_h_

#ifdef __cplusplus
#define BEGIN_C_DECLARATIONS extern "C" {
#else
#define BEGIN_C_DECLARATIONS
#endif

#ifdef __cplusplus
#define END_C_DECLARATIONS                                                                         \
    }                                                                                              \
    ;
#else
#define END_C_DECLARATIONS
#endif

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

struct Vec {
    float x, y, z;
};

#include "dolphin/types.h"

#ifdef __cplusplus
#include "functions.h"
#include "os/OS.h"
#include "variables.h"
#endif

// hack to make functions that return comparisons as int match
extern int __cntlzw(unsigned int);
inline BOOL checkEqual(s32 a, s32 b) {
    return (u32)__cntlzw(a - b) >> 5;
}

#endif
