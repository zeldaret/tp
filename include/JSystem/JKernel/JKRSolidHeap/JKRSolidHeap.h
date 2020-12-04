#ifndef __JKRSOLIDHEAP_H__
#define __JKRSOLIDHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JKRSolidHeap : public JKRHeap {
  public:
    void create(u32, JKRHeap*, bool);
    JKRSolidHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRSolidHeap(void);

    void adjustSize(void);
    void allocFromHead(u32, int);
    void allocFromTail(u32, int);

    u32 getHeapType(void);
    bool check(void);
    bool dump(void);
    void do_destroy(void);
    void* do_alloc(u32, int);
    void do_free(void*);
    void do_freeAll(void);
    void do_freeTail(void);
    void do_fillFreeArea(void);
    s32 do_resize(void*, u32);
    s32 do_getSize(void*);
    s32 do_getFreeSize(void);
    void* do_getMaxFreeBlock(void);
    s32 do_getTotalFreeSize(void);
    void state_register(JKRHeap::TState*, u32) const;
    bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;
};

#endif
