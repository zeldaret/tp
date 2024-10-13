#ifndef OSTIME_H
#define OSTIME_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

OSTime OS_SYSTEM_TIME AT_ADDRESS(0x800030D8);

typedef struct OSCalendarTime {
    /* 0x00 */ s32 seconds;
    /* 0x04 */ s32 minutes;
    /* 0x08 */ s32 hours;
    /* 0x0C */ s32 day_of_month;
    /* 0x10 */ s32 month;
    /* 0x14 */ s32 year;
    /* 0x18 */ s32 week_day;
    /* 0x1C */ s32 year_day;
    /* 0x20 */ s32 milliseconds;
    /* 0x24 */ s32 microseconds;
} OSCalendarTime;

OSTime OSGetTime(void);
OSTick OSGetTick(void);
OSTime __OSGetSystemTime(void);
OSTime __OSTimeToSystemTime(OSTime time);
void GetDates(s32 days, OSCalendarTime* ct);
void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* ct);

extern u32 __OSBusClock AT_ADDRESS(0x800000F8);

#define OS_BUS_CLOCK (__OSBusClock)
#define OS_CORE_CLOCK (*(u32*)0x800000FC)
#define OS_TIMER_CLOCK (OS_BUS_CLOCK / 4)
#define OS_TIMER_CLOCK_MS (OS_TIMER_CLOCK / 1000)

#define OSTicksToCycles(ticks) (((ticks) * ((OS_CORE_CLOCK * 2) / OS_TIMER_CLOCK)) / 2)
#define OSTicksToSeconds(ticks) ((ticks) / OS_TIMER_CLOCK)
#define OSTicksToMilliseconds(ticks) ((ticks) / (OS_TIMER_CLOCK / 1000))
#define OSTicksToMicroseconds(ticks) (((ticks)*8) / (OS_TIMER_CLOCK / 125000))
#define OSTicksToNanoseconds(ticks) (((ticks)*8000) / (OS_TIMER_CLOCK / 125000))
#define OSSecondsToTicks(sec) ((sec)*OS_TIMER_CLOCK)
#define OSMillisecondsToTicks(msec) ((msec) * (OS_TIMER_CLOCK / 1000))
#define OSMicrosecondsToTicks(usec) (((usec) * (OS_TIMER_CLOCK / 125000)) / 8)
#define OSNanosecondsToTicks(nsec) (((nsec) * (OS_TIMER_CLOCK / 125000)) / 8000)

#ifdef __cplusplus
};
#endif

#endif /* OSTIME_H */
