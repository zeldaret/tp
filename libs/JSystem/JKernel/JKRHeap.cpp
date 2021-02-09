#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "global.h"

extern "C" {
void __dl__FPv(void);
void __dt__10JSUPtrLinkFv(void);
void __dt__10JSUPtrListFv(void);
void __dt__11JKRDisposerFv(void);
void getFreeSize__7JKRHeapCFv(void);
void getMaxFreeBlock__7JKRHeapCFv(void);
void JUTException_NS_panic_f(const char* filename, int line, const char* format, ...);
void remove__10JSUPtrListFP10JSUPtrLink(void);
}

extern JKRExpHeap* sSystemHeap__7JKRHeap;

JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool errorFlag)
    : JKRDisposer(), mChildTree(this), mDisposerList() {
    OSInitMutex(&mMutex);
    mSize = size;
    mStart = (u8*)data;
    mEnd = (u8*)data + size;

    if (parent == NULL) {
        becomeSystemHeap();
        becomeCurrentHeap();
    } else {
        parent->mChildTree.appendChild(&mChildTree);

        if (getSystemHeap() == getRootHeap()) {
            becomeSystemHeap();
        }
        if (getCurrentHeap() == getRootHeap()) {
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
#ifdef NONMATCHING
JKRHeap::~JKRHeap() {
    JSUTree<JKRHeap>* parent = mChildTree.getParent();
    parent->removeChild(&mChildTree);

    JSUTree<JKRHeap>* nextRootHeap = getRootHeap()->mChildTree.getFirstChild();

    JKRHeap* rootHeap = getRootHeap();
    JKRHeap* currentHeap = getCurrentHeap();
    if (currentHeap == this) {
        if (!nextRootHeap) {
            currentHeap = rootHeap;
        } else {
            currentHeap = nextRootHeap->getObject();
        }
    }
    setCurrentHeap(currentHeap);

    JKRHeap* systemHeap = getSystemHeap();
    if (systemHeap == this) {
        if (!nextRootHeap) {
            systemHeap = rootHeap;
        } else {
            systemHeap = nextRootHeap->getObject();
        }
    }
    setSystemHeap(systemHeap);
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
    ram_start = ALIGN_NEXT(ram, 0x20);
    ram_end = ALIGN_PREV(high, 0x20);
    GLOBAL_MEMORY* globalMemory = (GLOBAL_MEMORY*)OSPhysicalToCached(0);
    mCodeStart = globalMemory;
    mCodeEnd = (void*)ram_start;
    mUserRamStart = (void*)ram_start;
    mUserRamEnd = (void*)ram_end;
    mMemorySize = globalMemory->memory_size;
    OSSetArenaLo(ram_end);
    OSSetArenaHi(ram_end);
    *memory = (char*)ram_start;
    *size = ram_end - ram_start;
    return true;
}

JKRHeap* JKRHeap::becomeSystemHeap() {
    JKRHeap* prev = JKRHeap::getSystemHeap();
    setSystemHeap(this);
    return prev;
}

JKRHeap* JKRHeap::becomeCurrentHeap() {
    JKRHeap* prev = getCurrentHeap();
    setCurrentHeap(this);
    return prev;
}

void JKRHeap::destroy() {
    do_destroy();
}

void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    if (heap != NULL) {
        return heap->alloc(size, alignment);
    }

    if (getCurrentHeap() != NULL) {
        return getCurrentHeap()->alloc(size, alignment);
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

s32 JKRHeap::getSize(void* ptr) const {
    return do_getSize(ptr);
}

s32 JKRHeap::getFreeSize() const {
    return do_getFreeSize();
}

void* JKRHeap::getMaxFreeBlock() const {
    return do_getMaxFreeBlock();
}

s32 JKRHeap::getTotalFreeSize() const {
    return do_getTotalFreeSize();
}

u8 JKRHeap::changeGroupID(u8 param_1) {
    return do_changeGroupID(param_1);
}

// "not/nor" instruction in the wrong place
#ifdef NONMATCHING
s32 JKRHeap::getMaxAllocatableSize(int alignment) const {
    u32 maxFreeBlock = (u32)getMaxFreeBlock();
    s32 freeSize = getFreeSize();

    u32 mask = alignment - 1U;
    s32 ptrOffset = mask & (alignment - (maxFreeBlock & 0xf));
    s32 alignedSize = (freeSize - ptrOffset) & ~(alignment - 1U);
    return alignedSize;
}
#else
asm u32 JKRHeap::getMaxAllocatableSize(int alignment) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}
#endif

JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    JKRHeap* rootHeap = getRootHeap();
    if (rootHeap == NULL) {
        return NULL;
    }

    if (rootHeap->getStartAddr() <= ptr && ptr < rootHeap->getEndAddr()) {
        return rootHeap->find(ptr);
    }

    return rootHeap->findAllHeap(ptr);
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

        // todo: not sure about this... casting away const for now.
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
        // todo: not sure about this... casting away const for now.
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
    const JSUList<JKRDisposer>& list = mDisposerList;
    JSUListIterator<JKRDisposer> iterator;
    while (list.getFirst() != list.getEnd()) {
        iterator = list.getFirst();
        iterator->~JKRDisposer();
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
    JUTException_NS_panic_f("JKRHeap.cpp", 0x33f, "%s", "abort\n");
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

void JKRHeap::state_register(JKRHeap::TState* p, u32 id) const {
    JUT_ASSERT(p != 0);
    JUT_ASSERT(p->getHeap() == this);
}

bool JKRHeap::state_compare(JKRHeap::TState const& r1, JKRHeap::TState const& r2) const {
    JUT_ASSERT(r1.getHeap() == r2.getHeap());
    return r1.getCheckCode() == r2.getCheckCode();
}

void JKRHeap::state_dump(JKRHeap::TState const& p) const {
    LOGF("check-code : 0x%08x", p.getCheckCode());
    LOGF("id         : 0x%08x", p.getId());
    LOGF("used size  : %u", p.getUsedSize());
}

u8 JKRHeap::do_changeGroupID(u8 newGroupID) {
    return 0;
}

u8 JKRHeap::do_getCurrentGroupId() const {
    return 0;
}

const char* lbl_8039CAEE = "\x00"; /* padding */
