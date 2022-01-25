#ifndef JKRHEAP_H
#define JKRHEAP_H

#include "JSystem/JKernel/JKRDisposer.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"

class JKRHeap;
typedef void (*JKRErrorHandler)(void*, u32, int);

class JKRHeap : public JKRDisposer {
public:
    class TState {
    public:
        u32 mUsedSize;
        u32 mCheckCode;
        u32 mBuf;
        u32 field_0xc;
        JKRHeap* mHeap;
        u32 mId;

    public:
        u32 getUsedSize() const { return mUsedSize; }
        u32 getCheckCode() const { return mCheckCode; }
        JKRHeap* getHeap() const { return mHeap; }
        u32 getId() const { return mId; }
    };

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
    u8 changeGroupID(u8 newGroupId);
    u32 getMaxAllocatableSize(int alignment);

    JKRHeap* find(void* ptr) const;
    JKRHeap* findAllHeap(void* ptr) const;

    void dispose_subroutine(u32 start, u32 end);
    bool dispose(void* ptr, u32 size);
    void dispose(void* begin, void* end);
    void dispose();

    bool setErrorFlag(bool errorFlag);
    bool isSubHeap(JKRHeap* heap) const;

    /* vt[03] */ virtual void callAllDisposer();
    /* vt[04] */ virtual u32 getHeapType() = 0;
    /* vt[05] */ virtual bool check() = 0;
    /* vt[06] */ virtual bool dump_sort();
    /* vt[07] */ virtual bool dump() = 0;
    /* vt[08] */ virtual void do_destroy() = 0;
    /* vt[09] */ virtual void* do_alloc(u32 size, int alignment) = 0;
    /* vt[10] */ virtual void do_free(void* ptr) = 0;
    /* vt[11] */ virtual void do_freeAll() = 0;
    /* vt[12] */ virtual void do_freeTail() = 0;
    /* vt[13] */ virtual void do_fillFreeArea() = 0;
    /* vt[14] */ virtual s32 do_resize(void* ptr, u32 size) = 0;
    /* vt[15] */ virtual s32 do_getSize(void* ptr) = 0;
    /* vt[16] */ virtual s32 do_getFreeSize() = 0;
    /* vt[17] */ virtual void* do_getMaxFreeBlock() = 0;
    /* vt[18] */ virtual s32 do_getTotalFreeSize() = 0;
    /* vt[19] */ virtual u8 do_changeGroupID(u8 newGroupID);
    /* vt[20] */ virtual u8 do_getCurrentGroupId();
    /* vt[21] */ virtual void state_register(JKRHeap::TState*, unsigned long) const;
    /* vt[22] */ virtual bool state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const;
    /* vt[23] */ virtual void state_dump(JKRHeap::TState const&) const;

    void setDebugFill(bool debugFill) { mDebugFill = debugFill; }
    bool getDebugFill() const { return mDebugFill; }
    void* getStartAddr() const { return (void*)mStart; }
    void* getEndAddr() const { return (void*)mEnd; }
    u32 getSize() const { return mSize; }
    bool getErrorFlag() const { return mErrorFlag; }
    void callErrorHandler(JKRHeap* heap, u32 size, int alignment) {
        if (mErrorHandler) {
            (*mErrorHandler)(heap, size, alignment);
        }
    }

    JKRHeap* getParent() const {
        JSUTree<JKRHeap>* parent = mChildTree.getParent();
        return parent->getObject();
    }

    JSUTree<JKRHeap>& getHeapTree() { return mChildTree; }
    void appendDisposer(JKRDisposer* disposer) { mDisposerList.append(&disposer->mLink); }
    void removeDisposer(JKRDisposer* disposer) { mDisposerList.remove(&disposer->mLink); }
    void lock() { OSLockMutex(&mMutex); }
    void unlock() { OSUnlockMutex(&mMutex); }
    u32 getHeapSize() { return mSize; }

protected:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRDisposer
    /* 0x18 */ OSMutex mMutex;
    /* 0x30 */ u8* mStart;
    /* 0x34 */ u8* mEnd;
    /* 0x38 */ u32 mSize;
    /* 0x3C */ bool mDebugFill;
    /* 0x3D */ bool mCheckMemoryFilled;
    /* 0x3E */ u8 mAllocationMode;  // EAllocMode?
    /* 0x3F */ u8 mGroupId;
    /* 0x40 */ JSUTree<JKRHeap> mChildTree;
    /* 0x5C */ JSUList<JKRDisposer> mDisposerList;
    /* 0x68 */ bool mErrorFlag;
    /* 0x69 */ bool mInitFlag;
    /* 0x6A */ u8 padding_0x6a[2];

public:
    static bool initArena(char**, u32*, int);
    static void* alloc(u32 size, int alignment, JKRHeap* heap);
    static void free(void* ptr, JKRHeap* heap);
    static s32 resize(void* ptr, u32 size, JKRHeap* heap);
    static s32 getSize(void* ptr, JKRHeap* heap);
    static JKRHeap* findFromRoot(void* ptr);

    static void copyMemory(void* dst, void* src, u32 size);
    static void fillMemory(void* dst, u32 size, u8 value);  // NOTE: never used
    static bool checkMemoryFilled(void* src, u32 size, u8 value);

    static JKRErrorHandler setErrorHandler(JKRErrorHandler errorHandler);

    static void* getCodeStart(void) { return mCodeStart; }
    static void* getCodeEnd(void) { return mCodeEnd; }
    static void* getUserRamStart(void) { return mUserRamStart; }
    static void* getUserRamEnd(void) { return mUserRamEnd; }
    static u32 getMemorySize(void) { return mMemorySize; }
    static JKRHeap* getRootHeap() { return sRootHeap; }
#if DEBUG
    static JKRHeap* getRootHeap2() { return sRootHeap2; }
#endif

    static JKRHeap* getSystemHeap() { return sSystemHeap; }
    static JKRHeap* getCurrentHeap() { return sCurrentHeap; }
    static void setSystemHeap(JKRHeap* heap) { sSystemHeap = heap; }
    static void setCurrentHeap(JKRHeap* heap) { sCurrentHeap = heap; }

    static void setState_u32ID_(TState* state, u32 id) { state->mId = id; }
    static void setState_uUsedSize_(TState* state, u32 usedSize) { state->mUsedSize = usedSize; }
    static void setState_u32CheckCode_(TState* state, u32 checkCode) {
        state->mCheckCode = checkCode;
    }
    static void* getState_buf_(TState* state) { return &state->mBuf; }
    static void* getState_(TState* state) { return getState_buf_(state); }

    static void* mCodeStart;
    static void* mCodeEnd;
    static void* mUserRamStart;
    static void* mUserRamEnd;
    static u32 mMemorySize;

    static JKRHeap* sRootHeap;
#if DEBUG
    static JKRHeap* sRootHeap2;
#endif

    static JKRHeap* sSystemHeap;
    static JKRHeap* sCurrentHeap;

    static JKRErrorHandler mErrorHandler;
};

void* operator new(u32 size);
void* operator new(u32 size, int alignment);
void* operator new(u32 size, JKRHeap* heap, int alignment);

void* operator new[](u32 size);
void* operator new[](u32 size, int alignment);
void* operator new[](u32 size, JKRHeap* heap, int alignment);

void operator delete(void* ptr);
void operator delete[](void* ptr);

inline void* operator new(u32 size, void* ptr) {
    return ptr;
}

void JKRDefaultMemoryErrorRoutine(void* heap, u32 size, int alignment);

inline void* JKRAllocFromHeap(JKRHeap* heap, u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

inline void* JKRAllocFromSysHeap(u32 size, int alignment) {
    JKRHeap* systemHeap = JKRHeap::getSystemHeap();
    return systemHeap->alloc(size, alignment);
}

inline void JKRFreeToHeap(JKRHeap* heap, void* ptr) {
    JKRHeap::free(ptr, heap);
}

inline void JKRFreeToSysHeap(void* ptr) {
    JKRHeap* systemHeap = JKRHeap::getSystemHeap();
    systemHeap->free(ptr);
}

inline void JKRFree(void* ptr) {
    JKRHeap::free(ptr, NULL);
}

inline JKRHeap* JKRGetSystemHeap() {
    return JKRHeap::getSystemHeap();
}

inline JKRHeap* JKRGetCurrentHeap() {
    return JKRHeap::getCurrentHeap();
}

inline u32 JKRGetMemBlockSize(JKRHeap* heap, void* block) {
    return JKRHeap::getSize(block, heap);
}

#endif /* JKRHEAP_H */
