#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"

extern "C" {
void __ct__15JKRThreadSwitchFP7JKRHeap(void);
void __dl__FPv(void);
void __nw__FUlP7JKRHeapi(void);
void becomeCurrentHeap__7JKRHeapFv(void);
void callback__15JKRThreadSwitchFP8OSThreadP8OSThread(void);
void __cvt_fp2unsigned(void);
void func_803626BC(void);
void func_803664DC(void);
void isSubHeap__7JKRHeapCFP7JKRHeap(void);
void clear__10JUTConsoleFv(void);
void print_f__10JUTConsoleFPCce(void);
void print__10JUTConsoleFPCc(void);
void JUTWarningConsole(void);
void searchThread__9JKRThreadFP8OSThread(void);
}

extern JKRHeap* sCurrentHeap__7JKRHeap;
extern JKRHeap* sRootHeap__7JKRHeap;                // JKRHeap::sRootHeap
extern void* lbl_803CC100[5];                       // JKRThreadSwitch::__vt
extern u32 lbl_804513B4;                            // JKRThreadSwitch::sTotalCount
extern u32 lbl_804513BC;                            // DAT_804513bc
extern u32 lbl_804513B8;                            // JKRThreadSwitch::sTotalStart
extern JKRThreadSwitch* lbl_804513B0;               // JKRThreadSwitch::sManager
extern void* lbl_804513C0;                          // JKRThreadSwitch::mUserPreCallback
extern void* lbl_804513C4;                          //  JKRThreadSwitch::mUserPostCallback
extern JSUList<JKRThread> sThreadList__9JKRThread;  // JSUList<JKRThread> JKRThread::sThreadList
extern char lbl_8039CFA8[1];  // 8039cfdc-0x34 "JKRThreadSwitch: currentHeap destroyed.\n"

// lbl_80455FC0 JKRThread.o @934
static const u8 lbl_80455FC0[4] = {0x42, 0xc8, 0x0, 0x0};
// lbl_80455FC4 JKRThread.o @935
static const u8 lbl_80455FC4[4] = {0x44, 0x7a, 0x0, 0x0};
// lbl_80455FC8 JKRThread.o @937
static const u8 lbl_80455FC8[8] = {0x43, 0x30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
extern JKRExpHeap* sSystemHeap__7JKRHeap;

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
