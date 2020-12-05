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

  public:
    virtual u32 getHeapType(void);
    virtual bool check(void);
    virtual bool dump(void);
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
    virtual void state_register(JKRHeap::TState*, u32) const;
    virtual bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;

  private:
    u32 mFreeSize;
    void* mSolidStart;
    void* mSolidEnd;
    u32 field_0x78;
};

#endif
