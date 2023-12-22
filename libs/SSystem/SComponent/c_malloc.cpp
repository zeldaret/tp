/**
 * c_malloc.cpp
 *
 */

#include "SSystem/SComponent/c_malloc.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/types.h"

/* ############################################################################################## */
/* 80451150-80451158 0004+04 s=3 e=0 z=0  None .sbss      Heap__3cMl */
JKRHeap* cMl::Heap;

/* 80263220-80263228 0008+00 s=0 e=1 z=0  None .text      init__3cMlFP7JKRHeap */
void cMl::init(JKRHeap* heap) {
    Heap = heap;
}

/* 80263228-80263260 0038+00 s=0 e=8 z=0  None .text      memalignB__3cMlFiUl */
void* cMl::memalignB(int alignment, unsigned long size) {
    if (size == 0) {
        return NULL;
    } else {
        return Heap->alloc(size, alignment);
    }
}

/* 80263260-8026328C 002C+00 s=0 e=4 z=0  None .text      free__3cMlFPv */
void cMl::free(void* ptr) {
    if (ptr != NULL) {
        Heap->free(ptr);
    }
}
