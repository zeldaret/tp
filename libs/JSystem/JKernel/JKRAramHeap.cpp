#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "global.h"

asm JKRAramHeap::JKRAramHeap(u32, u32) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D2E44.s"
}

asm JKRAramHeap::~JKRAramHeap(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D2F14.s"
}

asm void JKRAramHeap::alloc(u32, JKRAramHeap::EAllocMode) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D2FBC.s"
}

asm void JKRAramHeap::allocFromHead(u32) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D3034.s"
}

asm void JKRAramHeap::allocFromTail(u32) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D30BC.s"
}

asm void JKRAramHeap::getFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D3134.s"
}

asm void JKRAramHeap::getTotalFreeSize(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D31AC.s"
}

asm void JKRAramHeap::dump(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D3218.s"
}

#if 0
asm void __sinit_JKRAramHeap_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D326C.s"
}

asm JSUList<12JKRAramBlock>::~JSUList<12JKRAramBlock>(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramHeap/asm/func_802D32B0.s"
}
#endif
