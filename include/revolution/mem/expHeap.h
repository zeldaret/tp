#ifndef _REVOLUTION_MEM_EXPHEAP_H_
#define _REVOLUTION_MEM_EXPHEAP_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/mem/heapCommon.h>

typedef struct MEMiExpHeapMBlockHead MEMiExpHeapMBlockHead;

struct MEMiExPheapMBlockHead {
    u16 signature;

    union {
        u16 val;

        struct {
            u16 allocDir : 1;
            u16 alignment : 7;
            u16 groupID : 8;
        } fields;
    } attribute;

    u32 blockSize;
    MEMiExpHeapMBlockHead* prev;
    MEMiExpHeapMBlockHead* next;
};

MEMHeapHandle MEMCreateExpHeapEx(void*, u32, u16);
void* MEMDestroyExpHeap(MEMHeapHandle);
void* MEMAllocFromExpHeapEx(MEMHeapHandle, u32, int);
void MEMFreeToExpHeap(MEMHeapHandle, void*);
u32 MEMGetAllocatableSizeForExpHeapEx(MEMHeapHandle, int);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_MEM_EXPHEAP_H_
