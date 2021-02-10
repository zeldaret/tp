#include "JSystem/JKernel/JKRCompArchive/JKRCompArchive.h"
#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "global.h"
#include "msl_c/string.h"

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
void fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc(void);
void fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii(void);
void fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli(void);
void fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc(void);
void fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli(void);
void findPtrResource__10JKRArchiveCFPCv(void);
void free__7JKRHeapFPv(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void JUTException_NS_panic_f(const char* filename, int line, const char* format, ...);
void loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl(void);
void loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl(
    void);
void mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl(void);
void open__14JKRCompArchiveFl(void);
void orderSync__9JKRDecompFPUcPUcUlUl(void);
void prepend__10JSUPtrListFP10JSUPtrLink(void);
void remove__10JSUPtrListFP10JSUPtrLink(void);
}

extern JKRExpHeap* sSystemHeap__7JKRHeap;

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
