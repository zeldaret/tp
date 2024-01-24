#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "stdio.h"
#include "dol2asm.h"

/* 8043428C-80434298 060FAC 000C+00 5/6 0/0 0/0 .bss             sThreadList__9JKRThread */
JSUList<JKRThread> JKRThread::sThreadList(0);

/* 804513B0-804513B4 0008B0 0004+00 2/2 1/1 0/0 .sbss            sManager__15JKRThreadSwitch */
JKRThreadSwitch* JKRThreadSwitch::sManager;

/* 804513B4-804513B8 0008B4 0004+00 3/3 0/0 0/0 .sbss            sTotalCount__15JKRThreadSwitch */
u32 JKRThreadSwitch::sTotalCount;

/* 804513B8-804513BC 0008B8 0004+00 1/1 0/0 0/0 .sbss            sTotalStart__15JKRThreadSwitch */
u32 JKRThreadSwitch::sTotalStart;

/* 804513BC-804513C0 0008BC 0004+00 1/1 0/0 0/0 .sbss            None */
static u32 data_804513BC;

/* 804513C0-804513C4 0008C0 0004+00 1/1 0/0 0/0 .sbss            mUserPreCallback__15JKRThreadSwitch
 */
JKRThreadSwitch_PreCallback JKRThreadSwitch::mUserPreCallback;

/* 804513C4-804513C8 0008C4 0004+00 1/1 0/0 0/0 .sbss mUserPostCallback__15JKRThreadSwitch */
JKRThreadSwitch_PostCallback JKRThreadSwitch::mUserPostCallback;

/* 802D1568-802D1610 2CBEA8 00A8+00 0/0 4/4 0/0 .text            __ct__9JKRThreadFUlii */
JKRThread::JKRThread(u32 stack_size, int message_count, int param_3) : mThreadListLink(this) {
    JKRHeap* heap = JKRHeap::findFromRoot(this);
    if (heap == NULL) {
        heap = JKRHeap::getSystemHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_3);
    setCommon_mesgQueue(mHeap, message_count);
}

/* 802D1610-802D16B8 2CBF50 00A8+00 0/0 2/2 0/0 .text            __ct__9JKRThreadFP7JKRHeapUlii */
JKRThread::JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4)
    : mThreadListLink(this) {
    if (heap == NULL) {
        heap = JKRHeap::getCurrentHeap();
    }

    setCommon_heapSpecified(heap, stack_size, param_4);
    setCommon_mesgQueue(mHeap, message_count);
}

/* 802D16B8-802D1758 2CBFF8 00A0+00 0/0 5/5 0/0 .text            __ct__9JKRThreadFP8OSThreadi */
JKRThread::JKRThread(OSThread* thread, int message_count) : mThreadListLink(this) {
    mHeap = NULL;
    mThreadRecord = thread;
    mStackSize = (u32)thread->stack_end - (u32)thread->stack_base;
    mStackMemory = thread->stack_base;

    setCommon_mesgQueue(JKRHeap::getSystemHeap(), message_count);
}

/* 802D1758-802D1830 2CC098 00D8+00 1/0 9/9 0/0 .text            __dt__9JKRThreadFv */
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
    i_JKRFree(mMessages);
}

/* 802D1830-802D18A4 2CC170 0074+00 3/3 0/0 0/0 .text setCommon_mesgQueue__9JKRThreadFP7JKRHeapi
 */
void JKRThread::setCommon_mesgQueue(JKRHeap* heap, int message_count) {
    mMessageCount = message_count;
    mMessages = (OSMessage*)JKRHeap::alloc(mMessageCount * sizeof(OSMessage), 0, heap);

    OSInitMessageQueue(&mMessageQueue, mMessages, mMessageCount);
    getList().append(&mThreadListLink);

    mCurrentHeap = NULL;
    mCurrentHeapError = NULL;
}

/* 802D18A4-802D1934 2CC1E4 0090+00 2/2 0/0 0/0 .text
 * setCommon_heapSpecified__9JKRThreadFP7JKRHeapUli             */
void JKRThread::setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3) {
    mHeap = heap;
    mStackSize = stack_size & 0xffffffe0;
    mStackMemory = JKRAllocFromHeap(mHeap, mStackSize, 0x20);
    mThreadRecord = (OSThread*)JKRAllocFromHeap(mHeap, sizeof(OSThread), 0x20);

    void* stackBase = (void*)((int)mStackMemory + mStackSize);
    OSCreateThread(mThreadRecord, start, this, stackBase, mStackSize, param_3, 1);
}

/* 802D1934-802D1960 2CC274 002C+00 1/1 0/0 0/0 .text            start__9JKRThreadFPv */
void* JKRThread::start(void* param) {
    JKRThread* thread = (JKRThread*)param;
    return thread->run();
}

/* 802D1960-802D199C 2CC2A0 003C+00 1/1 0/0 0/0 .text            searchThread__9JKRThreadFP8OSThread
 */
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

/* 802D199C-802D1A14 2CC2DC 0078+00 1/1 0/0 0/0 .text            __ct__15JKRThreadSwitchFP7JKRHeap
 */
JKRThreadSwitch::JKRThreadSwitch(JKRHeap* param_0) {
    mHeap = param_0;
    OSSetSwitchThreadCallback(JKRThreadSwitch::callback);
    this->field_0xC = 0;
    this->field_0x10 = 1;
    this->field_0x18 = 0;
    sTotalCount = 0;
    data_804513BC = 0;
    sTotalStart = 0;
    this->field_0x20 = 0;
    this->field_0x24 = 0;
    mSetNextHeap = true;
}

/* 802D1A14-802D1A70 2CC354 005C+00 0/0 1/1 0/0 .text createManager__15JKRThreadSwitchFP7JKRHeap
 */
JKRThreadSwitch* JKRThreadSwitch::createManager(JKRHeap* heap) {
    JUT_ASSERT(343, sManager == 0);

    if (!heap) {
        heap = JKRGetCurrentHeap();
    }

    sManager = new (heap, 0) JKRThreadSwitch(heap);
    return sManager;
}

/* 802D1A70-802D1AE4 2CC3B0 0074+00 0/0 1/1 0/0 .text enter__15JKRThreadSwitchFP9JKRThreadi */
JKRThread* JKRThreadSwitch::enter(JKRThread* thread, int thread_id) {
    if (!thread) {
        return NULL;
    }

    JKRThread* found_thread = JKRThread::searchThread(thread->getThreadRecord());
    if (found_thread) {
        thread = found_thread;
    }

    JKRThread::TLoad* loadInfo = thread->getLoadInfo();
    loadInfo->clear();
    loadInfo->setValid(true);
    loadInfo->setId(thread_id);
    return thread;
}

/* ############################################################################################## */
/* 8039CFA8-8039CFA8 029608 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039CFA8 = "on";
SECTION_DEAD static char const* const stringBase_8039CFAB = "off";
SECTION_DEAD static char const* const stringBase_8039CFAF =
    "JKRThread:%x  OSThread:%x  Load:ID:%d  (%s)\n";
#pragma pop

/* 802D1AE4-802D1C74 2CC424 0190+00 1/1 0/0 0/0 .text
 * callback__15JKRThreadSwitchFP8OSThreadP8OSThread             */
void JKRThreadSwitch::callback(OSThread* current, OSThread* next) {
    if (mUserPreCallback) {
        (*mUserPreCallback)(current, next);
    }

    sTotalCount = sTotalCount + 1;

    JKRHeap* next_heap = NULL;
    JSUList<JKRThread>& threadList = JKRThread::getList();
    JSUListIterator<JKRThread> iterator;
    for (iterator = threadList.getFirst(); iterator != threadList.getEnd(); ++iterator) {
        JKRThread* thread = iterator.getObject();

        if (thread->getThreadRecord() == current) {
            thread->setCurrentHeap(JKRHeap::getCurrentHeap());
            JKRThread::TLoad* loadInfo = thread->getLoadInfo();
            if (loadInfo->isValid()) {
                loadInfo->addCurrentCost();
            }
        }

        if (thread->getThreadRecord() == next) {
            JKRThread::TLoad* loadInfo = thread->getLoadInfo();
            if (loadInfo->isValid()) {
                loadInfo->setCurrentTime();
                loadInfo->incCount();
            }

            if (sManager->mSetNextHeap) {
                next_heap = thread->getCurrentHeap();
                if (!next_heap) {
                    next_heap = JKRHeap::getCurrentHeap();
                } else if (JKRHeap::getRootHeap()->isSubHeap(next_heap)) {
                    continue;
#ifdef DEBUG
                } else if (!JKRHeap::getRootHeap2()->isSubHeap(next_heap)) {
                    continue;
#endif
                } else {
                    switch (thread->getCurrentHeapError()) {
                    case 0:
                        JUT_PANIC(508, "JKRThreadSwitch: currentHeap destroyed.");
                        break;
                    case 1:
                        JUTWarningConsole("JKRThreadSwitch: currentHeap destroyed.\n");
                        next_heap = JKRHeap::getCurrentHeap();
                        break;
                    case 2:
                        next_heap = JKRHeap::getCurrentHeap();
                        break;
                    case 3:
                        next_heap = JKRHeap::getSystemHeap();
                        break;
                    }
                }
            }
        }
    }

    if (next_heap) {
        next_heap->becomeCurrentHeap();
    }

    if (mUserPostCallback) {
        (*mUserPostCallback)(current, next);
    }
}

/* 802D1C74-802D1E14 2CC5B4 01A0+00 1/0 0/0 0/0 .text
 * draw__15JKRThreadSwitchFP14JKRThreadName_P10JUTConsole       */
void JKRThreadSwitch::draw(JKRThreadName_* thread_name_list, JUTConsole* console) {
    const char* print_0 = " total: switch:%3d  time:%d(%df)\n";
    const char* print_1 = " -------------------------------------\n";

    if (!console) {
#ifdef DEBUG
        OSReport(print_0, getTotalCount(), (int)this->field_0x18, this->field_0x10);
        OSReport(print_1);
#endif
    } else {
        console->clear();
        console->print_f(print_0, getTotalCount(), (int)this->field_0x18, this->field_0x10);
        console->print(print_1);
    }

    JSUList<JKRThread>& threadList = JKRThread::getList();
    JSUListIterator<JKRThread> iterator;
    for (iterator = threadList.getFirst(); iterator != threadList.getEnd(); ++iterator) {
        JKRThread* thread = iterator.getObject();
        JKRThread::TLoad* loadInfo = thread->getLoadInfo();

        if (loadInfo->isValid()) {
            char* thread_print_name = NULL;
            if (thread_name_list) {
                JKRThreadName_* thread_name = thread_name_list;
                for (; thread_name->name; thread_name++) {
                    if (thread_name->id == loadInfo->getId()) {
                        thread_print_name = thread_name->name;
                        break;
                    }
                }
            }

            if (!thread_print_name) {
                char buffer[16];
                sprintf(buffer, "%d", loadInfo->getId());
                thread_print_name = buffer;
            }

            u32 switch_count = loadInfo->getCount();
            float cost_per_0x18 = loadInfo->getCost() / (float)this->field_0x18;

            u32 cost_int = (u32)(cost_per_0x18 * 100.0f);
            u32 cost_float = (u32)(cost_per_0x18 * 1000.0f) % 10;
            if (!console) {
#ifdef DEBUG
                OSReport(" [%10s] switch:%5d  cost:%2d.%d%%\n", thread_print_name, switch_count,
                         cost_int, cost_float);
#endif
            } else {
                console->print_f(" [%10s] switch:%5d  cost:%2d.%d%%\n", thread_print_name,
                                 switch_count, cost_int, cost_float);
            }
        }
    }
}

/* 802D1E14-802D1E1C 2CC754 0008+00 1/0 0/0 0/0 .text            run__9JKRThreadFv */
void* JKRThread::run() {
    return NULL;
}

/* 802D1E1C-802D1E4C 2CC75C 0030+00 1/0 0/0 0/0 .text draw__15JKRThreadSwitchFP14JKRThreadName_ */
void JKRThreadSwitch::draw(JKRThreadName_* thread_name_list) {
    draw(thread_name_list, NULL);
}

/* 802D1E4C-802D1E94 2CC78C 0048+00 1/0 0/0 0/0 .text            __dt__15JKRThreadSwitchFv */
JKRThreadSwitch::~JKRThreadSwitch() {}

/* 804342A4-804342B0 060FC4 000C+00 0/1 0/0 0/0 .bss             sTaskList__7JKRTask */
#pragma push
#pragma force_active on
JSUList<JKRTask> JKRTask::sTaskList;
#pragma pop

/* ############################################################################################## */
/* 804342B0-804342D0 060FD0 0020+00 0/0 0/0 0/0 .bss             sEndMesgQueue__7JKRTask */
#pragma push
#pragma force_active on
u8 JKRTask::sEndMesgQueue[32];
#pragma pop
