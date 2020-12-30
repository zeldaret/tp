#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "dvd/dvd.h"
#include "global.h"

asm void JKRDvdRipper::loadToMainRAM(char const*, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                     JKRDvdRipper::EAllocDirection, u32, int*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802D9B98.s"
}

asm void JKRDvdRipper::loadToMainRAM(long, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                     JKRDvdRipper::EAllocDirection, u32, int*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802D9C54.s"
}

asm void JKRDvdRipper::loadToMainRAM(JKRDvdFile*, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                     JKRDvdRipper::EAllocDirection, u32, int*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802D9D10.s"
}

asm void JKRDecompressFromDVD(JKRDvdFile*, void*, u32, u32, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA1E4.s"
}

asm void decompSZS_subroutine(u8*, u8*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA35C.s"
}

asm void firstSrcData(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA60C.s"
}

asm void nextSrcData(u8*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA6D8.s"
}

asm void JKRDvdRipper::isErrorRetry(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA7D4.s"
}

#if 0
asm void __sinit_JKRDvdRipper_cpp {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA7DC.s"
}

asm JSUList<12JKRDMCommand>::~JSUList<12JKRDMCommand>(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA820.s"
}
#endif
