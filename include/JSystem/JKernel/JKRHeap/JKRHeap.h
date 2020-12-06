#ifndef __JKRHEAP_H__
#define __JKRHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"

typedef void (*JKRErrorHandler)(void*, u32, int);
class JKRHeap : public JKRDisposer {
  public:
    class TState {};

  public:
    JKRHeap(void*, u32, JKRHeap*, bool);
    virtual ~JKRHeap();

    JKRHeap* becomeSystemHeap();
    JKRHeap* becomeCurrentHeap();
    void destroy();

    void* alloc(u32 size, int alignment);
    void free(void* ptr);
    void freeAll();
    void freeTail();
    s32 resize(void* ptr, u32 size);
    s32 getSize(void* ptr);
    s32 getFreeSize();
    void* getMaxFreeBlock();
    s32 getTotalFreeSize();
    u8 changeGroupID(u8 param_1);
    s32 getMaxAllocatableSize(int alignment);

    JKRHeap* find(void* ptr) const;
    JKRHeap* findAllHeap(void* ptr) const;

    void dispose_subroutine(u32 start, u32 end);
    bool dispose(void* ptr, u32 size);
    void dispose(void* begin, void* end);
    void dispose();

    bool setErrorFlag(bool param_1);
    bool isSubHeap(JKRHeap* heap) const;

    /* vt[03] */ virtual void callAllDisposer();
    /* vt[04] */ virtual u32 getHeapType() = 0;
    /* vt[05] */ virtual bool check()      = 0;
    /* vt[06] */ virtual void dump_sort();
    /* vt[07] */ virtual bool dump()                             = 0;
    /* vt[08] */ virtual void do_destroy()                       = 0;
    /* vt[09] */ virtual void* do_alloc(u32 size, int alignment) = 0;
    /* vt[10] */ virtual void do_free(void* ptr)                 = 0;
    /* vt[11] */ virtual void do_freeAll()                       = 0;
    /* vt[12] */ virtual void do_freeTail()                      = 0;
    /* vt[13] */ virtual void do_fillFreeArea()                  = 0;
    /* vt[14] */ virtual s32 do_resize(void* ptr, u32 size)      = 0;
    /* vt[15] */ virtual s32 do_getSize(void* ptr)               = 0;
    /* vt[16] */ virtual s32 do_getFreeSize()                    = 0;
    /* vt[17] */ virtual void* do_getMaxFreeBlock()              = 0;
    /* vt[18] */ virtual s32 do_getTotalFreeSize()               = 0;
    /* vt[19] */ virtual u8 do_changeGroupID(u8 param_1);
    /* vt[20] */ virtual u8 do_getCurrentGroupId();
    /* vt[21] */ virtual void state_register(JKRHeap::TState*, unsigned long) const;
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;
    /* vt[23] */ virtual void state_dump();

    void setDebugFill(bool debugFill) {
        this->mDebugFill = debugFill;
    }

    void* getStartAddr() const {
        return (void*)mStart;
    }

    void* getEndAddr() const {
        return (void*)mEnd;
    }

    u32 getSize() const {
        return mSize;
    }

    bool getErrorFlag() {
        return mErrorFlag;
    }

    JKRHeap* getParent() {
        JSUTree<JKRHeap>* parent = this->mChildTree.getParent();
        return parent->getObject();
    }

    JSUTree<JKRHeap>& getHeapTree() {
        return this->mChildTree;
    }

    void appendDisposer(JKRDisposer* disposer) {
        mDisposerList.append(&disposer->mLink);
    }

    void removeDisposer(JKRDisposer* disposer) {
        mDisposerList.remove(&disposer->mLink);
    }

    void lock() {
        OSLockMutex(&this->mMutex);
    }

    void unlock() {
        OSUnlockMutex(&this->mMutex);
    }

  protected:
    OSMutex mMutex;
    u32 mStart;
    u32 mEnd;
    u32 mSize;
    bool mDebugFill;
    bool mCheckMemoryFilled;
    u8 mAllocationMode; // EAllocMode?
    u8 mGroupId;
    JSUTree<JKRHeap> mChildTree;
    JSUList<JKRDisposer> mDisposerList;
    bool mErrorFlag;
    bool mInitFlag;
    u8 padding_0x6a[2];

  public:
    static bool initArena(char**, u32*, int);
    static void* alloc(u32 size, int alignment, JKRHeap* heap);
    static void free(void* ptr, JKRHeap* heap);
    static s32 resize(void* ptr, u32 size, JKRHeap* heap);
    static s32 getSize(void* ptr, JKRHeap* heap);
    static JKRHeap* findFromRoot(void* ptr);

    static void copyMemory(void* dst, void* src, u32 size);
    static void fillMemory(void* dst, u32 size, u8 value); // NOTE: never used
    static bool checkMemoryFilled(void* src, u32 size, u8 value);

    static void JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment);
    static JKRErrorHandler setErrorHandler(JKRErrorHandler error_handler);

    static void* getCodeStart(void) {
        return lbl_80451384;
    }

    static void* getCodeEnd(void) {
        return lbl_80451388;
    }

    static void* getUserRamStart(void) {
        return lbl_8045138C;
    }

    static void* getUserRamEnd(void) {
        return lbl_80451390;
    }

    static u32 getMemorySize(void) {
        return lbl_80451394;
    }

    static JKRHeap* getRootHeap() {
        return lbl_80451378;
    }

    static JKRHeap* getSystemHeap() {
        return lbl_80451370;
    }

    static JKRHeap* getCurrentHeap() {
        return lbl_80451374;
    }
};

void* operator new(u32 size);
void* operator new(u32 size, int alignment);
void* operator new(u32 size, JKRHeap* heap, int alignment);

void* operator new[](u32 size);
void* operator new[](u32 size, int alignment);
void* operator new[](u32 size, JKRHeap* heap, int alignment);

void operator delete(void* ptr);
void operator delete[](void* ptr);

#endif