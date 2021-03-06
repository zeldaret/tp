#include "JSystem/JKernel/JKRDvdAramRipper/JKRDvdAramRipper.h"
#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "dvd/dvd.h"
#include "global.h"
#include "msl_c/string.h"

extern "C" {
void __ct__10JKRDvdFileFv(void);
void __ct__10JSUPtrLinkFPv(void);
void __ct__12JKRADCommandFv(void);
void __dl__FPv(void);
void __dt__10JKRDvdFileFv(void);
void __dt__10JSUPtrLinkFv(void);
void __dt__12JKRADCommandFv(void);
void __nw__FUlP7JKRHeapi(void);
void __RAS_OSDisableInterrupts_begin(void);
void alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode(void);
void alloc__7JKRHeapFUli(void);
void append__10JSUPtrListFP10JSUPtrLink(void);
void callCommand_Async__16JKRDvdAramRipperFP12JKRADCommand(void);
void checkCompressed__9JKRDecompFPUc(void);
void DCInvalidateRange(void*, u32);
void decompSZS_subroutine__FPUcUl(void);
void dmaBufferFlush__FUl(void);
void firstSrcData__Fv(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUlPUl(void);
void JSUFileInputStream_ct(void);
void JSUInputStream_NS_dtor(void);
void loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUlPUl(void);
void loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUlPUl(void);
void nextSrcData__FPUc(void);
void open__10JKRDvdFileFl(void);
void orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock(void);
void remove__10JSUPtrListFP10JSUPtrLink(void);
void sync__13JKRAramStreamFP20JKRAramStreamCommandi(void);
void syncAram__16JKRDvdAramRipperFP12JKRADCommandi(void);
void VIWaitForRetrace(void);
void write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUlPUl(void);
}

extern JKRExpHeap* sSystemHeap__7JKRHeap;
extern u8 lbl_804508D0;  // DAT_804508d0
extern u8 lbl_804343B4;  // JKRDvdAramRipper::sDvdAramAsyncList
extern u8 lbl_803CC518;  // JSUFileInputStream::__vt
extern u8 lbl_803CC4B0;  // JSURandomInputStream::__vt
extern u8 lbl_804343C0;  // JKernel::decompMutex
extern u8 lbl_804508D4;  // JKRDvdAramRipper::sSZSBufferSize
extern u8 lbl_80451468;  // JKernel::szpBuf (static?)
extern u8 lbl_8045146C;  // JKernel::szpEnd (static?)
extern u8 lbl_80451470;  // JKernel::refBuf (static?)
extern u8 lbl_80451474;  // JKernel::refEnd (static?)
extern u8 lbl_80451478;  // JKernel::refCurrent (static?)
extern u8 lbl_8045147C;  // JKernel::dmaBuf (static?)
extern u8 lbl_80451480;  // JKernel::dmaEnd (static?)
extern u8 lbl_80451484;  // JKernel::dmaCurrent (static?)
extern u8 lbl_80451488;  // JKernel::srcOffset (static?)
extern u8 lbl_8045148C;  // JKernel::transLeft (static?)
extern u8 lbl_80451490;  // JKernel::srcLimit (static?)
extern u8 lbl_80451494;  // JKernel::srcFile (static?)
extern u8 lbl_80451498;  // JKernel::fileOffset (static?)
extern u8 lbl_8045149C;  // JKernel::readCount (static?)
extern u8 lbl_804514A0;  // JKernel::maxDest (static?)
extern u8 lbl_804514A4;  // DAT_804514a4 (init global mutex)
extern u8 lbl_804514A8;  // JKernel::tsPtr (static?)

static void decompSZS_subroutine(u8*, u32);
static u8* firstSrcData(void);
static u8* nextSrcData(u8*);

asm void JKRDvdAramRipper::loadToAram(long, u32, JKRExpandSwitch, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DA874.s"
}

asm void JKRDvdAramRipper::loadToAram(JKRDvdFile*, u32, JKRExpandSwitch, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DA918.s"
}

asm void JKRDvdAramRipper::loadToAram_Async(JKRDvdFile*, u32, JKRExpandSwitch, void (*)(u32), u32,
                                            u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DA9C0.s"
}

asm void JKRDvdAramRipper::callCommand_Async(JKRADCommand*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DAA74.s"
}

asm JSUFileInputStream::~JSUFileInputStream(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DADD8.s"
}

asm void JKRDvdAramRipper::syncAram(JKRADCommand*, int) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DAE48.s"
}

asm JKRADCommand::JKRADCommand(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DAF1C.s"
}

asm JKRADCommand::~JKRADCommand() {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DAF5C.s"
}

asm void JKRDecompressFromDVDToAram(JKRDvdFile*, u32, u32, u32, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DAFE8.s"
}

asm void decompSZS_subroutine(u8*, u32) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB160.s"
}

asm u8* firstSrcData(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB3E8.s"
}

asm u8* nextSrcData(u8*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB49C.s"
}

asm void dmaBufferFlush(u32) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB580.s"
}

#if 0
asm void __sinit_JKRDvdAramRipper_cpp {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB5E8.s"
}

asm JSUList<12JKRADCommand>::~JSUList<12JKRADCommand>(void) {
    nofralloc
#include "JSystem/JKernel/JKRDvdAramRipper/asm/func_802DB62C.s"
}
#endif
