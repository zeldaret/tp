#ifndef _global_h_
#define _global_h_

#include "dolphin/types.h"

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

// Align X to the previous N bytes (N must be power of two)
#define ALIGN_PREV(X, N) ((X) & ~((N)-1))
// Align X to the next N bytes (N must be power of two)
#define ALIGN_NEXT(X, N) ALIGN_PREV(((X) + (N)-1), N)
#define IS_ALIGNED(X, N) (((X) & ((N)-1)) == 0)
#define IS_NOT_ALIGNED(X, N) (((X) & ((N)-1)) != 0)

#define ROUND(n, a) (((u32)(n) + (a)-1) & ~((a)-1))
#define TRUNC(n, a) (((u32)(n)) & ~((a)-1))

#define JUT_EXPECT(...)
#define FLAG_ON(V, F) (((V) & (F)) == 0)

#define FLOAT_LABEL(x) (*(f32*)&x)
#define DOUBLE_LABEL(x) (*(f64*)&x)

#define _SDA_BASE_(dummy) 0
#define _SDA2_BASE_(dummy) 0

#ifdef __MWERKS__
#define GLUE(a, b) a##b
#define GLUE2(a, b) GLUE(a, b)
#define STATIC_ASSERT(cond) typedef char GLUE2(static_assertion_failed, __LINE__)[(cond) ? 1 : -1]
#else
#define STATIC_ASSERT(...)
#endif

// hack to make functions that return comparisons as int match
extern int __cntlzw(unsigned int);
inline BOOL checkEqual(s32 a, s32 b) {
    return (u32)__cntlzw(a - b) >> 5;
}

#define FAST_DIV(x, n) (x >> (n / 2))

#define SQUARE(x) ((x) * (x))

// hack to make strings with no references compile properly
#define DEAD_STRING(s) OSReport(s)

#define UNK_BSS(name) \
    static u8 lit_##name[1 + 3 /* padding */];

#define UNK_REL_DATA \
    static u8 cNullVec__6Z2Calc[12] = { \
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
    }; \
    static u32 lit_1787[1 + 4 /* padding */] = { \
        0x02000201, \
        0x40080000, \
        0x00000000, \
        0x3FE00000, \
        0x00000000, \
    };

#endif
