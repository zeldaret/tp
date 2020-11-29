#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "global.h"

asm JKRThread::JKRThread(unsigned long, int, int) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1568.s"
}

asm JKRThread::JKRThread(JKRHeap*, unsigned long, int, int) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1610.s"
}

asm JKRThread::JKRThread(OSThread*, int) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D16B8.s"
}

asm JKRThread::~JKRThread() {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1758.s"
}

asm void JKRThread::setCommon_mesgQueue(JKRHeap* heap, int message_count) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1830.s"
}

asm void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D18A4.s"
}

asm void JKRThread::start(void* param_1) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1934.s"
}

asm int JKRThread::searchThread(OSThread* thread) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1960.s"
}
