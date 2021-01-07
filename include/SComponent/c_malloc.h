#ifndef __C_MALLOC_H_
#define __C_MALLOC_H_

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

class cMl {
    static void init(JKRHeap*);
    static void* memalignB(int, unsigned long);
    static void free(void*);
};

extern JKRHeap* lbl_80451150;  // SComponent::cMl::Heap

#endif