#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

extern "C" {
void __ct__15JKRThreadSwitchFP7JKRHeap(void);
void __dl__FPv(void);
void __nw__FUlP7JKRHeapi(void);
void becomeCurrentHeap__7JKRHeapFv(void);
void callback__15JKRThreadSwitchFP8OSThreadP8OSThread(void);
void func_803620AC(void);
void func_803626BC(void);
void func_803664DC(void);
void isSubHeap__7JKRHeapCFP7JKRHeap(void);
void JUTConsole_NS_clear(void);
void JUTConsole_NS_print_f(void);
void JUTConsole_NS_print(void);
void JUTWarningConsole(void);
void searchThread__9JKRThreadFP8OSThread(void);
}

JKRThread::JKRThread(u32 stack_size, int message_count, int param_3) : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;

    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = JKRHeap::getSystemHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_3);
    setCommon_mesgQueue(mHeap, message_count);
}

JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;

    if (heap == NULL) {
        heap = JKRHeap::getCurrentHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_4);
    setCommon_mesgQueue(mHeap, message_count);
}

JKRThread::JKRThread(OSThread* thread, int message_count) : mThreadListLink(this) {
    mSwitchCount = 0;
    mCost = 0;
    field_0x6c = 0;
    field_0x60 = 0;
    field_0x70 = 0;
    mHeap = NULL;
    mThreadRecord = thread;
    mStackSize = (u32)thread->stack_end - (u32)thread->stack_base;
    mStackMemory = thread->stack_base;

    setCommon_mesgQueue(JKRHeap::getSystemHeap(), message_count);
}

JKRThread::~JKRThread() {
    getList().remove(&mThreadListLink);

    if (mHeap) {
        BOOL result = OSIsThreadTerminated(mThreadRecord);
        if (result == FALSE) {
            OSDetachThread(mThreadRecord);
            OSCancelThread(mThreadRecord);
        }
        JKRFreeToHeap(mHeap, mStackMemory);
        JKRFreeToHeap(mHeap, mThreadRecord);
    }
    JKRFree(mMessages);
}

void JKRThread::setCommon_mesgQueue(JKRHeap* heap, int message_count) {
    mMessageCount = message_count;
    mMessages = (OSMessage*)JKRHeap::alloc(mMessageCount * sizeof(OSMessage), 0, heap);

    OSInitMessageQueue(&mMessageQueue, mMessages, mMessageCount);
    getList().append(&mThreadListLink);

    mCurrentHeap = NULL;
    mCurrentHeapError = NULL;
}

void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    mHeap = heap;
    mStackSize = stack_size & 0xffffffe0;
    mStackMemory = JKRAllocFromHeap(mHeap, mStackSize, 0x20);
    mThreadRecord = (OSThread*)JKRAllocFromHeap(mHeap, sizeof(OSThread), 0x20);

    void* stackBase = (void*)((int)mStackMemory + mStackSize);
    OSCreateThread(mThreadRecord, start, this, stackBase, mStackSize, param_3, 1);
}

void* JKRThread::start(void* param) {
    JKRThread* thread = (JKRThread*)param;
    return thread->run();
}

JKRThread* JKRThread::searchThread(OSThread* thread) {
    JSUList<JKRThread>& threadList = getList();
    JSUListIterator<JKRThread> iterator;
    for (iterator = threadList.getFirst(); iterator != threadList.getEnd(); ++iterator) {
        if (iterator->getThreadRecord() == thread) {
            return iterator.getObject();
        }
    }

    return NULL;
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
