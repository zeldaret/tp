#ifndef __JKRHEAP_VTABLE_H__
#define __JKRHEAP_VTABLE_H__

#include "dolphin/types.h"

class JKRHeap;
struct _VTABLE_JKRHeap {
    void (*func0)(JKRHeap*);
    void (*_ct)(JKRHeap*);
    void (*_dt)(JKRHeap*);
    void (*callAllDisposer)(JKRHeap*);
    void (*func4)(JKRHeap*);
    void (*func5)(JKRHeap*);
    void (*dump_sort)(JKRHeap*);
    void (*func7)(JKRHeap*);
    void (*do_destroy)(JKRHeap*);
    void* (*do_alloc)(JKRHeap*,u32 size, int alignment);
    void (*do_free)(JKRHeap*,void*ptr);
    void (*do_freeAll)(JKRHeap*);
    void (*do_freeTail)(JKRHeap*);
    void (*func13)(JKRHeap*);
    s32 (*do_resize)(JKRHeap*, void* ptr, u32 size);
    s32 (*do_getSize)(JKRHeap*, void* ptr);
    s32 (*do_getFreeSize)(JKRHeap*);
    s32 (*do_getMaxFreeBlock)(JKRHeap*);
    s32 (*do_getTotalFreeSize)(JKRHeap*);
    u8 (*do_changeGroupID)(JKRHeap*, u8 param_1);
    void (*do_getCurrent)(JKRHeap*);
    void (*state_register)(JKRHeap*);
    void (*state_compare)(JKRHeap*);
    void (*state_dump)(JKRHeap*);
};

#endif