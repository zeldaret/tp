#include "JSystem/JKernel/JKRAramBlock/JKRAramBlock.h"
#include "global.h"

asm JKRAramBlock::JKRAramBlock(u32, u32, u32, u8, bool) {
    nofralloc
    #include "JSystem/JKernel/JKRAramBlock/asm/func_802D3304.s"
}

asm JKRAramBlock::~JKRAramBlock(void) {
    nofralloc
    #include "JSystem/JKernel/JKRAramBlock/asm/func_802D3378.s"
}

asm void JKRAramBlock::allocHead(u32, u8, JKRAramHeap *) {
    nofralloc
    #include "JSystem/JKernel/JKRAramBlock/asm/func_802D3434.s"
}

asm void JKRAramBlock::allocTail(u32, u8, JKRAramHeap *) {
    nofralloc
    #include "JSystem/JKernel/JKRAramBlock/asm/func_802D34D0.s"
}

