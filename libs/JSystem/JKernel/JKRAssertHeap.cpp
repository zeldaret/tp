#include "JSystem/JKernel/JKRAssertHeap/JKRAssertHeap.h"
#include "global.h"

asm JKRAssertHeap::JKRAssertHeap(void*, unsigned long, JKRHeap*, bool) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D12C4.s"
}

asm JKRAssertHeap::~JKRAssertHeap() {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1300.s"
}

asm void JKRAssertHeap::create(JKRHeap*) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1368.s"
}

asm void JKRAssertHeap::do_destroy(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D13D8.s"
}

asm u32 JKRAssertHeap::getHeapType(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1408.s"
}

asm bool JKRAssertHeap::check(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1414.s"
}

asm bool JKRAssertHeap::dump(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D141C.s"
}

asm void JKRAssertHeap::dump_sort(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1424.s"
}

asm u8 JKRAssertHeap::do_changeGroupID(u8 param_1) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D142C.s"
}

asm u8 JKRAssertHeap::do_getCurrentGroupId(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1434.s"
}

asm void* JKRAssertHeap::do_alloc(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D143C.s"
}

asm void JKRAssertHeap::do_free(void*) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1444.s"
}

asm void JKRAssertHeap::do_freeAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1448.s"
}

asm void JKRAssertHeap::do_freeTail(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D144C.s"
}

asm void JKRAssertHeap::do_fillFreeArea(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1450.s"
}

asm s32 JKRAssertHeap::do_resize(void*, u32) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1454.s"
}

asm s32 JKRAssertHeap::do_getSize(void*) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D145C.s"
}

asm s32 JKRAssertHeap::do_getFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1464.s"
}

asm void* JKRAssertHeap::do_getMaxFreeBlock(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D146C.s"
}

asm s32 JKRAssertHeap::do_getTotalFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRAssertHeap/asm/func_802D1474.s"
}
