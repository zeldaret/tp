#include "JSystem/JKernel/JKRAramStream/JKRAramStream.h"
#include "global.h"

asm void JKRAramStream::create(long) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3B48.s"
}

asm JKRAramStream::JKRAramStream(long) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3BB8.s"
}

asm JKRAramStream::~JKRAramStream() {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3C08.s"
}

asm void* JKRAramStream::run(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3C68.s"
}

asm void JKRAramStream::readFromAram(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3CD8.s"
}

asm void JKRAramStream::writeToAram(JKRAramStreamCommand*) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3CE0.s"
}

asm void JKRAramStream::write_StreamToAram_Async(JSUFileInputStream*, u32, u32, u32, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3ED0.s"
}

asm void JKRAramStream::sync(JKRAramStreamCommand*, int) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D3FA0.s"
}

asm void JKRAramStream::setTransBuffer(u8*, u32, JKRHeap*) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D4034.s"
}

asm JKRAramStreamCommand::JKRAramStreamCommand(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D4088.s"
}

asm void JSURandomInputStream::getAvailable(void) const {
    nofralloc
#include "JSystem/JKernel/JKRAramStream/asm/func_802D4094.s"
}
