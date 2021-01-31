#include "JSystem/JKernel/JKRAramArchive/JKRAramArchive.h"
#include "JSystem/JKernel/JKRFile/JKRFile.h"
#include "global.h"
extern "C" {
int abs(int);
void __ct__10JKRArchiveFlQ210JKRArchive10EMountMode(void);
void __ct__10JKRDvdFileFl(void);
void __dl__FPv(void);
void __dt__10JKRArchiveFv(void);
void __nw__FUlP7JKRHeapi(void);
void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode(void);
void alloc__7JKRHeapFUli(void);
void alloc__7JKRHeapFUliP7JKRHeap(void);
void aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl(void);
void copyMemory__7JKRHeapFPvPvUl(void);
void DCInvalidateRange(void*, u32);
void fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc(void);
void fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli(void);
void findFsResource__10JKRArchiveCFPCcUl(void);
void findPtrResource__10JKRArchiveCFPCv(void);
void free__7JKRHeapFPv(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void getAramAddress_Entry__14JKRAramArchiveFP12SDIFileEntry(void);
void JUTException_NS_panic_f(const char* filename, int line, const char* format, ...);
void loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl(void);
void loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl(
    void);
void open__14JKRAramArchiveFl(void);
void prepend__10JSUPtrListFP10JSUPtrLink(void);
void remove__10JSUPtrListFP10JSUPtrLink(void);
void* memset(void* dest, int ch, u32 count);
}

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

asm u32 JKRAramArchive::getExpandedResSize(void const*) {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7A64.s"
}

#if 0
asm JKRFile::~JKRFile() {
    nofralloc
#include "JSystem/JKernel/JKRAramArchive/asm/func_802D7B90.s"
}
#endif
