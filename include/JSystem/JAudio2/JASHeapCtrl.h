#ifndef JASHEAPCTRL_H
#define JASHEAPCTRL_H

#include "JSystem/JSupport/JSUList.h"
#include "dolphin/os/OSInterrupt.h"
#include "dolphin/os/OSMutex.h"

class JASDisposer;
class JKRHeap;
class JKRSolidHeap;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASHeap {
public:
    /* 80290140 */ JASHeap(JASDisposer* param_0 = NULL);
    /* 802901AC */ void initRootHeap(void*, u32);
    /* 8029021C */ bool alloc(JASHeap*, u32);
    /* 802903F4 */ bool allocTail(JASHeap*, u32);
    /* 802904E4 */ bool free();
    /* 80290608 */ void insertChild(JASHeap*, JASHeap*, void*, u32, bool);
    /* 802906F0 */ JASHeap* getTailHeap();
    /* 8029077C */ u32 getTailOffset();
    /* 802907E0 */ u32 getCurOffset();
    /* 80290B54 */ ~JASHeap() {}

    void* getBase() { return mBase; }
    bool isAllocated() { return mBase; }

    /* 0x00 */ JSUTree<JASHeap> mTree;
    /* 0x1C */ OSMutex mMutex;
    /* 0x34 */ JASDisposer* mDisposer;
    /* 0x38 */ u8* mBase;
    /* 0x3c */ u32 mSize;
    /* 0x40 */ JASHeap* field_0x40;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
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

    
    struct ObjectLevelLockable {
        // Should be templated on the chunk memory but couldn't initialize it inside the class itself
        //template <typename A0>
        struct Lock {
            Lock(OSMutex* mutex) {
                mMutex = mutex;
                OSLockMutex(mMutex);
            }

            ~Lock() {
                OSUnlockMutex(mMutex);
            }

            OSMutex* mMutex;
        };
    };
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
template <typename T>
class JASMemPool : public JASGenericMemPool {
public:
    void newMemPool(int param_0) { JASGenericMemPool::newMemPool(sizeof(T), param_0); }
    void* alloc(u32 n) { return JASGenericMemPool::alloc(n); }
    void free(void* ptr, u32 n) { JASGenericMemPool::free(ptr, n); }
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
template<u32 ChunkSize, typename T>
class JASMemChunkPool {
    struct MemoryChunk {
        MemoryChunk(MemoryChunk* nextChunk) {
            mNextChunk = nextChunk;
            mUsedSize = 0;
            mChunks = 0;
        }

        bool checkArea(void* ptr) {
            return (u8*)this + 0xc <= (u8*)ptr && (u8*)ptr < (u8*)this + (ChunkSize + 0xc);
        }

        MemoryChunk* getNextChunk() {
            return mNextChunk;
        }

        void* alloc(u32 size) {
            u8* rv = mBuffer + mUsedSize;
            mUsedSize += size;
            mChunks++;
            return rv;
        }

        void free() {
            mChunks--;
        }

        bool isEmpty() {
            return mChunks == 0;
        }

        void setNextChunk(MemoryChunk* chunk) {
            mNextChunk = chunk;
        }

        u32 getFreeSize() {
            return ChunkSize - mUsedSize;
        }

        void revive() {
            mUsedSize = 0;
        }

        MemoryChunk* mNextChunk;
        u32 mUsedSize;
        u32 mChunks;
        u8 mBuffer[ChunkSize];
    };
public:
    bool createNewChunk() {
        bool uVar2;
        if (field_0x18 != NULL && field_0x18->isEmpty()) {
            field_0x18->revive();
            uVar2 = 1;
        } else {
            MemoryChunk* pMVar4 = field_0x18;
            field_0x18 = new (JASKernel::getSystemHeap(), 0) MemoryChunk(pMVar4);
            if (field_0x18 != NULL) {
                uVar2 = 1;
            } else {
                field_0x18 = new (JKRHeap::getSystemHeap(), 0) MemoryChunk(pMVar4);
                if (field_0x18 != NULL) {
                    uVar2 = 1;
                } else {
                    field_0x18 = pMVar4;
                    uVar2 = 0;
                }
            }
        }
        return uVar2;
    }

    void* alloc(u32 size) {
        T::Lock lock(&mMutex);
        if (field_0x18->getFreeSize() < size) {
            if (ChunkSize < size) {
                return NULL;
            }
            if (createNewChunk() == 0) {
                return NULL;
            }
        }
        return field_0x18->alloc(size);
    }

    void free(void* ptr) {
        T::Lock lock(&mMutex);
        MemoryChunk* chunk = field_0x18;
        MemoryChunk* prevChunk = NULL;
        while (chunk != NULL) {
            if (chunk->checkArea(ptr)) {
                chunk->free();
                if (chunk != field_0x18 && chunk->isEmpty()) {
                    MemoryChunk* nextChunk = chunk->getNextChunk();
                    delete chunk;
                    prevChunk->setNextChunk(nextChunk);
                }
                return;
            }
            prevChunk = chunk;
            chunk = chunk->getNextChunk();
        }
    }

    /* 0x00 */ OSMutex mMutex;
    /* 0x18 */ MemoryChunk* field_0x18;
};

namespace JASKernel {
    /* 802909B8 */ void setupRootHeap(JKRSolidHeap*, u32);
    /* 80290AC0 */ JKRHeap* getSystemHeap();
    /* 80290AC8 */ JASMemChunkPool<1024, JASThreadingModel::ObjectLevelLockable>* getCommandHeap();
    /* 80290AD0 */ void setupAramHeap(u32, u32);
    /* 80290B08 */ JASHeap* getAramHeap();

    extern u8 audioAramHeap[68];
    extern u32 sAramBase;
    extern JKRHeap* sSystemHeap;
    extern JASMemChunkPool<1024, JASThreadingModel::ObjectLevelLockable>* sCommandHeap;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
template <typename T>
class JASPoolAllocObject {
public:
    static void* operator new(size_t n) {
        JASMemPool<T>* memPool = getMemPool();
        return memPool->alloc(sizeof(T));
    }
    static void* operator new(size_t n, void* ptr) {
        return ptr;
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

/**
 * @ingroup jsystem-jaudio
 * 
 */
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

/**
 * @ingroup jsystem-jaudio
 * 
 */
template <typename T>
class JASPoolAllocObject_MultiThreaded {
public:
    static void* operator new(size_t n) {
        JASMemPool_MultiThreaded<T>* memPool_ = getMemPool();
        return memPool_->alloc(sizeof(T));
    }
    static void* operator new(size_t n, void* ptr) {
        return ptr;
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
