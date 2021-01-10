#include "JSystem/JKernel/JKRCompArchive/JKRCompArchive.h"
#include "global.h"

asm JKRCompArchive::JKRCompArchive(long, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D87D4.s"
}

asm JKRCompArchive::~JKRCompArchive(void) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D887C.s"
}

asm void JKRCompArchive::open(long) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D89BC.s"
}

asm void* JKRCompArchive::fetchResource(SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D8F40.s"
}

asm void* JKRCompArchive::fetchResource(void*, u32, SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D90C0.s"
}

asm void JKRCompArchive::removeResourceAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D9260.s"
}

asm bool JKRCompArchive::removeResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D92F4.s"
}

asm u32 JKRCompArchive::getExpandedResSize(void const*) {
    nofralloc
#include "JSystem/JKernel/JKRCompArchive/asm/func_802D9360.s"
}
