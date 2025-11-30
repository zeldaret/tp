#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JASTaskThread.h"
#include "JSystem/JAudio2/JASCalc.h"
#include "JSystem/JAudio2/JASCriticalSection.h"
#include "JSystem/JKernel/JKRSolidHeap.h"

/* 8028F6C4-8028F724 28A004 0060+00 0/0 1/1 0/0 .text            __ct__13JASTaskThreadFiiUl */
JASTaskThread::JASTaskThread(int priority, int msgCount, u32 stackSize) :
    JKRThread(JASDram, stackSize, msgCount, priority)
{
    field_0x84 = false;
    OSInitThreadQueue(&threadQueue_);
}

/* 8028F724-8028F850 28A064 012C+00 1/0 0/0 0/0 .text            __dt__13JASTaskThreadFv */
JASTaskThread::~JASTaskThread() {
    OSMessage msg;
    BOOL received;
    while (true) {
        msg = waitMessage(&received);
        if (!received) {
            return;
        }
        JASKernel::getCommandHeap()->free(msg);
    }
}

/* 8028F850-8028F9EC 28A190 019C+00 1/1 0/0 0/0 .text allocCallStack__13JASTaskThreadFPFPv_vPCvUl
 */
void* JASTaskThread::allocCallStack(JASThreadCallback callback, const void* msg, u32 msgSize) {
    ThreadMemPool* heap;
    u32 size = msgSize + 8;
    JASThreadCallStack *callStack = (JASThreadCallStack*) JASKernel::getCommandHeap()->alloc(size);
    if (callStack == NULL) {
        return NULL;
    }

    callStack->msgType_ = 1;
    JASCalc::bcopy(msg, callStack->msg.buffer, msgSize);
    callStack->callback_ = callback;
    return callStack;
}

/* 8028F9EC-8028FB5C 28A32C 0170+00 1/1 0/0 0/0 .text allocCallStack__13JASTaskThreadFPFPv_vPv */
void* JASTaskThread::allocCallStack(JASThreadCallback callback, void* msg) {
    JASThreadCallStack *callStack;
    callStack = (JASThreadCallStack*)JASKernel::getCommandHeap()->alloc(12);
    if (callStack == NULL) {
        return NULL;
    }

    callStack->msgType_ = 0;
    callStack->msg.bufferPtr = msg;
    callStack->callback_ = callback;
    return callStack;
}

/* 8028FB5C-8028FC54 28A49C 00F8+00 0/0 6/6 0/0 .text sendCmdMsg__13JASTaskThreadFPFPv_vPCvUl */
int JASTaskThread::sendCmdMsg(JASThreadCallback callback, const void* msg, u32 msgSize) {
    void* callstack;

    callstack = allocCallStack(callback, msg, msgSize);
    if (callstack == NULL) {
        return 0;
    }

    BOOL iVar2 = sendMessage(callstack);
    if (!iVar2) {
        JASKernel::getCommandHeap()->free(callstack);
    }
    return iVar2;
}

/* 8028FC54-8028FD4C 28A594 00F8+00 0/0 3/3 0/0 .text sendCmdMsg__13JASTaskThreadFPFPv_vPv */
int JASTaskThread::sendCmdMsg(JASThreadCallback callback, void* msg) {
    void* callstack;

    callstack = allocCallStack(callback, msg);
    if (callstack == NULL) {
        return 0;
    }

    BOOL iVar2 = sendMessage(callstack);
    if (!iVar2) {
        JASKernel::getCommandHeap()->free(callstack);
    }
    return iVar2;
}

/* 8028FD4C-8028FE88 28A68C 013C+00 1/0 0/0 0/0 .text            run__13JASTaskThreadFv */
// NONMATCHING Regalloc
void* JASTaskThread::run() {
    JASThreadCallStack* callstack;
    OSInitFastCast();
    do {
        callstack = (JASThreadCallStack*)waitMessageBlock();
        if (field_0x84) {
            OSSleepThread(&threadQueue_);
        }

        if (callstack->msgType_) {
            callstack->callback_(callstack->msg.buffer);
        } else {
            callstack->callback_(callstack->msg.bufferPtr);
        }

        JASKernel::getCommandHeap()->free(callstack);
    } while (true);
}

/* 8028FE88-8028FEFC 28A7C8 0074+00 0/0 1/1 0/0 .text            pause__13JASTaskThreadFb */
void JASTaskThread::pause(bool param_0) {
    JASCriticalSection aJStack_14;
    if (param_0) {
        field_0x84 = 1;
    } else {
        if (field_0x84) {
            OSWakeupThread(&threadQueue_);
        }
        field_0x84 = 0;
    }
}
