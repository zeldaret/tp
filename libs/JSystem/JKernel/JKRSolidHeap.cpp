#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "global.h"

asm void JKRSolidHeap::create(unsigned long, JKRHeap *, bool) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0A24.s"
}

asm void JKRSolidHeap::do_destroy(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0AD0.s"
}

asm  JKRSolidHeap::JKRSolidHeap(void *, unsigned long, JKRHeap *, bool) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0B30.s"
}

asm  JKRSolidHeap::~JKRSolidHeap(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0B8C.s"
}

asm void JKRSolidHeap::adjustSize(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0BF4.s"
}

asm void* JKRSolidHeap::do_alloc(unsigned long, int) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0CB0.s"
}

asm void JKRSolidHeap::allocFromHead(unsigned long, int) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0D58.s"
}

asm void JKRSolidHeap::allocFromTail(unsigned long, int) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0E20.s"
}

asm void JKRSolidHeap::do_free(void *) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0EE4.s"
}

asm void JKRSolidHeap::do_freeAll(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0F14.s"
}

asm void JKRSolidHeap::do_freeTail(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D0F74.s"
}

asm void JKRSolidHeap::do_fillFreeArea(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1000.s"
}

asm s32 JKRSolidHeap::do_resize(void *, unsigned long) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1004.s"
}

asm s32 JKRSolidHeap::do_getSize(void *) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1038.s"
}

asm bool JKRSolidHeap::check(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D106C.s"
}

asm bool JKRSolidHeap::dump(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D10FC.s"
}

asm void JKRSolidHeap::state_register(JKRHeap::TState *, unsigned long) const {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D11FC.s"
}

asm bool JKRSolidHeap::state_compare(JKRHeap::TState const &, JKRHeap::TState const &) const {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1258.s"
}

asm u32 JKRSolidHeap::getHeapType(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1288.s"
}

asm s32 JKRSolidHeap::do_getFreeSize(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D1294.s"
}

asm void* JKRSolidHeap::do_getMaxFreeBlock(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D129C.s"
}

asm s32 JKRSolidHeap::do_getTotalFreeSize(void) {
    nofralloc
    #include "JSystem/JKernel/JKRSolidHeap/asm/func_802D12A4.s"
}

