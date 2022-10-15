#ifndef OSTIME_H
#define OSTIME_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s64 OSTime;
typedef u32 OSTick;

OSTime OS_SYSTEM_TIME : 0x800030D8;

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
void GetDates(OSTime ticks, OSCalendarTime* ct);
void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* ct);

#ifdef __cplusplus
};
#endif

#endif /* OSTIME_H */
