#include "dolphin/os/OSTime.h"
#include "dolphin/os.h"

#define OS_TIME_MONTH_MAX 12
#define OS_TIME_WEEK_DAY_MAX 7
#define OS_TIME_YEAR_DAY_MAX 365

/* 803426FC-80342714 33D03C 0018+00 1/1 33/33 0/0 .text            OSGetTime */
asm OSTime OSGetTime(void) {
    // clang-format off
	nofralloc

	mftbu r3
    mftb r4, 0x10C
    
    mftbu r5
    cmpw r3, r5
    bne OSGetTime
    
    blr
    // clang-format on
}

/* 80342714-8034271C -00001 0008+00 0/0 0/0 0/0 .text            OSGetTick */
asm OSTick OSGetTick(void) {
    // clang-format off
	nofralloc

	mftb r3, 0x10C
	blr
    // clang-format on
}

#define OS_SYSTEMTIME_BASE 0x30D8

/* 8034271C-80342780 33D05C 0064+00 0/0 16/16 0/0 .text            __OSGetSystemTime */
OSTime __OSGetSystemTime(void) {
    BOOL enabled;
    OSTime* timeAdjustAddr = (OSTime*)(OS_BASE_CACHED + OS_SYSTEMTIME_BASE);
    OSTime result;

    enabled = OSDisableInterrupts();
    result = *timeAdjustAddr + OSGetTime();
    OSRestoreInterrupts(enabled);

    return result;
}

/* 80342780-803427D8 33D0C0 0058+00 0/0 1/1 0/0 .text            __OSTimeToSystemTime */
OSTime __OSTimeToSystemTime(OSTime time) {
    BOOL enabled;
    OSTime* timeAdjustAddr = (OSTime*)(OS_BASE_CACHED + OS_SYSTEMTIME_BASE);
    OSTime result;

    enabled = OSDisableInterrupts();
    result = *timeAdjustAddr + time;
    OSRestoreInterrupts(enabled);

    return result;
}

/* 803D1048-803D1078 02E168 0030+00 1/1 0/0 0/0 .data            YearDays */
// End of each month in standard year
static s32 YearDays[] = {
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334,
};

/* 803D1078-803D10A8 02E198 0030+00 1/1 0/0 0/0 .data            LeapYearDays */
// End of each month in leap year
static s32 LeapYearDays[] = {
    0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335,
};

static inline BOOL IsLeapYear(s32 year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

static inline s32 GetYearDays(s32 year, s32 mon) {
    return (IsLeapYear(year) ? LeapYearDays : YearDays)[mon];
}

static inline s32 GetLeapDays(s32 year) {
    if (year < 1) {
        return 0;
    }
    return (year + 3) / 4 - (year - 1) / 100 + (year - 1) / 400;
}

/* 803427D8-80342974 33D118 019C+00 1/1 0/0 0/0 .text            GetDates */
static void GetDates(s32 days, OSCalendarTime* cal) {
    s32 year;
    s32 totalDays;
    s32* p_days;
    s32 month;
    cal->week_day = (days + 6) % OS_TIME_WEEK_DAY_MAX;

    for (year = days / OS_TIME_YEAR_DAY_MAX;
         days < (totalDays = year * OS_TIME_YEAR_DAY_MAX + GetLeapDays(year));)
    {
        year--;
    }

    days -= totalDays;
    cal->year = year;
    cal->year_day = days;

    p_days = IsLeapYear(year) ? LeapYearDays : YearDays;
    month = OS_TIME_MONTH_MAX;
    while (days < p_days[--month]) {
        ;
    }
    cal->month = month;
    cal->day_of_month = days - p_days[month] + 1;
}

#define BIAS (2000 * 365 + (2000 + 3) / 4 - (2000 - 1) / 100 + (2000 - 1) / 400)

/* 80342974-80342B78 33D2B4 0204+00 0/0 4/4 0/0 .text            OSTicksToCalendarTime */
#pragma dont_inline on
void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* td) {
    int days;
    int secs;
    OSTime d;

    d = ticks % OSSecondsToTicks(1);
    if (d < 0) {
        d += OSSecondsToTicks(1);
    }
    td->microseconds = (int)(OSTicksToMicroseconds(d) % 1000);
    td->milliseconds = (int)(OSTicksToMilliseconds(d) % 1000);

    ticks -= d;
    days = (int)(OSTicksToSeconds(ticks) / 86400 + BIAS);
    secs = (int)(OSTicksToSeconds(ticks) % 86400);
    if (secs < 0) {
        days -= 1;
        secs += 24 * 60 * 60;
    }

    GetDates(days, td);

    td->hours = secs / 60 / 60;
    td->minutes = (secs / 60) % 60;
    td->seconds = secs % 60;
}
#pragma dont_inline reset