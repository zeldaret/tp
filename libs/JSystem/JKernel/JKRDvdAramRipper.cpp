#include "JSystem/JKernel/JKRDvdAramRipper/JKRDvdAramRipper.h"
#include "dvd/dvd.h"
#include "global.h"

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
