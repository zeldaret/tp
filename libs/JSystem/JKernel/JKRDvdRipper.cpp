#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "dvd/dvd.h"
#include "global.h"

extern "C" {
void __ct__10JKRDvdFileFv(void);
void __dt__10JKRDvdFileFv(void);
void __RAS_OSDisableInterrupts_begin(void);
void alloc__7JKRHeapFUli(void);
void alloc__7JKRHeapFUliP7JKRHeap(void);
void checkCompressed__9JKRDecompFPUc(void);
void DCInvalidateRange(void*, u32);
void DCStoreRangeNoSync(void);
void decompSZS_subroutine__FPUcPUc(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void isErrorRetry__12JKRDvdRipperFv(void);
void JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl(void);
void JUTException_NS_panic_f(const char* filename, int line, const char* format, ...);
void loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl(
    void);
void memcpy(void*, const void*, int);
void nextSrcData__FPUc(void);
void open__10JKRDvdFileFl(void);
void open__10JKRDvdFileFPCc(void);
void orderSync__9JKRDecompFPUcPUcUlUl(void);
void VIWaitForRetrace(void);
}

static void decompSZS_subroutine(u8*, u8*);
static u8* firstSrcData(void);
static u8* nextSrcData(u8*);
extern "C" void firstSrcData__Fv();

asm void* JKRDvdRipper::loadToMainRAM(const char*, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                      JKRDvdRipper::EAllocDirection, u32, JKRCompression*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802D9B98.s"
}

asm void* JKRDvdRipper::loadToMainRAM(long, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                      JKRDvdRipper::EAllocDirection, u32, JKRCompression*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802D9C54.s"
}

asm void* JKRDvdRipper::loadToMainRAM(JKRDvdFile*, u8*, JKRExpandSwitch, u32, JKRHeap*,
                                      JKRDvdRipper::EAllocDirection, u32, JKRCompression*, u32*) {
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

asm u8* firstSrcData(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdRipper/asm/func_802DA60C.s"
}

asm u8* nextSrcData(u8*) {
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
