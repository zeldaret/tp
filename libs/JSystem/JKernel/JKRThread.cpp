#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

// #include "JSystem/JKernel/JKRThread/asm/func_802D1568.s"
JKRThread::JKRThread(u32 stack_size, int message_count, int param_3)
    : __base(), __vt(&lbl_803CC114), thread_list_link(this) {
    this->switch_count = 0;
    this->cost         = 0;
    this->field_0x6c   = 0;
    this->field_0x60   = 0;
    this->field_0x70   = 0;

    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = lbl_80451370;
    }

    this->setCommon_heapSpecified(heap, stack_size, param_3);
    this->setCommon_mesgQueue(this->heap, message_count);
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D1610.s"
JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : __base(), __vt(&lbl_803CC114), thread_list_link(this) {
    this->switch_count = 0;
    this->cost         = 0;
    this->field_0x6c   = 0;
    this->field_0x60   = 0;
    this->field_0x70   = 0;

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

// #include "JSystem/JKernel/JKRThread/asm/func_802D1830.s"
void JKRThread::setCommon_mesgQueue(JKRHeap* heap, int message_count) {
    this->message_count = message_count;
    this->messages      = (OSMessage*)JKRHeap::alloc(this->message_count * sizeof(OSMessage), 0, heap);

    OSInitMessageQueue(&this->queue, this->messages, this->message_count);
    lbl_8043428C.append(&this->thread_list_link);

    this->field_0x74 = (JKRHeap*)NULL;
    this->field_0x78 = (JKRHeap*)NULL;
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D18A4.s"
void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    this->heap       = heap;
    this->stack_size = stack_size & 0xffffffe0;
    this->stack_ptr  = JKRHeap::alloc(this->stack_size, 0x20, this->heap);
    this->os_thread  = (OSThread*)JKRHeap::alloc(sizeof(OSThread), 0x20, this->heap);

    void* stackBase = (void*)((int)this->stack_ptr + this->stack_size);
    OSCreateThread(this->os_thread, start, this, stackBase, this->stack_size, param_3, 1);
}

/*
Same problem as with other virtual calls.

-  2ce880:      81 83 00 00     lwz     r12,0(r3)
-  2ce884:      81 8c 00 0c     lwz     r12,12(r12)
+  2ce880:      80 83 00 00     lwz     r4,0(r3)
+  2ce884:      81 84 00 0c     lwz     r12,12(r4)
*/
#ifdef NONMATCHING
void* JKRThread::start(void* param) {
    JKRThread* thread = (JKRThread*)param;
    return (*thread->__vt->run)(thread);
}
#else
asm void* JKRThread::start(void* param_1) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1934.s"
}
#endif

// #include "JSystem/JKernel/JKRThread/asm/func_802D1960.s"
JKRThread* JKRThread::searchThread(OSThread* thread) {
    JSUPtrLink* node = lbl_8043428C.head;
    while (node) {
        JKRThread* jkr_thread = (JKRThread*)node->owner;
        if (jkr_thread->os_thread == thread) {
            return jkr_thread;
        }

        node = node->next;
    }

    return (JKRThread*)NULL;
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

// #include "JSystem/JKernel/JKRThread/asm/func_802D1E14.s"
u32 JKRThread::run() {
    return 0;
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
