#include "JSystem/JKernel/JKRAramPiece/JKRAramPiece.h"
#include "global.h"

asm void JKRAramPiece::prepareCommand(int, u32, u32, u32, JKRAramBlock*, void (*)(u32)) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3574.s"
}

asm void JKRAramPiece::sendCommand(JKRAMCommand*) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D35F4.s"
}

asm void JKRAramPiece::orderAsync(int, u32, u32, u32, JKRAramBlock*, void (*)(u32)) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3614.s"
}

asm void JKRAramPiece::sync(JKRAMCommand*, int) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3770.s"
}

asm void JKRAramPiece::orderSync(int, u32, u32, u32, JKRAramBlock*) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3838.s"
}

asm void JKRAramPiece::startDMA(JKRAMCommand*) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D38CC.s"
}

asm void JKRAramPiece::doneDMA(u32) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3944.s"
}

asm JKRAMCommand::JKRAMCommand(void) {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D39EC.s"
}

asm JKRAMCommand::~JKRAMCommand() {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3A5C.s"
}

#if 0
asm void __sinit_JKRAramPiece_cpp {
    nofralloc
#include "JSystem/JKernel/JKRAramPiece/asm/func_802D3B04.s"
}
#endif
