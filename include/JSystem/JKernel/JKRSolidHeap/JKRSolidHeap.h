#ifndef __JKRSOLIDHEAP_H__
#define __JKRSOLIDHEAP_H__

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dolphin/types.h"

class JKRSolidHeap : public JKRHeap {
public:
    struct Unknown {
        u32 field_0x0;
        u32 field_0x4;
        u32 field_0x8;
        void* field_0xc;
        Unknown* mNext;
    };

protected:
    JKRSolidHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRSolidHeap();

    s32 adjustSize(void);
    void* allocFromHead(u32, int);
    void* allocFromTail(u32, int);

    s32 getUsedSize() const { return mSize - getTotalFreeSize(); }

public:
    /* vt[04] */ virtual u32 getHeapType(void) const; /* override */
    /* vt[05] */ virtual bool check(void);            /* override */

    /* vt[07] */ virtual bool dump(void);                      /* override */
    /* vt[08] */ virtual void do_destroy(void);                /* override */
    /* vt[09] */ virtual void* do_alloc(u32, int);             /* override */
    /* vt[10] */ virtual void do_free(void*);                  /* override */
    /* vt[11] */ virtual void do_freeAll(void);                /* override */
    /* vt[12] */ virtual void do_freeTail(void);               /* override */
    /* vt[13] */ virtual void do_fillFreeArea(void);           /* override */
    /* vt[14] */ virtual s32 do_resize(void*, u32);            /* override */
    /* vt[15] */ virtual s32 do_getSize(void*) const;          /* override */
    /* vt[16] */ virtual s32 do_getFreeSize(void) const;       /* override */
    /* vt[17] */ virtual void* do_getMaxFreeBlock(void) const; /* override */
    /* vt[18] */ virtual s32 do_getTotalFreeSize(void) const;  /* override */

    /* vt[21] */ virtual void state_register(JKRHeap::TState*, u32) const; /* override */
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const&,
                                            JKRHeap::TState const&) const; /* override */

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRHeap
    /* 0x6C */ u32 mFreeSize;
    /* 0x70 */ u8* mSolidHead;
    /* 0x74 */ u8* mSolidTail;
    /* 0x78 */ Unknown* field_0x78;

public:
    static JKRSolidHeap* create(u32, JKRHeap*, bool);
};

extern "C" {
    JKRSolidHeap* JKRSolidHeap_NS_create(u32 size, JKRHeap* heap, bool use_default_error_handler);
}

#endif
