#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "global.h"

asm void JKRDecomp::create(long) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB680.s"
}

asm JKRDecomp::JKRDecomp(long) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB6E0.s"
}

asm JKRDecomp::~JKRDecomp(void) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB730.s"
}

asm void* JKRDecomp::run(void) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB790.s"
}

asm void JKRDecomp::prepareCommand(u8 *, u8 *, u32, u32, void (*)(u32)) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB858.s"
}

asm void JKRDecomp::sendCommand(JKRDecompCommand *) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB8D0.s"
}

asm void JKRDecomp::orderAsync(u8 *, u8 *, u32, u32, void (*)(u32)) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB900.s"
}

asm void JKRDecomp::sync(JKRDecompCommand *, int) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB934.s"
}

asm void JKRDecomp::orderSync(u8 *, u8 *, u32, u32) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB988.s"
}

asm void JKRDecomp::decode(u8 *, u8 *, u32, u32) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DB9DC.s"
}

asm void JKRDecomp::decodeSZP(u8 *, u8 *, u32, u32) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DBA58.s"
}

asm void JKRDecomp::decodeSZS(u8 *, u8 *, u32, u32) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DBC14.s"
}

asm void JKRDecomp::checkCompressed(u8 *) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DBCF8.s"
}

asm JKRDecompCommand::JKRDecompCommand(void) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DBD70.s"
}

asm JKRDecompCommand::~JKRDecompCommand(void) {
    nofralloc
    #include "JSystem/JKernel/JKRDecomp/asm/func_802DBDC0.s"
}

