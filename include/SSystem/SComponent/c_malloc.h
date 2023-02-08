#ifndef C_MALLOC_H
#define C_MALLOC_H

#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/types.h"

struct cMl {
    static JKRHeap* Heap;
    /* 80263220 */ static void init(JKRHeap*);
    /* 80263228 */ static void* memalignB(int, u32);
    /* 80263260 */ static void free(void*);
};

#endif /* C_MALLOC_H */
