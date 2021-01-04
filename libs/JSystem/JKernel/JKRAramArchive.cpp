#include "JSystem/JKernel/JKRAramArchive/JKRAramArchive.h"
#include "global.h"

#include "JSystem/JKernel/JKRFile/JKRFile.h"

asm JKRAramArchive::JKRAramArchive(long, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D70C0.s"
}

asm JKRAramArchive::~JKRAramArchive() {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7168.s"
}

asm void JKRAramArchive::open(long) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D72A8.s"
}

asm void* JKRAramArchive::fetchResource(SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D75E0.s"
}

asm void* JKRAramArchive::fetchResource(void*, u32, SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D76F4.s"
}

asm void JKRAramArchive::getAramAddress_Entry(SDIFileEntry*) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D77F8.s"
}

asm void JKRAramArchive::getAramAddress(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D781C.s"
}

asm void JKRAramArchive::fetchResource_subroutine(u32, u32, u8*, u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7858.s"
}

asm void JKRAramArchive::fetchResource_subroutine(u32, u32, JKRHeap*, int, u8**) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7914.s"
}

asm void JKRAramArchive::getExpandedResSize(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7A64.s"
}

#if 0
asm JKRFile::~JKRFile() {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7B90.s"
}
#endif
