#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "global.h"

asm void JKRAram::create(u32, u32, long, long, long) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D1FA4.s"
}

asm JKRAram::JKRAram(u32, u32, long) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2040.s"
}

asm JKRAram::~JKRAram() {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D214C.s"
}

asm void* JKRAram::run(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D21DC.s"
}

asm void JKRAram::checkOkAddress(u8*, u32, JKRAramBlock*, u32) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2248.s"
}

asm void JKRAram::changeGroupIdIfNeed(u8*, int) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D22DC.s"
}

asm void JKRAram::mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D233C.s"
}

asm void JKRAram::aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D25B4.s"
}

asm void JKRDecompressFromAramToMainRam(u32, void*, u32, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2830.s"
}

asm void decompSZS_subroutine(u8*, u8*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D29A0.s"
}

asm void firstSrcData(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2C40.s"
}

asm void nextSrcData(u8*) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2CE4.s"
}

#if 0
asm void __sinit_JKRAram_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2DAC.s"
}

asm JSUList<12JKRAMCommand>::~JSUList<12JKRAMCommand>(void) {
    nofralloc
#include "JSystem/JKernel/JKRAram/asm/func_802D2DF0.s"
}
#endif
