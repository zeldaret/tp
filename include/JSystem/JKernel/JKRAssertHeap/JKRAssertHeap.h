#ifndef __JKRASSERTHEAP_H__
#define __JKRASSERTHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JKRAssertHeap : public JKRHeap {
  public:
    JKRAssertHeap(void*, unsigned long, JKRHeap*, bool);
    virtual ~JKRAssertHeap();

    static void create(JKRHeap*);

    virtual u32 getHeapType(void);
    virtual bool check(void);
    virtual bool dump(void);
    virtual void dump_sort(void);
    virtual void do_destroy(void);
    virtual void* do_alloc(u32, int);
    virtual void do_free(void*);
    virtual void do_freeAll(void);
    virtual void do_freeTail(void);
    virtual void do_fillFreeArea(void);
    virtual s32 do_resize(void*, u32);
    virtual s32 do_getSize(void*);
    virtual s32 do_getFreeSize(void);
    virtual void* do_getMaxFreeBlock(void);
    virtual s32 do_getTotalFreeSize(void);
    virtual u8 do_changeGroupID(u8 param_1);
    virtual u8 do_getCurrentGroupId(void);
};

#endif
