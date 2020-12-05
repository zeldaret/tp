#ifndef __JKREXPHEAP_H__
#define __JKREXPHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"

class JKRExpHeap : public JKRHeap {
  public:
    class CMemBlock {
      public:
        void initiate(CMemBlock*, CMemBlock*, u32, u8, u8);
        void allocFore(u32, u8, u8, u8, u8);
        void allocBack(u32, u8, u8, u8, u8);
        void free(JKRExpHeap*);
        void getHeapBlock(void*);

        void newGroupId(u8 groupId) {
            this->mGroupId = groupId;
        }

      public:
        bool isValid() {
            return this->mMagic == 0x484d;
        }

        bool _isTempMemBlock() {
            return (this->mFlags & 0x80) ? true : false;
        }

        int getAlignment() const {
            return this->mFlags & 0x7f;
        }

        void* getContent() {
            return (void*)(this + 1);
        }

        CMemBlock* getPrevBlock() {
            return this->mPrev;
        }

        CMemBlock* getNextBlock() {
            return this->mNext;
        }

      private:
        u16 mMagic;
        u8 mFlags; // a|bbbbbbb a=temporary b=alignment
        u8 mGroupId;
        u32 size;
        CMemBlock* mPrev;
        CMemBlock* mNext;
    };

  public:
    void createRoot(int, bool);
    void create(u32, JKRHeap*, bool);
    void create(void*, u32, JKRHeap*, bool);

    JKRExpHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRExpHeap();

    void allocFromHead(u32, int);
    void allocFromHead(u32);
    void allocFromTail(u32, int);
    void allocFromTail(u32);
    s32 getUsedSize(u8) const;
    s32 getTotalUsedSize(void) const;
    void appendUsedList(CMemBlock*);
    void setFreeBlock(CMemBlock*, CMemBlock*, CMemBlock*);
    void removeFreeBlock(CMemBlock*);
    void removeUsedBlock(CMemBlock*);
    void recycleFreeBlock(CMemBlock*);
    void joinTwoBlocks(CMemBlock*);

  public:
    virtual u32 getHeapType();
    virtual bool check();
    virtual void dump_sort();
    virtual bool dump();
    virtual void do_destroy();
    virtual void* do_alloc(u32 size, int alignment);
    virtual void do_free(void* ptr);
    virtual void do_freeAll();
    virtual void do_freeTail();
    virtual void do_fillFreeArea();
    virtual s32 do_resize(void* ptr, u32 size);
    virtual s32 do_getSize(void* ptr);
    virtual s32 do_getFreeSize();
    virtual void* do_getMaxFreeBlock();
    virtual s32 do_getTotalFreeSize();
    virtual u8 do_changeGroupID(u8 param_1);
    virtual u8 do_getCurrentGroupId();
    virtual void state_register(JKRHeap::TState*, u32) const;
    virtual bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;

  private:
    u32 field_0x6c;
    u32 field_0x70;
    u32 field_0x74;
    CMemBlock* mHeadFreeList;
    CMemBlock* mTailFreeList;
    CMemBlock* mHeadUsedList;
    CMemBlock* mTailUsedList;
};

#endif
