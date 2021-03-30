#ifndef C_MALLOC_H
#define C_MALLOC_H

#include "dolphin/types.h"

// TODO: move to correct include
struct JKRHeap {
    /* 802CE4D4 */ void *alloc(u32, int);
    /* 802CE548 */ void free(void*);
};

struct cMl {
    static JKRHeap *Heap;
    /* 80263220 */ static void init(JKRHeap*);
    /* 80263228 */ static void *memalignB(int, u32);
    /* 80263260 */ static void free(void*);
};

#endif /* C_MALLOC_H */
