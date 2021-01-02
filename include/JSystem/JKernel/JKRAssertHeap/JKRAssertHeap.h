#ifndef __JKRASSERTHEAP_H__
#define __JKRASSERTHEAP_H__

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dolphin/types.h"

class JKRAssertHeap : public JKRHeap {
protected:
    JKRAssertHeap(void*, unsigned long, JKRHeap*, bool);
    virtual ~JKRAssertHeap();

public:
    /* vt[04] */ virtual u32 getHeapType(void);           /* override */
    /* vt[05] */ virtual bool check(void);                /* override */
    /* vt[06] */ virtual bool dump_sort(void);            /* override */
    /* vt[07] */ virtual bool dump(void);                 /* override */
    /* vt[08] */ virtual void do_destroy(void);           /* override */
    /* vt[09] */ virtual void* do_alloc(u32, int);        /* override */
    /* vt[10] */ virtual void do_free(void*);             /* override */
    /* vt[11] */ virtual void do_freeAll(void);           /* override */
    /* vt[12] */ virtual void do_freeTail(void);          /* override */
    /* vt[13] */ virtual void do_fillFreeArea(void);      /* override */
    /* vt[14] */ virtual s32 do_resize(void*, u32);       /* override */
    /* vt[15] */ virtual s32 do_getSize(void*);           /* override */
    /* vt[16] */ virtual s32 do_getFreeSize(void);        /* override */
    /* vt[17] */ virtual void* do_getMaxFreeBlock(void);  /* override */
    /* vt[18] */ virtual s32 do_getTotalFreeSize(void);   /* override */
    /* vt[19] */ virtual u8 do_changeGroupID(u8 param_1); /* override */
    /* vt[20] */ virtual u8 do_getCurrentGroupId(void);   /* override */

public:
    static JKRAssertHeap* create(JKRHeap*);
};

#endif
