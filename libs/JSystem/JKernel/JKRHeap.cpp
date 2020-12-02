#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

/*
Very close! When initialzing child_list(true) it will use less register then the asm code. 
-  2cb0b0:      3b 5f 00 40     addi    r26,r31,64
-  2cb0b4:      7f 43 d3 78     mr      r3,r26
-  2cb0b8:      48 00 dd 9d     bl      0x2d8e54
-  2cb0bc:      38 7a 00 0c     addi    r3,r26,12

+  2cb0b0:      38 7f 00 40     addi    r3,r31,64
+  2cb0b4:      38 80 00 01     li      r4,1
+  2cb0b8:      48 00 dd 01     bl      0x2d8db8
+  2cb0bc:      38 7f 00 4c     addi    r3,r31,76
*/
#ifdef NONMATCHING
JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_flag)
    : JKRDisposer(), child_list(true), heap_link(this), disposable_list(true) {
    OSInitMutex(this->mutex);
    this->size  = size;
    this->begin = (u32)data;
    this->end   = (u32)data + size;

    if (parent == NULL) {
        this->becomeSystemHeap();
        this->becomeCurrentHeap();
    } else {
        JSUPtrLink* ptr = (JSUPtrLink*)&this->child_list;
        if (ptr != NULL) {
            ptr = &this->heap_link;
        }

        parent->child_list.append(ptr);
        if (lbl_80451370 == lbl_80451378) {
            this->becomeSystemHeap();
        }
        if (lbl_80451374 == lbl_80451378) {
            this->becomeCurrentHeap();
        }
    }

    this->error_flag = error_flag;
    if ((this->error_flag == true) && (lbl_8045137C == NULL)) {
        lbl_8045137C = JKRHeap::JKRDefaultMemoryErrorRoutine;
    }

    this->field_0x3c = lbl_804508B0[0];
    this->field_0x3d = lbl_80451380[0];
    this->field_0x69 = 0;
}
#else
asm JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_flag) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE138.s"
}
#endif

asm JKRHeap::~JKRHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE264.s"
}

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
s32 JKRHeap::getMaxFreeBlock() {
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

asm s32 JKRHeap::getMaxAllocatableSize(int alignment) {
    nofralloc
    #include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}

// #include "JSystem/JKernel/JKRHeap/asm/func_802CE83C.s"
JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    if (lbl_80451378 == NULL) {
        return (JKRHeap*)NULL;
    }

    if (((void*)lbl_80451378->begin <= ptr) && (ptr < (void*)lbl_80451378->end)) {
        return lbl_80451378->find(ptr);
    }

    return lbl_80451378->findAllHeap(ptr);
}

asm JKRHeap* JKRHeap::find(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE894.s"
}

asm JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE93C.s"
}

asm void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE9E4.s"
}

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

#ifdef NONMATCHING
void JKRHeap::dispose() {
    JSUPtrLink* node;
    JKRDisposer* disposable;
    while (node = this->disposable_list.head, node != NULL) {
        disposable = (JKRDisposer*)node->owner;
        disposable->~JKRDisposer();
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

asm void JKRHeap::JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB40.s"
}

asm bool JKRHeap::setErrorFlag(bool param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB78.s"
}

asm JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB88.s"
}

asm bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEBA8.s"
}

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
