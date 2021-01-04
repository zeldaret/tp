#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool errorFlag)
    : JKRDisposer(), mChildTree(this), mDisposerList() {
    OSInitMutex(&mMutex);
    mSize = size;
    mStart = (u32)data;
    mEnd = (u32)data + size;

    if (parent == NULL) {
        becomeSystemHeap();
        becomeCurrentHeap();
    } else {
        parent->mChildTree.appendChild(&mChildTree);

        if (lbl_80451370 == lbl_80451378) {
            becomeSystemHeap();
        }
        if (lbl_80451374 == lbl_80451378) {
            becomeCurrentHeap();
        }
    }

    mErrorFlag = errorFlag;
    if ((mErrorFlag == true) && (lbl_8045137C == NULL)) {
        lbl_8045137C = JKRHeap::JKRDefaultMemoryErrorRoutine;
    }

    mDebugFill = lbl_804508B0;
    mCheckMemoryFilled = lbl_80451380;
    mInitFlag = false;
}

// using the wrong register for storing the results
// lbl_80451370 = systemHeap;
#ifdef NONMATCHING
JKRHeap::~JKRHeap() {
    JSUTree<JKRHeap>* parent = mChildTree.getParent();
    parent->removeChild(&mChildTree);

    JSUTree<JKRHeap>* nextRootHeap = lbl_80451378->mChildTree.getFirstChild();

    JKRHeap* rootHeap = lbl_80451378;
    JKRHeap* currentHeap = lbl_80451374;
    if (currentHeap == this) {
        if (!nextRootHeap) {
            currentHeap = rootHeap;
        } else {
            currentHeap = nextRootHeap->getObject();
        }
    }
    lbl_80451374 = currentHeap;

    JKRHeap* systemHeap = lbl_80451370;
    if (systemHeap == this) {
        if (!nextRootHeap) {
            systemHeap = rootHeap;
        } else {
            systemHeap = nextRootHeap->getObject();
        }
    }
    lbl_80451370 = systemHeap;
}
#else
asm JKRHeap::~JKRHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE264.s"
}
#endif
bool JKRHeap::initArena(char** memory, u32* size, int param_3) {
    u32 ram_start;
    u32 ram_end;
    u32 ram;

    u32 low = OSGetArenaLo();
    u32 high = OSGetArenaHi();
    if (low == high)
        return false;

    ram = OSInitAlloc(low, high, param_3);
    ram_start = (ram + 0x1fU & 0xffffffe0);
    ram_end = (high & 0xffffffe0);
    lbl_80451384 = OS_GLOBAL_ADDR(void, 0x80000000);
    lbl_80451388 = (void*)ram_start;
    lbl_8045138C = (void*)ram_start;
    lbl_80451390 = (void*)ram_end;
    lbl_80451394 = OS_GLOBAL(u32, 0x80000028);
    OSSetArenaLo(ram_end);
    OSSetArenaHi(ram_end);
    *memory = (char*)ram_start;
    *size = ram_end - ram_start;
    return true;
}

JKRHeap* JKRHeap::becomeSystemHeap() {
    JKRHeap* prev = lbl_80451370;
    lbl_80451370 = this;
    return prev;
}

JKRHeap* JKRHeap::becomeCurrentHeap() {
    JKRHeap* prev = lbl_80451374;
    lbl_80451374 = this;
    return prev;
}

void JKRHeap::destroy() {
    do_destroy();
}

void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    if (heap != NULL) {
        return heap->alloc(size, alignment);
    }

    if (lbl_80451374 != NULL) {
        return lbl_80451374->alloc(size, alignment);
    }

    return NULL;
}

void* JKRHeap::alloc(u32 size, int alignment) {
    return do_alloc(size, alignment);
}

void JKRHeap::free(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return;
    }

    heap->free(ptr);
}

void JKRHeap::free(void* ptr) {
    do_free(ptr);
}

asm void JKRHeap::callAllDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE574.s"
}

void JKRHeap::freeAll() {
    do_freeAll();
}

void JKRHeap::freeTail() {
    do_freeTail();
}

s32 JKRHeap::resize(void* ptr, u32 size, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return -1;
    }

    return heap->resize(ptr, size);
}

s32 JKRHeap::resize(void* ptr, u32 size) {
    return do_resize(ptr, size);
}

s32 JKRHeap::getSize(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap)
            return -1;
    }

    return heap->getSize(ptr);
}

s32 JKRHeap::getSize(void* ptr) {
    return do_getSize(ptr);
}

s32 JKRHeap::getFreeSize() {
    return do_getFreeSize();
}

void* JKRHeap::getMaxFreeBlock() {
    return do_getMaxFreeBlock();
}

s32 JKRHeap::getTotalFreeSize() {
    return do_getTotalFreeSize();
}

u8 JKRHeap::changeGroupID(u8 param_1) {
    return do_changeGroupID(param_1);
}

// "not/nor" instruction in the wrong place
#ifdef NONMATCHING
s32 JKRHeap::getMaxAllocatableSize(int alignment) {
    u32 maxFreeBlock = (u32)getMaxFreeBlock();
    s32 freeSize = getFreeSize();

    u32 mask = alignment - 1U;
    s32 ptrOffset = mask & (alignment - (maxFreeBlock & 0xf));
    s32 alignedSize = (freeSize - ptrOffset) & ~(alignment - 1U);
    return alignedSize;
}
#else
asm s32 JKRHeap::getMaxAllocatableSize(int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}
#endif

JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    if (lbl_80451378 == NULL) {
        return NULL;
    }

    if (lbl_80451378->getStartAddr() <= ptr && ptr < lbl_80451378->getEndAddr()) {
        return lbl_80451378->find(ptr);
    }

    return lbl_80451378->findAllHeap(ptr);
}

JKRHeap* JKRHeap::find(void* ptr) const {
    if (getStartAddr() <= ptr && ptr < getEndAddr()) {
        const JSUTree<JKRHeap>& tree = mChildTree;
        if (tree.getNumChildren() != 0) {
            JSUTreeIterator<JKRHeap> iterator;
            for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
                JKRHeap* child = iterator.getObject();
                JKRHeap* result = child->find(ptr);
                if (result) {
                    return result;
                }
            }
        }

        return (JKRHeap*)this;
    }

    return NULL;
}

JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    const JSUTree<JKRHeap>& tree = mChildTree;
    if (tree.getNumChildren() != 0) {
        JSUTreeIterator<JKRHeap> iterator;
        for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
            JKRHeap* child = iterator.getObject();
            JKRHeap* result = child->findAllHeap(ptr);
            if (result) {
                return result;
            }
        }
    }

    if (getStartAddr() <= ptr && ptr < getEndAddr()) {
        // not sure about this... casting away const for now.
        return (JKRHeap*)this;
    }

    return NULL;
}

void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    JSUListIterator<JKRDisposer> last_iterator;
    JSUListIterator<JKRDisposer> next_iterator;
    JSUListIterator<JKRDisposer> iterator;
    for (iterator = mDisposerList.getFirst(); iterator != mDisposerList.getEnd();
         iterator = next_iterator) {
        JKRDisposer* disposer = iterator.getObject();

        if ((void*)begin <= disposer && disposer < (void*)end) {
            disposer->~JKRDisposer();
            if (last_iterator == NULL) {
                next_iterator = mDisposerList.getFirst();
            } else {
                next_iterator = last_iterator;
                next_iterator++;
            }
        } else {
            last_iterator = iterator;
            next_iterator = iterator;
            next_iterator++;
        }
    }
}

bool JKRHeap::dispose(void* ptr, u32 size) {
    u32 begin = (u32)ptr;
    u32 end = (u32)ptr + size;
    dispose_subroutine(begin, end);
    return false;
}

void JKRHeap::dispose(void* begin, void* end) {
    dispose_subroutine((u32)begin, (u32)end);
}

// missing stack variable?
#ifdef NONMATCHING
void JKRHeap::dispose() {
    JKRDisposer* disposer;
    JSUListIterator<JKRDisposer> iterator;

    JSUList<JKRDisposer>* list = &mDisposerList;
    while (iterator = list->getFirst(), iterator != list->getEnd()) {
        disposer = iterator.getObject();
        disposer->~JKRDisposer();
    }
}
#else
asm void JKRHeap::dispose() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEAC0.s"
}
#endif

void JKRHeap::copyMemory(void* dst, void* src, u32 size) {
    u32 count = (size + 3) / 4;

    u32* dst_32 = (u32*)dst;
    u32* src_32 = (u32*)src;
    while (count > 0) {
        *dst_32 = *src_32;
        dst_32++;
        src_32++;
        count--;
    }
}

void JKRHeap::JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment) {
    const char* filename = lbl_8039CAD8;     // "JKRHeap.cpp"
    const char* format = lbl_8039CAD8 + 12;  // "%s"
    const char* arg1 = lbl_8039CAD8 + 15;    // "abort\n"
    JUTException_NS_panic_f(filename, 0x33f, format, arg1);
}

bool JKRHeap::setErrorFlag(bool errorFlag) {
    bool prev = mErrorFlag;
    mErrorFlag = errorFlag;
    return prev;
}

JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler errorHandler) {
    JKRErrorHandler prev = (JKRErrorHandler)lbl_8045137C;

    if (!errorHandler) {
        errorHandler = (JKRErrorHandler)JKRHeap::JKRDefaultMemoryErrorRoutine;
    }

    lbl_8045137C = errorHandler;
    return prev;
}

bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    if (!heap)
        return false;

    const JSUTree<JKRHeap>& tree = mChildTree;
    if (tree.getNumChildren() != 0) {
        JSUTreeIterator<JKRHeap> iterator;
        for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); ++iterator) {
            JKRHeap* child = iterator.getObject();
            if (child == heap) {
                return true;
            }

            bool is_sub_heap = child->isSubHeap(heap);
            if (is_sub_heap) {
                return true;
            }
        }
    }

    return false;
}

void* operator new(u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

void* operator new(u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

void* operator new(u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

void* operator new[](u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

void* operator new[](u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

void* operator new[](u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

void operator delete(void* ptr) {
    JKRHeap::free(ptr, NULL);
}

void operator delete[](void* ptr) {
    JKRHeap::free(ptr, NULL);
}
