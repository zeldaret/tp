#ifndef JKREXPHEAP_H
#define JKREXPHEAP_H

#include "JSystem/JKernel/JKRHeap.h"
#include "dolphin/types.h"

class JKRExpHeap : public JKRHeap {
public:
    class CMemBlock {
        friend class JKRExpHeap;

    public:
        void initiate(CMemBlock* prev, CMemBlock* next, u32 size, u8 groupId, u8 alignment);
        JKRExpHeap::CMemBlock* allocFore(u32 size, u8 groupId1, u8 alignment1, u8 groupId2,
                                         u8 alignment2);
        JKRExpHeap::CMemBlock* allocBack(u32 size, u8 groupId1, u8 alignment1, u8 groupId2,
                                         u8 alignment2);
        int free(JKRExpHeap* heap);
        static CMemBlock* getHeapBlock(void* ptr);

        void newGroupId(u8 groupId) { this->mGroupId = groupId; }
        bool isValid() const { return this->mMagic == 'HM'; }
        bool _isTempMemBlock() const { return (this->mFlags & 0x80) ? true : false; }
        int getAlignment() const { return this->mFlags & 0x7f; }
        void* getContent() const { return (void*)(this + 1); }
        CMemBlock* getPrevBlock() const { return this->mPrev; }
        CMemBlock* getNextBlock() const { return this->mNext; }
        u32 getSize() const { return this->size; }
        u8 getGroupId() const { return this->mGroupId; }
        static CMemBlock* getBlock(void* data) { return (CMemBlock*)((u32)data + -0x10); }

    private:
        u16 mMagic;
        u8 mFlags;  // a|bbbbbbb a=temporary b=alignment
        u8 mGroupId;
        u32 size;
        CMemBlock* mPrev;
        CMemBlock* mNext;
    };
    friend class CMemBlock;

protected:
    JKRExpHeap(void* data, u32 size, JKRHeap* parent, bool errorFlag);
    virtual ~JKRExpHeap();

    void* allocFromHead(u32 size, int align);
    void* allocFromHead(u32 size);
    void* allocFromTail(u32 size, int align);
    void* allocFromTail(u32 size);
    void appendUsedList(CMemBlock* newblock);
    void setFreeBlock(CMemBlock* block, CMemBlock* prev, CMemBlock* next);
    void removeFreeBlock(CMemBlock* block);
    void removeUsedBlock(CMemBlock* block);
    void recycleFreeBlock(CMemBlock* block);
    void joinTwoBlocks(CMemBlock* block);

public:
    s32 getUsedSize(u8 groupId) const;
    s32 getTotalUsedSize(void) const;
    CMemBlock* getHeadUsedList() const { return mHeadUsedList; }

public:
    /* vt[04] */ virtual u32 getHeapType();                                     /* override */
    /* vt[05] */ virtual bool check();                                          /* override */
    /* vt[06] */ virtual bool dump_sort();                                      /* override */
    /* vt[07] */ virtual bool dump();                                           /* override */
    /* vt[08] */ virtual void do_destroy();                                     /* override */
    /* vt[09] */ virtual void* do_alloc(u32 size, int alignment);               /* override */
    /* vt[10] */ virtual void do_free(void* ptr);                               /* override */
    /* vt[11] */ virtual void do_freeAll();                                     /* override */
    /* vt[12] */ virtual void do_freeTail();                                    /* override */
    /* vt[13] */ virtual void do_fillFreeArea();                                /* override */
    /* vt[14] */ virtual s32 do_resize(void* ptr, u32 size);                    /* override */
    /* vt[15] */ virtual s32 do_getSize(void* ptr);                             /* override */
    /* vt[16] */ virtual s32 do_getFreeSize();                                  /* override */
    /* vt[17] */ virtual void* do_getMaxFreeBlock();                            /* override */
    /* vt[18] */ virtual s32 do_getTotalFreeSize();                             /* override */
    /* vt[19] */ virtual s32 do_changeGroupID(u8 newGroupID);                   /* override */
    /* vt[20] */ virtual u8 do_getCurrentGroupId();                             /* override */
    /* vt[21] */ virtual void state_register(JKRHeap::TState* p, u32 id) const; /* override */
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const& r1,
                                            JKRHeap::TState const& r2) const; /* override */

    u8 field_0x6c;
    u8 mCurrentGroupId;
    bool field_0x6e;

private:
    void* field_0x70;
    u32 field_0x74;
    CMemBlock* mHeadFreeList;
    CMemBlock* mTailFreeList;
    CMemBlock* mHeadUsedList;
    CMemBlock* mTailUsedList;

public:
    static JKRExpHeap* createRoot(int maxHeaps, bool errorFlag);
    static JKRExpHeap* create(u32 size, JKRHeap* parent, bool errorFlag);
    static JKRExpHeap* create(void* ptr, u32 size, JKRHeap* parent, bool errorFlag);
};

inline JKRExpHeap* JKRCreateExpHeap(u32 size, JKRHeap* parent, bool errorFlag) {
    return JKRExpHeap::create(size, parent, errorFlag);
}

#endif /* JKREXPHEAP_H */
