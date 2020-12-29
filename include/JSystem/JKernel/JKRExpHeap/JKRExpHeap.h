#ifndef __JKREXPHEAP_H__
#define __JKREXPHEAP_H__

#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dolphin/types.h"

class JKRExpHeap : public JKRHeap {
public:
    class CMemBlock {
    public:
        void initiate(CMemBlock*, CMemBlock*, u32, u8, u8);
        void allocFore(u32, u8, u8, u8, u8);
        void allocBack(u32, u8, u8, u8, u8);
        void free(JKRExpHeap*);
        void getHeapBlock(void*);

        void newGroupId(u8 groupId) { this->mGroupId = groupId; }

        bool isValid() { return this->mMagic == 0x484d; }

        bool _isTempMemBlock() { return (this->mFlags & 0x80) ? true : false; }

        int getAlignment() const { return this->mFlags & 0x7f; }

        void* getContent() { return (void*)(this + 1); }

        CMemBlock* getPrevBlock() { return this->mPrev; }

        CMemBlock* getNextBlock() { return this->mNext; }

    private:
        u16 mMagic;
        u8 mFlags;  // a|bbbbbbb a=temporary b=alignment
        u8 mGroupId;
        u32 size;
        CMemBlock* mPrev;
        CMemBlock* mNext;
    };

protected:
    JKRExpHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRExpHeap();

    void allocFromHead(u32, int);
    void allocFromHead(u32);
    void allocFromTail(u32, int);
    void allocFromTail(u32);
    void appendUsedList(CMemBlock*);
    void setFreeBlock(CMemBlock*, CMemBlock*, CMemBlock*);
    void removeFreeBlock(CMemBlock*);
    void removeUsedBlock(CMemBlock*);
    void recycleFreeBlock(CMemBlock*);
    void joinTwoBlocks(CMemBlock*);

public:
    s32 getUsedSize(u8) const;
    s32 getTotalUsedSize(void) const;

public:
    /* vt[04] */ virtual u32 getHeapType();                                /* override */
    /* vt[05] */ virtual bool check();                                     /* override */
    /* vt[06] */ virtual void dump_sort();                                 /* override */
    /* vt[07] */ virtual bool dump();                                      /* override */
    /* vt[08] */ virtual void do_destroy();                                /* override */
    /* vt[09] */ virtual void* do_alloc(u32 size, int alignment);          /* override */
    /* vt[10] */ virtual void do_free(void* ptr);                          /* override */
    /* vt[11] */ virtual void do_freeAll();                                /* override */
    /* vt[12] */ virtual void do_freeTail();                               /* override */
    /* vt[13] */ virtual void do_fillFreeArea();                           /* override */
    /* vt[14] */ virtual s32 do_resize(void* ptr, u32 size);               /* override */
    /* vt[15] */ virtual s32 do_getSize(void* ptr);                        /* override */
    /* vt[16] */ virtual s32 do_getFreeSize();                             /* override */
    /* vt[17] */ virtual void* do_getMaxFreeBlock();                       /* override */
    /* vt[18] */ virtual s32 do_getTotalFreeSize();                        /* override */
    /* vt[19] */ virtual u8 do_changeGroupID(u8 param_1);                  /* override */
    /* vt[20] */ virtual u8 do_getCurrentGroupId();                        /* override */
    /* vt[21] */ virtual void state_register(JKRHeap::TState*, u32) const; /* override */
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const&,
                                            JKRHeap::TState const&) const; /* override */

private:
    u32 field_0x6c;
    u32 field_0x70;
    u32 field_0x74;
    CMemBlock* mHeadFreeList;
    CMemBlock* mTailFreeList;
    CMemBlock* mHeadUsedList;
    CMemBlock* mTailUsedList;

public:
    static void createRoot(int, bool);
    static void create(u32, JKRHeap*, bool);
    static void create(void*, u32, JKRHeap*, bool);
};

#endif
