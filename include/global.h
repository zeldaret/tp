#ifndef _global_h_
#define _global_h_

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

struct Vec {
    float x, y, z;
};

#include "dolphin/types.h"
#include "functions.h"
#include "mwcc.h"
#include "os/OS.h"
#include "variables.h"

// hack to make functions that return comparisons as int match
extern int __cntlzw(unsigned int);
inline BOOL checkEqual(s32 a, s32 b) {
    return (u32)__cntlzw(a - b) >> 5;
}

#endif
