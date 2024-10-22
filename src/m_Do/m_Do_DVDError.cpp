/**
 * m_Do_DVDError.cpp
 * DVD Error Handling
 */

#include "m_Do/m_Do_DVDError.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "dolphin/os/OSInterrupt.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_Reset.h"

/* 803DECC0-803DEFE0 00B9E0 0318+08 4/4 0/0 0/0 .bss             DvdErr_thread */
static OSThread DvdErr_thread;

/* 803DEFE0-803DFBE0 00BD00 0C00+00 0/1 0/0 0/0 .bss             DvdErr_stack */
#pragma push
#pragma force_active on
static u8 DvdErr_stack[3072] ALIGN_DECL(16);
#pragma pop

/* 803DFBE0-803DFC20 00C900 0028+18 1/2 0/0 0/0 .bss             Alarm */
static OSAlarm Alarm;

/* 8001659C-8001665C 010EDC 00C0+00 0/0 1/1 0/0 .text            mDoDvdErr_ThdInit__Fv */
void mDoDvdErr_ThdInit() {
    if (!mDoDvdErr_initialized) {
        OSTime time = OSGetTime();
        OSThread* curThread = OSGetCurrentThread();
        s32 priority = OSGetThreadPriority(curThread);

        OSCreateThread(&DvdErr_thread, mDoDvdErr_Watch, NULL, DvdErr_stack + sizeof(DvdErr_stack),
                       sizeof(DvdErr_stack), priority - 3, 1);
        OSResumeThread(&DvdErr_thread);
        OSCreateAlarm(&Alarm);
        OSSetPeriodicAlarm(&Alarm, time, OS_BUS_CLOCK / 4, AlarmHandler);

        mDoDvdErr_initialized = true;
    }
}

/* 8001665C-800166A4 010F9C 0048+00 0/0 1/1 0/0 .text            mDoDvdErr_ThdCleanup__Fv */
void mDoDvdErr_ThdCleanup() {
    if (mDoDvdErr_initialized) {
        OSCancelThread(&DvdErr_thread);
        OSCancelAlarm(&Alarm);
        mDoDvdErr_initialized = false;
    }
}

/* 800166A4-80016704 010FE4 0060+00 1/1 0/0 0/0 .text            mDoDvdErr_Watch__FPv */
static void mDoDvdErr_Watch(void*) {
    OSDisableInterrupts();
    { JKRThread thread(OSGetCurrentThread(), 0); }

    mDoExt_getAssertHeap()->becomeCurrentHeap();

    do {
        if (DVDGetDriveStatus() == DVD_STATE_FATAL_ERROR) {
            mDoDvdThd::suspend();
        }
        OSSuspendThread(&DvdErr_thread);
    } while (true);
}

/* 80016704-8001672C 011044 0028+00 1/1 0/0 0/0 .text            AlarmHandler__FP7OSAlarmP9OSContext
 */
static void AlarmHandler(OSAlarm*, OSContext*) {
    OSResumeThread(&DvdErr_thread);
}