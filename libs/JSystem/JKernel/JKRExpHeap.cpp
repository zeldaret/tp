#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "global.h"

extern "C" {
void __ct__10JKRExpHeapFPvUlP7JKRHeapb(void);
void __ct__7JKRHeapFPvUlP7JKRHeapb(void);
void __dl__FPv(void);
void __dt__7JKRHeapFv(void);
void alloc__7JKRHeapFUliP7JKRHeap(void);
void allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc(void);
void allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc(void);
void allocFromHead__10JKRExpHeapFUl(void);
void allocFromHead__10JKRExpHeapFUli(void);
void allocFromTail__10JKRExpHeapFUl(void);
void allocFromTail__10JKRExpHeapFUli(void);
void appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock(void);
void callAllDisposer__7JKRHeapFv(void);
void dispose__7JKRHeapFPvUl(void);
void dispose__7JKRHeapFv(void);
void find__7JKRHeapCFPv(void);
void free__7JKRHeapFPvP7JKRHeap(void);
void free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap(void);
void getHeapBlock__Q210JKRExpHeap9CMemBlockFPv(void);
void getMaxAllocatableSize__7JKRHeapCFi(void);
void getTotalFreeSize__7JKRHeapCFv(void);
void getUsedSize__10JKRExpHeapCFUc(void);
void initArena__7JKRHeapFPPcPUli(void);
void initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc(
    void);
void joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock(void);
void panic_f__12JUTExceptionFPCciPCce(const char* filename, int line, const char* format, ...);
void JUTReportConsole_f(const char*, ...);
void JUTReportConsole(const char*);
void JUTWarningConsole_f(const char*, ...);
void JUTWarningConsole(void);
void recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock(void);
void removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock(void);
void removeUsedBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock(void);
void setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock(
    void);
}

extern JKRHeap* sRootHeap__7JKRHeap;
extern JKRHeap* sCurrentHeap__7JKRHeap;
extern u8 lbl_803CBFD0;
extern u8 lbl_8039CAF0;
extern u8 lbl_80451398;
extern u8 lbl_8045139C;
extern u8 lbl_804513A0;
extern u8 lbl_804513A4;
extern u8 lbl_804513A8;
extern u8 lbl_80455F98;
extern u8 lbl_80455FA0;

asm void JKRExpHeap::createRoot(int, bool) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CEDB4.s"
}

asm void JKRExpHeap::create(u32, JKRHeap*, bool) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CEE2C.s"
}

asm void JKRExpHeap::create(void*, u32, JKRHeap*, bool) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CEF00.s"
}

asm void JKRExpHeap::do_destroy(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CEFAC.s"
}

asm JKRExpHeap::JKRExpHeap(void*, u32, JKRHeap*, bool) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF030.s"
}

asm JKRExpHeap::~JKRExpHeap() {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF0C0.s"
}

asm void* JKRExpHeap::do_alloc(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF128.s"
}

asm void JKRExpHeap::allocFromHead(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF234.s"
}

asm void JKRExpHeap::allocFromHead(u32) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF490.s"
}

asm void JKRExpHeap::allocFromTail(u32, int) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF574.s"
}

asm void JKRExpHeap::allocFromTail(u32) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF6D4.s"
}

asm void JKRExpHeap::do_free(void*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF7AC.s"
}

asm void JKRExpHeap::do_freeAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF820.s"
}

asm void JKRExpHeap::do_freeTail(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF89C.s"
}

asm void JKRExpHeap::do_fillFreeArea(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF924.s"
}

asm u8 JKRExpHeap::do_changeGroupID(u8) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF928.s"
}

asm s32 JKRExpHeap::do_resize(void*, u32) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CF978.s"
}

asm s32 JKRExpHeap::do_getSize(void*) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFB24.s"
}

asm s32 JKRExpHeap::do_getFreeSize(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFBA4.s"
}

asm void* JKRExpHeap::do_getMaxFreeBlock(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFC10.s"
}

asm s32 JKRExpHeap::do_getTotalFreeSize(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFC84.s"
}

asm s32 JKRExpHeap::getUsedSize(unsigned char) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFCE8.s"
}

asm s32 JKRExpHeap::getTotalUsedSize(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFD64.s"
}

asm void JKRExpHeap::appendUsedList(JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFDCC.s"
}

asm void JKRExpHeap::setFreeBlock(JKRExpHeap::CMemBlock*, JKRExpHeap::CMemBlock*,
                                  JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFE68.s"
}

asm void JKRExpHeap::removeFreeBlock(JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFEB4.s"
}

asm void JKRExpHeap::removeUsedBlock(JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFEE8.s"
}

asm void JKRExpHeap::recycleFreeBlock(JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802CFF1C.s"
}

asm void JKRExpHeap::joinTwoBlocks(JKRExpHeap::CMemBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D00B4.s"
}

asm bool JKRExpHeap::check(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0190.s"
}

asm bool JKRExpHeap::dump(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D03B8.s"
}

asm bool JKRExpHeap::dump_sort(void) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D05CC.s"
}

asm void JKRExpHeap::CMemBlock::initiate(JKRExpHeap::CMemBlock*, JKRExpHeap::CMemBlock*, u32,
                                         unsigned char, unsigned char) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0810.s"
}

asm void JKRExpHeap::CMemBlock::allocFore(u32, unsigned char, unsigned char, unsigned char,
                                          unsigned char) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0830.s"
}

asm void JKRExpHeap::CMemBlock::allocBack(u32, unsigned char, unsigned char, unsigned char,
                                          unsigned char) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0874.s"
}

asm void JKRExpHeap::CMemBlock::free(JKRExpHeap*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D08CC.s"
}

asm void JKRExpHeap::CMemBlock::getHeapBlock(void*) {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D091C.s"
}

asm void JKRExpHeap::state_register(JKRHeap::TState*, u32) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0938.s"
}

asm bool JKRExpHeap::state_compare(JKRHeap::TState const&, JKRHeap::TState const&) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D09E0.s"
}

asm u32 JKRExpHeap::getHeapType(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0A10.s"
}

asm u8 JKRExpHeap::do_getCurrentGroupId(void) const {
    nofralloc
#include "JSystem/JKernel/JKRExpHeap/asm/func_802D0A1C.s"
}
