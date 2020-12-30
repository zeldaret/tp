#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

// #include "JSystem/JKernel/JKRThread/asm/func_802D1568.s"
JKRThread::JKRThread(u32 stack_size, int message_count, int param_3) : mThreadListLink(this) {
    this->mSwitchCount = 0;
    this->mCost = 0;
    this->field_0x6c = 0;
    this->field_0x60 = 0;
    this->field_0x70 = 0;

    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = lbl_80451370;
    }

    this->setCommon_heapSpecified(heap, stack_size, param_3);
    this->setCommon_mesgQueue(this->mHeap, message_count);
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D1610.s"
JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : mThreadListLink(this) {
    this->mSwitchCount = 0;
    this->mCost = 0;
    this->field_0x6c = 0;
    this->field_0x60 = 0;
    this->field_0x70 = 0;

    if (heap == NULL) {
        heap = lbl_80451374;
    }

    this->setCommon_heapSpecified(heap, stack_size, param_4);
    this->setCommon_mesgQueue(this->mHeap, message_count);
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
    this->mMessageCount = message_count;
    this->mMessages = (OSMessage*)JKRHeap::alloc(this->mMessageCount * sizeof(OSMessage), 0, heap);

    OSInitMessageQueue(&this->mQueue, this->mMessages, this->mMessageCount);
    lbl_8043428C.append(&this->mThreadListLink);

    this->field_0x74 = (JKRHeap*)NULL;
    this->field_0x78 = (JKRHeap*)NULL;
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D18A4.s"
void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    this->mHeap = heap;
    this->mStackSize = stack_size & 0xffffffe0;
    this->mStackPtr = JKRHeap::alloc(this->mStackSize, 0x20, this->mHeap);
    this->mOSThread = (OSThread*)JKRHeap::alloc(sizeof(OSThread), 0x20, this->mHeap);

    void* stackBase = (void*)((int)this->mStackPtr + this->mStackSize);
    OSCreateThread(this->mOSThread, start, this, stackBase, this->mStackSize, param_3, 1);
}

// #include "JSystem/JKernel/JKRThread/asm/func_802D1934.s"
void* JKRThread::start(void* param) {
    JKRThread* thread = (JKRThread*)param;
    return thread->run();
}

#ifdef NONMATCHING
// #include "JSystem/JKernel/JKRThread/asm/func_802D1960.s"
JKRThread* JKRThread::searchThread(OSThread* thread) {
    JSUList<JKRThread>* threadList = JKRThread::getList();
    JSUListIterator<JKRThread> iterator;
    for (iterator = threadList; iterator != threadList->getEnd(); iterator++) {
        JKRThread* jkrThread = iterator.getObject();
        if (jkrThread->mOSThread == thread) {
            return jkrThread;
        }
    }

    return NULL;
}
#else
asm JKRThread* JKRThread::searchThread(OSThread* thread) {
    nofralloc
#include "JSystem/JKernel/JKRThread/asm/func_802D1960.s"
}
#endif

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
void* JKRThread::run() {
    return NULL;
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
