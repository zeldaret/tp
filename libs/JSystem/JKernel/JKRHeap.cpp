#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

#ifdef NONMATCHING
JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_handler) {
}
#else
asm JKRHeap::JKRHeap(void* data, u32 size, JKRHeap* parent, bool error_handler) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE138.s"
}
#endif

asm JKRHeap::~JKRHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE264.s"
}

asm bool JKRHeap::initArena(char**, u32*, int) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE378.s"
}

asm void JKRHeap::becomeSystemHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE428.s"
}

asm void JKRHeap::becomeCurrentHeap() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE438.s"
}

asm void JKRHeap::destroy() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE448.s"
}

asm void* JKRHeap::alloc(u32 size, int alignment, JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE474.s"
}

asm void* JKRHeap::alloc(u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE4D4.s"
}

asm void JKRHeap::free(void* ptr, JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE500.s"
}

asm void JKRHeap::free(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE548.s"
}

asm void JKRHeap::callAllDisposer() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE574.s"
}

asm void JKRHeap::freeAll() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE5CC.s"
}

asm void JKRHeap::freeTail() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE5F8.s"
}

asm s32 JKRHeap::resize(void* ptr, u32 size, JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE624.s"
}

asm s32 JKRHeap::resize(void* ptr, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE684.s"
}

asm s32 JKRHeap::getSize(void* ptr, JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE6B0.s"
}

asm s32 JKRHeap::getSize(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE700.s"
}

asm s32 JKRHeap::getFreeSize() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE72C.s"
}

asm u32 JKRHeap::getMaxFreeBlock() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE758.s"
}

asm u32 JKRHeap::getTotalFreeSize() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE784.s"
}

asm u8 JKRHeap::changeGroupID(u8 param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7B0.s"
}

asm u32 JKRHeap::getMaxAllocatableSize(int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE7DC.s"
}

asm JKRHeap* JKRHeap::findFromRoot(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE83C.s"
}

asm JKRHeap* JKRHeap::find(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE894.s"
}

asm JKRHeap* JKRHeap::findAllHeap(void* ptr) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE93C.s"
}

asm void JKRHeap::dispose_subroutine(u32 begin, u32 end) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CE9E4.s"
}

asm void JKRHeap::dispose(void* ptr, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEA78.s"
}

asm void JKRHeap::dispose(void* begin, void* end) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEAA0.s"
}

asm void JKRHeap::dispose() {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEAC0.s"
}

asm void JKRHeap::copyMemory(void* dst, void* src, u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB18.s"
}

asm void JKRHeap::JKRDefaultMemoryErrorRoutine(JKRHeap* heap, u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB40.s"
}

asm bool JKRHeap::setErrorFlag(bool param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB78.s"
}

asm JKRErrorHandler JKRHeap::setErrorHandler(JKRErrorHandler param_1) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEB88.s"
}

asm bool JKRHeap::isSubHeap(JKRHeap* heap) const {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEBA8.s"
}

asm void* operator new(u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC4C.s"
}

asm void* operator new(u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC74.s"
}

asm void* operator new(u32 size, JKRHeap* heap, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CEC98.s"
}

asm void* operator new[](u32 size) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CECC4.s"
}

asm void* operator new[](u32 size, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CECEC.s"
}

asm void* operator new[](u32 size, JKRHeap* heap, int alignment) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED10.s"
}

asm void operator delete(void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED3C.s"
}

asm void operator delete[](void* ptr) {
    nofralloc
#include "JSystem/JKernel/JKRHeap/asm/func_802CED60.s"
}
