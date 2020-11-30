#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

// #include "JSystem/JKernel/JKRThread/asm/func_802D1568.s"
JKRThread::JKRThread(u32 stack_size, int message_count, int param_3)
    : __base(), __vt(lbl_803CC114), thread_list_link(this) {
    this->switch_count  = 0;
    this->cost          = 0;
    this->field_0x6c    = 0;
    this->field_0x60[0] = 0;
    this->field_0x70    = 0;

    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = lbl_80451370;
    }

    this->setCommon_heapSpecified(heap, stack_size, param_3);
    this->setCommon_mesgQueue(this->heap, message_count);
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D1610.s"
JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : __base(), __vt(lbl_803CC114), thread_list_link(this) {
    this->switch_count  = 0;
    this->cost          = 0;
    this->field_0x6c    = 0;
    this->field_0x60[0] = 0;
    this->field_0x70    = 0;

    if (heap == NULL) {
        heap = lbl_80451374;
    }

    this->setCommon_heapSpecified(heap, stack_size, param_4);
    this->setCommon_mesgQueue(this->heap, message_count);
}

asm JKRThread::JKRThread(OSThread* thread, int message_count) {
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

asm JKRThread* JKRThread::searchThread(OSThread* thread) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1960.s"
}

//
//
//

asm JKRThreadSwitch::JKRThreadSwitch(JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D199C.s"
}

asm JKRThreadSwitch* JKRThreadSwitch::createManager(JKRHeap* heap) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1A14.s"
}

asm JKRThread* JKRThreadSwitch::enter(JKRThread* param_1, int param_2) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1A70.s"
}

asm void JKRThreadSwitch::callback(OSThread* param_1, OSThread* param_2) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1AE4.s"
}

asm void JKRThreadSwitch::draw(JKRThreadName_* param_1, JUTConsole* param_2) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1C74.s"
}

//
//
//

asm u32 JKRThread::run() {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1E14.s"
}

//
//
//

asm void JKRThreadSwitch::draw(JKRThreadName_* param_1) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1E1C.s"
}

asm JKRThreadSwitch::~JKRThreadSwitch() {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1E4C.s"
}
