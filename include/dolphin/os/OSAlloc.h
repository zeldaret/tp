#ifndef OSALLOC_H
#define OSALLOC_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef u32 OSHeapHandle;

static void* DLInsert(void* param_0, void* param_1);
void OSFreeToHeap(OSHeapHandle heap, void* ptr);
void OSSetCurrentHeap(OSHeapHandle heap);
void* OSInitAlloc(void* lo, void* hi, s32 maxHeaps);
OSHeapHandle OSCreateHeap(void* start, void* end);

#ifdef __cplusplus
};
#endif

#endif /* OSALLOC_H */
