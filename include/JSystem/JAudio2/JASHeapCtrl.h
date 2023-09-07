#ifndef JASHEAPCTRL_H
#define JASHEAPCTRL_H

#include "JSystem/JSupport/JSUList.h"
#include "dolphin/os/OSInterrupt.h"
#include "dolphin/os/OSMutex.h"

class JASDisposer;
class JKRHeap;
class JKRSolidHeap;

class JASHeap {
public:
    /* 80290140 */ JASHeap(JASDisposer*);
    /* 802901AC */ void initRootHeap(void*, u32);
    /* 8029021C */ bool alloc(JASHeap*, u32);
    /* 802903F4 */ bool allocTail(JASHeap*, u32);
    /* 802904E4 */ void free();
    /* 80290608 */ void insertChild(JASHeap*, JASHeap*, void*, u32, bool);
    /* 802906F0 */ void getTailHeap();
    /* 8029077C */ void getTailOffset();
    /* 802907E0 */ void getCurOffset();
    /* 80290B54 */ ~JASHeap();

    void* getBase() { return mBase; }

    /* 0x00 */ JSUTree<JASHeap> mTree;
    /* 0x1C */ OSMutex mMutex;
    /* 0x34 */ JASDisposer* mDisposer;
    /* 0x38 */ void* mBase;
    /* 0x3c */ u32 mSize;
    /* 0x40 */ JASHeap* field_0x40;
};

namespace JASKernel {
    /* 802909B8 */ void setupRootHeap(JKRSolidHeap*, u32);
    /* 80290AC0 */ JKRHeap* getSystemHeap();
    /* 80290AC8 */ u32 getCommandHeap();
    /* 80290AD0 */ void setupAramHeap(u32, u32);
    /* 80290B08 */ JASHeap* getAramHeap();

    extern u8 audioAramHeap[68];
    extern u8 sAramBase[4];
    extern JKRHeap* sSystemHeap;
    extern u8 sCommandHeap[4];
};

struct JASGenericMemPool {
    /* 80290848 */ JASGenericMemPool();
    /* 80290860 */ ~JASGenericMemPool();
    /* 802908C8 */ void newMemPool(u32, int);
    /* 80290948 */ void* alloc(u32);
    /* 80290994 */ void free(void*, u32);

    /* 0x00 */ void* field_0x0;
    /* 0x04 */ int freeMemCount;
    /* 0x08 */ int totalMemCount;
    /* 0x0C */ int field_0xc;

};

namespace JASThreadingModel {
    template <typename A0>
    struct InterruptsDisable {
        struct Lock {
            Lock(const A0& param_0) { field_0x0 = OSDisableInterrupts(); }
            ~Lock() { OSRestoreInterrupts(field_0x0); }

            BOOL field_0x0;
        };
    };
};

template <typename T>
class JASMemPool : public JASGenericMemPool {
public:
    void newMemPool(int param_0) { JASGenericMemPool::newMemPool(sizeof(T), param_0); }
    void* alloc(u32 n) { return JASGenericMemPool::alloc(n); }
    void free(void* ptr, u32 n) { JASGenericMemPool::free(ptr, n); }
};

template <typename T>
class JASPoolAllocObject {
public:
    static void* operator new(size_t n) {
        JASMemPool<T>* memPool = getMemPool();
        return memPool->alloc(sizeof(T));
    }
    static void operator delete(void* ptr, size_t n) {
        JASMemPool<T>* memPool_ = getMemPool();
        memPool_->free(ptr, sizeof(T));
    }
    static void newMemPool(int param_0) {
        JASMemPool<T>* memPool_ = getMemPool();
        memPool_->newMemPool(param_0);
    }

private:
    static JASMemPool<T>* getMemPool() {
        static JASMemPool<T> memPool_;
        return &memPool_;
    }
};

template <typename T>
class JASMemPool_MultiThreaded : public JASGenericMemPool {
public:
    void newMemPool(int param_0) {
        JASThreadingModel::InterruptsDisable<JASMemPool_MultiThreaded<T> >::Lock lock(*this);
        JASGenericMemPool::newMemPool(sizeof(T), param_0);
    }

    void* alloc(size_t count) {
        JASThreadingModel::InterruptsDisable<JASMemPool_MultiThreaded<T> >::Lock lock(*this);
        return JASGenericMemPool::alloc(count);
    }

    void free(void* ptr, u32 param_1) {
        JASThreadingModel::InterruptsDisable<JASMemPool_MultiThreaded<T> >::Lock lock(*this);
        JASGenericMemPool::free(ptr, param_1);
    }
};

template <typename T>
class JASPoolAllocObject_MultiThreaded {
public:
    static void* operator new(size_t n) {
        JASMemPool_MultiThreaded<T>* memPool_ = getMemPool();
        return memPool_->alloc(sizeof(T));
    }
    static void operator delete(void* ptr, size_t n) {
        JASMemPool_MultiThreaded<T>* memPool_ = getMemPool();
        memPool_->free(ptr, sizeof(T));
    }

    static void newMemPool(int n) {
        getMemPool()->newMemPool(n);
    }

private:
    static JASMemPool_MultiThreaded<T>* getMemPool() {
        static JASMemPool_MultiThreaded<T> memPool_;
        return &memPool_;
    }
};

extern JKRSolidHeap* JASDram;

#endif /* JASHEAPCTRL_H */
