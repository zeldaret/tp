#ifndef _global_h_
#define _global_h_

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

// Align X to the previous N bytes (N must be power of two)
#define ALIGN_PREV(X, N) ((X) & ~((N)-1))
// Align X to the next N bytes (N must be power of two)
#define ALIGN_NEXT(X, N) ALIGN_PREV(((X) + (N)-1), N)

#define JUT_ASSERT(...)
#define ASSERT(...)

#include "dolphin/types.h"

#include "ar/ARQ.h"
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
