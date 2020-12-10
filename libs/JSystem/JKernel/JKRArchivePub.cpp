#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "global.h"

asm void JKRArchive::check_mount_already(long, JKRHeap*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5778.s"
}

asm void JKRArchive::mount(char const*, JKRArchive::EMountMode, JKRHeap*,
                           JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D57E4.s"
}

asm void JKRArchive::mount(void*, JKRHeap*, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5840.s"
}

asm void JKRArchive::mount(long, JKRArchive::EMountMode, JKRHeap*, JKRArchive::EMountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D58C8.s"
}

asm void JKRArchive::becomeCurrent(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5A38.s"
}

asm bool JKRArchive::getDirEntry(JKRArchive::SDirEntry*, u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5AC0.s"
}

asm void JKRArchive::getGlbResource(u32, char const*, JKRArchive*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5B38.s"
}

asm void JKRArchive::getResource(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5BE8.s"
}

asm void JKRArchive::getResource(u32, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5C64.s"
}

asm void JKRArchive::getIdxResource(u32) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5CE4.s"
}

asm void JKRArchive::getResource(unsigned short) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5D38.s"
}

asm void JKRArchive::readResource(void*, u32, u32, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5D8C.s"
}

asm void JKRArchive::readResource(void*, u32, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5E30.s"
}

asm void JKRArchive::readIdxResource(void*, u32, u32) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5ECC.s"
}

asm void JKRArchive::readResource(void*, u32, unsigned short) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5F40.s"
}

asm void JKRArchive::removeResourceAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D5FB4.s"
}

asm void JKRArchive::removeResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D603C.s"
}

asm void JKRArchive::detachResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D609C.s"
}

asm void JKRArchive::getResSize(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D60D8.s"
}

asm void JKRArchive::countResource(void) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D610C.s"
}

asm void JKRArchive::countFile(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6150.s"
}

asm void JKRArchive::getFirstFile(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D61B0.s"
}

asm void JKRArchive::getFileAttribute(u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D625C.s"
}
