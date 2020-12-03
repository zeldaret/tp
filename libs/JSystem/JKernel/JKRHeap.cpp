#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE138.s"
JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_flag)
    : JKRDisposer(), mChildTree(this), mDisposerList() {
    OSInitMutex(this->mutex);
    this->mSize  = size;
    this->mBegin = (u32)data;
    this->mEnd   = (u32)data + size;

    if (parent == NULL) {
        this->becomeSystemHeap();
        this->becomeCurrentHeap();
    } else {
        parent->mChildTree.appendChild(&this->mChildTree);

        if (lbl_80451370 == lbl_80451378) {
            this->becomeSystemHeap();
        }
        if (lbl_80451374 == lbl_80451378) {
            this->becomeCurrentHeap();
        }
    }

    this->mErrorFlag = error_flag;
    if ((this->mErrorFlag == true) && (lbl_8045137C == NULL)) {
        lbl_8045137C = JKRHeap::JKRDefaultMemoryErrorRoutine;
    }

    this->field_0x3c = lbl_804508B0[0];
    this->field_0x3d = lbl_80451380[0];
    this->field_0x69 = 0;
}

// using the wrong register for storing the results
// lbl_80451370 = systemHeap;
#ifdef NONMATCHING
JKRHeap::~JKRHeap() {
    JSUTree<JKRHeap>* parent = this->mChildTree.getParent();
    parent->removeChild(&this->mChildTree);

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

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE378.s"
bool JKRHeap::initArena(char** memory, u32* size, int param_3) {
    u32 ram_start;
    u32 ram_end;
    u32 ram;

    u32 low  = OSGetArenaLo();
    u32 high = OSGetArenaHi();
    if (low == high) return false;

    ram          = OSInitAlloc(low, high, param_3);
    ram_start    = (ram + 0x1fU & 0xffffffe0);
    ram_end      = (high & 0xffffffe0);
    lbl_80451384 = OS_GLOBAL_ADDR(void, 0x80000000);
    lbl_80451388 = (void*)ram_start;
    lbl_8045138C = (void*)ram_start;
    lbl_80451390 = (void*)ram_end;
    lbl_80451394 = OS_GLOBAL(u32, 0x80000028);
    OSSetArenaLo(ram_end);
    OSSetArenaHi(ram_end);
    *memory = (char*)ram_start;
    *size   = ram_end - ram_start;
    return true;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE428.s"
JKRHeap* JKRHeap::becomeSystemHeap() {
    JKRHeap* prev = lbl_80451370;
    lbl_80451370  = this;
    return prev;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE438.s"
JKRHeap* JKRHeap::becomeCurrentHeap() {
    JKRHeap* prev = lbl_80451374;
    lbl_80451374  = this;
    return prev;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE448.s"
void JKRHeap::destroy() {
    this->do_destroy();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE474.s"
void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    if (heap != NULL) {
        return heap->alloc(size, alignment);
    }

    if (lbl_80451374 != NULL) {
        return lbl_80451374->alloc(size, alignment);
    }

    return NULL;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE4D4.s"
void* JKRHeap::alloc(u32 size, int alignment) {
    return this->do_alloc(size, alignment);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE500.s"
void JKRHeap::free(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap) return;
    }

    heap->free(ptr);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE548.s"
void JKRHeap::free(void* ptr) {
    this->do_free(ptr);
}

asm void JKRHeap::callAllDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE574.s"
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE5CC.s"
void JKRHeap::freeAll() {
    this->do_freeAll();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE5F8.s"
void JKRHeap::freeTail() {
    this->do_freeTail();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE624.s"
s32 JKRHeap::resize(void* ptr, u32 size, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap) return -1;
    }

    return heap->resize(ptr, size);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE684.s"
s32 JKRHeap::resize(void* ptr, u32 size) {
    return this->do_resize(ptr, size);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE6B0.s"
s32 JKRHeap::getSize(void* ptr, JKRHeap* heap) {
    if (!heap) {
        heap = findFromRoot(ptr);
        if (!heap) return -1;
    }

    return heap->getSize(ptr);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE700.s"
s32 JKRHeap::getSize(void* ptr) {
    return this->do_getSize(ptr);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE72C.s"
s32 JKRHeap::getFreeSize() {
    return this->do_getFreeSize();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE758.s"
void* JKRHeap::getMaxFreeBlock() {
    return this->do_getMaxFreeBlock();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE784.s"
s32 JKRHeap::getTotalFreeSize() {
    return this->do_getTotalFreeSize();
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE7B0.s"
u8 JKRHeap::changeGroupID(u8 param_1) {
    return this->do_changeGroupID(param_1);
}

// "not/nor" instruction in the wrong place
#ifdef NONMATCHING
s32 JKRHeap::getMaxAllocatableSize(int alignment) {
    u32 maxFreeBlock = (u32)this->getMaxFreeBlock();
    s32 freeSize     = this->getFreeSize();

    u32 mask        = alignment - 1U;
    s32 ptrOffset   = mask & (alignment - (maxFreeBlock & 0xf));
    s32 alignedSize = (freeSize - ptrOffset) & ~(alignment - 1U);
    return alignedSize;
}
#else
asm s32 JKRHeap::getMaxAllocatableSize(int alignment){
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}
#endif


// #include "JSystem/JKernel/JKRHeap/asm/func_802CE83C.s"
JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    if (lbl_80451378 == NULL) {
        return NULL;
    }

    if ((void*)lbl_80451378->mBegin <= ptr && ptr < (void*)lbl_80451378->mEnd) {
        return lbl_80451378->find(ptr);
    }

    return lbl_80451378->findAllHeap(ptr);
}

#ifdef NONMATCHING
// #include "JSystem/JKernel/JKRHeap/asm/func_802CE894.s"
JKRHeap* JKRHeap::find(void* ptr) const {
    if ((void*)this->mBegin <= ptr && ptr < (void*)this->mEnd) {
        const JSUTree<JKRHeap>& tree = this->mChildTree;
        if (tree.getNumChildren() != 0) {
            JSUTreeIterator<JKRHeap> iterator;
            for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
                JKRHeap* child  = iterator.getObject();
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
#else
asm JKRHeap* JKRHeap::find(void* ptr) const {
    nofralloc
    #include "JSystem/JKernel/JKRHeap/asm/func_802CE894.s"
}
#endif

#ifdef NONMATCHING
// #include "JSystem/JKernel/JKRHeap/asm/func_802CE93C.s"
JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    const JSUTree<JKRHeap>& tree = this->mChildTree;
    if (tree.getNumChildren() != 0) {

        JSUTreeIterator<JKRHeap> iterator;
        for (iterator = tree.getFirstChild(); iterator != tree.getEndChild(); iterator++) {
            JKRHeap* child  = iterator.getObject();
            JKRHeap* result = child->findAllHeap(ptr);
            if (result) {
                return result;
            }
        }
    }

    if ((void*)this->mBegin <= ptr && ptr < (void*)this->mEnd) {
        // Cast away const
        return (JKRHeap*)this;
    }

    return NULL;
}
#else
asm JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    nofralloc
    #include "JSystem/JKernel/JKRHeap/asm/func_802CE93C.s"
}
#endif

#ifdef NONMATCHING
// #include "JSystem/JKernel/JKRHeap/asm/func_802CE9E4.s"
void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    JSUListIterator<JKRDisposer> last_iterator;
    JSUListIterator<JKRDisposer> next_iterator;
    JSUListIterator<JKRDisposer> iterator;
    for (iterator = this->mDisposerList.getFirst(); iterator != this->mDisposerList.getEnd();
         iterator = next_iterator) {
        JKRDisposer* disposer = iterator.getObject();

        if ((void*)begin <= disposer && disposer < (void*)end) {
            disposer->~JKRDisposer();
            if (last_iterator == NULL) {
                next_iterator = this->mDisposerList.getFirst();
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
#else
asm void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    nofralloc
    #include "JSystem/JKernel/JKRHeap/asm/func_802CE9E4.s"
}
#endif

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEA78.s"
bool JKRHeap::dispose(void* ptr, u32 size) {
    u32 begin = (u32)ptr;
    u32 end   = (u32)ptr + size;
    this->dispose_subroutine(begin, end);
    return false;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEAA0.s"
void JKRHeap::dispose(void* begin, void* end) {
    this->dispose_subroutine((u32)begin, (u32)end);
}

// missing stack variable?
#ifdef NONMATCHING
void JKRHeap::dispose() {
    JKRDisposer* disposer;
    JSUListIterator<JKRDisposer> iterator;

    JSUList<JKRDisposer>* list = &this->mDisposerList;
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

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEB18.s"
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

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEB40.s"
void JKRHeap::JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment) {
    const char* filename = lbl_8039CAD8;      // "JKRHeap.cpp"
    const char* format   = lbl_8039CAD8 + 12; // "%s"
    const char* arg1     = lbl_8039CAD8 + 15; // "abort\n"
    JUTException_NS_panic_f(filename, 0x33f, format, arg1);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEB78.s"
bool JKRHeap::setErrorFlag(bool error_flag) {
    bool prev        = this->mErrorFlag;
    this->mErrorFlag = error_flag;
    return prev;
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEB88.s"
JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler error_handler) {
    JKRErrorHandler prev = (JKRErrorHandler)lbl_8045137C;

    if (!error_handler) {
        error_handler = (JKRErrorHandler)JKRHeap::JKRDefaultMemoryErrorRoutine;
    }

    lbl_8045137C = error_handler;
    return prev;
}

#ifdef NONMATCHING
// #include "JSystem/JKernel/JKRHeap/asm/func_802CEBA8.s"
bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    if (!heap) return false;

    const JSUTree<JKRHeap>& tree = this->mChildTree;
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
#else
asm bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    nofralloc
    #include "JSystem/JKernel/JKRHeap/asm/func_802CEBA8.s"
}
#endif

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEC4C.s"
void* operator new(u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEC74.s"
void* operator new(u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CEC98.s"
void* operator new(u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CECC4.s"
void* operator new[](u32 size) {
    return JKRHeap::alloc(size, 4, NULL);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CECEC.s"
void* operator new[](u32 size, int alignment) {
    return JKRHeap::alloc(size, alignment, NULL);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CED10.s"
void* operator new[](u32 size, JKRHeap* heap, int alignment) {
    return JKRHeap::alloc(size, alignment, heap);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CED3C.s"
void operator delete(void* ptr) {
    JKRHeap::free(ptr, NULL);
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CED60.s"
void operator delete[](void* ptr) {
    JKRHeap::free(ptr, NULL);
}
