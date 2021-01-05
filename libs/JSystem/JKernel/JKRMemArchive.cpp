#include "JSystem/JKernel/JKRMemArchive/JKRMemArchive.h"
#include "global.h"

asm JKRMemArchive::JKRMemArchive(long, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D69B8.s"
}

asm JKRMemArchive::JKRMemArchive(void*, u32, JKRMemBreakFlag) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6A6C.s"
}

asm JKRMemArchive::~JKRMemArchive() {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6B24.s"
}

asm void JKRMemArchive::open(long, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6BCC.s"
}

asm void JKRMemArchive::open(void*, u32, JKRMemBreakFlag) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6D30.s"
}

asm void* JKRMemArchive::fetchResource(SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6DDC.s"
}

asm void* JKRMemArchive::fetchResource(void*, u32, SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6E10.s"
}

asm void JKRMemArchive::removeResourceAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6ED0.s"
}

asm bool JKRMemArchive::removeResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6F20.s"
}

asm void JKRMemArchive::fetchResource_subroutine(u8*, u32, u8*, u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6F5C.s"
}

asm void JKRMemArchive::getExpandedResSize(const void*) const {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D7030.s"
}
