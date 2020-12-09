#ifndef __JKRSOLIDHEAP_H__
#define __JKRSOLIDHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JKRSolidHeap : public JKRHeap {
  protected:
    JKRSolidHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRSolidHeap(void);

    void adjustSize(void);
    void allocFromHead(u32, int);
    void allocFromTail(u32, int);

  public:
    /* vt[04] */ virtual u32 getHeapType(void);                                                    /* override */
    /* vt[05] */ virtual bool check(void);                                                         /* override */
   
    /* vt[07] */ virtual bool dump(void);                                                          /* override */
    /* vt[08] */ virtual void do_destroy(void);                                                    /* override */
    /* vt[09] */ virtual void* do_alloc(u32, int);                                                 /* override */
    /* vt[10] */ virtual void do_free(void*);                                                      /* override */
    /* vt[11] */ virtual void do_freeAll(void);                                                    /* override */
    /* vt[12] */ virtual void do_freeTail(void);                                                   /* override */
    /* vt[13] */ virtual void do_fillFreeArea(void);                                               /* override */
    /* vt[14] */ virtual s32 do_resize(void*, u32);                                                /* override */
    /* vt[15] */ virtual s32 do_getSize(void*);                                                    /* override */
    /* vt[16] */ virtual s32 do_getFreeSize(void);                                                 /* override */
    /* vt[17] */ virtual void* do_getMaxFreeBlock(void);                                           /* override */
    /* vt[18] */ virtual s32 do_getTotalFreeSize(void);                                            /* override */
    
    /* vt[21] */ virtual void state_register(JKRHeap::TState*, u32) const;                         /* override */
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const; /* override */

  private:
    u32 mFreeSize;
    void* mSolidStart;
    void* mSolidEnd;
    u32 field_0x78;

  public:
    static void create(u32, JKRHeap*, bool);
};

#endif
