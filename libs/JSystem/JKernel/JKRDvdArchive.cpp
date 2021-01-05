#include "JSystem/JKernel/JKRDvdArchive/JKRDvdArchive.h"
#include "global.h"

asm JKRDvdArchive::JKRDvdArchive(long, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D7BF0.s"
}

asm JKRDvdArchive::~JKRDvdArchive() {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D7C98.s"
}

asm void JKRDvdArchive::open(long) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D7DB4.s"
}

asm void* JKRDvdArchive::fetchResource(SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8050.s"
}

asm void* JKRDvdArchive::fetchResource(void*, u32, SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8168.s"
}

asm void JKRDvdArchive::fetchResource_subroutine(long, u32, u32, u8*, u32, int, int) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D826C.s"
}

asm void JKRDvdArchive::fetchResource_subroutine(long, u32, u32, JKRHeap*, int, int, u8**) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8474.s"
}

asm u32 JKRDvdArchive::getExpandedResSize(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8698.s"
}
