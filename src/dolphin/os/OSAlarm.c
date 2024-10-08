#include "dolphin/os/OSAlarm.h"
#include "dolphin/os.h"

static BOOL OnReset(BOOL param_0);
BOOL __DVDTestAlarm(OSAlarm* alarm);

/* 803CF480-803CF490 -00001 0010+00 1/1 0/0 0/0 .data            ResetFunctionInfo */
static OSResetFunctionInfo ResetFunctionInfo = {
    OnReset,
    0xFFFFFFFF,
};

/* 80451638-80451640 000B38 0008+00 5/5 0/0 0/0 .sbss            AlarmQueue */
static OSAlarmQueue AlarmQueue;

/* 8033A8A0-8033A8F8 3351E0 0058+00 0/0 3/3 0/0 .text            OSInitAlarm */
void OSInitAlarm(void) {
    if (__OSGetExceptionHandler(8) != DecrementerExceptionHandler) {
        AlarmQueue.head = AlarmQueue.tail = NULL;
        __OSSetExceptionHandler(8, DecrementerExceptionHandler);
        OSRegisterResetFunction(&ResetFunctionInfo);
    }
}

/* 8033A8F8-8033A908 335238 0010+00 0/0 17/17 0/0 .text            OSCreateAlarm */
void OSCreateAlarm(OSAlarm* alarm) {
    alarm->handler = NULL;
    alarm->tag = 0;
}

static inline SetTimer(OSAlarm* alarm) {
    OSTime delta;

    delta = alarm->fire_time - __OSGetSystemTime();
    if (delta < 0) {
        PPCMtdec(0);
    } else if (delta < 0x80000000) {
        PPCMtdec((u32)delta);
    } else {
        PPCMtdec(0x7fffffff);
    }
}

/* 8033A908-8033AB58 335248 0250+00 3/3 0/0 0/0 .text            InsertAlarm */
static void InsertAlarm(OSAlarm* alarm, OSTime fire, OSAlarmHandler handler) {
    OSAlarm* next;
    OSAlarm* prev;

    if (0 < alarm->period_time) {
        OSTime time = __OSGetSystemTime();

        fire = alarm->start_time;
        if (alarm->start_time < time) {
            fire += alarm->period_time * ((time - alarm->start_time) / alarm->period_time + 1);
        }
    }

    alarm->handler = handler;
    alarm->fire_time = fire;

    for (next = AlarmQueue.head; next; next = next->link.next) {
        if (next->fire_time <= fire) {
            continue;
        }

        alarm->link.prev = next->link.prev;
        next->link.prev = alarm;
        alarm->link.next = next;
        prev = alarm->link.prev;
        if (prev) {
            prev->link.next = alarm;
        } else {
            AlarmQueue.head = alarm;
            SetTimer(alarm);
        }
        return;
    }

    alarm->link.next = 0;
    prev = AlarmQueue.tail;
    AlarmQueue.tail = alarm;
    alarm->link.prev = prev;

    if (prev) {
        prev->link.next = alarm;
    } else {
        AlarmQueue.head = AlarmQueue.tail = alarm;
        SetTimer(alarm);
    }
}

/* 8033AB58-8033ABC0 335498 0068+00 0/0 18/18 0/0 .text            OSSetAlarm */
void OSSetAlarm(OSAlarm* alarm, OSTime tick, OSAlarmHandler handler) {
    BOOL enabled;
    enabled = OSDisableInterrupts();
    alarm->period_time = 0;
    InsertAlarm(alarm, __OSGetSystemTime() + tick, handler);
    OSRestoreInterrupts(enabled);
}

/* 8033ABC0-8033AC3C 335500 007C+00 0/0 1/1 0/0 .text            OSSetPeriodicAlarm */
void OSSetPeriodicAlarm(OSAlarm* alarm, OSTime start, OSTime period, OSAlarmHandler handler) {
    BOOL enabled;
    enabled = OSDisableInterrupts();
    alarm->period_time = period;
    alarm->start_time = __OSTimeToSystemTime(start);
    InsertAlarm(alarm, 0, handler);
    OSRestoreInterrupts(enabled);
}

/* 8033AC3C-8033AD58 33557C 011C+00 1/1 11/11 0/0 .text            OSCancelAlarm */
void OSCancelAlarm(OSAlarm* alarm) {
    OSAlarm* next;
    BOOL enabled;

    enabled = OSDisableInterrupts();

    if (alarm->handler == 0) {
        OSRestoreInterrupts(enabled);
        return;
    }

    next = alarm->link.next;
    if (next == 0) {
        AlarmQueue.tail = alarm->link.prev;
    } else {
        next->link.prev = alarm->link.prev;
    }
    if (alarm->link.prev) {
        alarm->link.prev->link.next = next;
    } else {
        AlarmQueue.head = next;
        if (next) {
            SetTimer(next);
        }
    }
    alarm->handler = 0;

    OSRestoreInterrupts(enabled);
}

/* 8033AD58-8033AF88 335698 0230+00 1/1 0/0 0/0 .text            DecrementerExceptionCallback */
static void DecrementerExceptionCallback(register __OSException exception,
                                         register OSContext* context) {
    OSAlarm* alarm;
    OSAlarm* next;
    OSAlarmHandler handler;
    OSTime time;
    OSContext exceptionContext;
    time = __OSGetSystemTime();
    alarm = AlarmQueue.head;
    if (alarm == 0) {
        OSLoadContext(context);
    }

    if (time < alarm->fire_time) {
        SetTimer(alarm);
        OSLoadContext(context);
    }

    next = alarm->link.next;
    AlarmQueue.head = next;
    if (next == 0) {
        AlarmQueue.tail = 0;
    } else {
        next->link.prev = 0;
    }

    handler = alarm->handler;
    alarm->handler = 0;
    if (0 < alarm->period_time) {
        InsertAlarm(alarm, 0, handler);
    }

    if (AlarmQueue.head) {
        SetTimer(AlarmQueue.head);
    }

    OSDisableScheduler();
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(&exceptionContext);
    handler(alarm, context);
    OSClearContext(&exceptionContext);
    OSSetCurrentContext(context);
    OSEnableScheduler();
    __OSReschedule();
    OSLoadContext(context);
}

/* 8033AF88-8033AFD8 3358C8 0050+00 1/1 0/0 0/0 .text            DecrementerExceptionHandler */
static asm void DecrementerExceptionHandler(register __OSException exception,
                                            register OSContext* context) {
    // clang-format off
    nofralloc

    stw r0, 0(context)
    stw r1, 4(context)
    stw r2, 8(context)
    stmw r6, 0x18(context)
    mfspr r0, 0x391
    stw r0, 0x1a8(context)
    mfspr r0, 0x392
    stw r0, 0x1ac(context)
    mfspr r0, 0x393
    stw r0, 0x1b0(context)
    mfspr r0, 0x394
    stw r0, 0x1b4(context)
    mfspr r0, 0x395
    stw r0, 0x1b8(context)
    mfspr r0, 0x396
    stw r0, 0x1bc(context)
    mfspr r0, 0x397
    stw r0, 0x1c0(context)
    stwu r1, -8(r1)
    b DecrementerExceptionCallback
    // clang-format on
}

/* 8033AFD8-8033B078 335918 00A0+00 1/0 0/0 0/0 .text            OnReset */
static BOOL OnReset(BOOL final) {
    OSAlarm* alarm;
    OSAlarm* next;

    if (final != FALSE) {
        alarm = AlarmQueue.head;
        next = (alarm) ? alarm->link.next : NULL;

        while (alarm != NULL) {
            if (__DVDTestAlarm(alarm) == FALSE) {
                OSCancelAlarm(alarm);
            }

            alarm = next;
            next = (alarm) ? alarm->link.next : NULL;
        }
    }

    return TRUE;
}