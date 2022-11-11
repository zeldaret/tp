#ifndef OSALARM_H
#define OSALARM_H

#include "dolphin/os/OSTime.h"
#include "dolphin/os/OSError.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSAlarmLink {
    /* 0x0 */ struct OSAlarm* prev;
    /* 0x4 */ struct OSAlarm* next;
} OSAlarmLink;

typedef struct OSAlarm;
typedef void (*OSAlarmHandler)(struct OSAlarm* alarm, OSContext* context);

typedef struct OSAlarm {
    /* 0x00 */ OSAlarmHandler handler;
    /* 0x04 */ u32 tag;
    /* 0x08 */ OSTime fire_time;
    /* 0x10 */ OSAlarmLink link;
    /* 0x18 */ OSTime period_time;
    /* 0x20 */ OSTime start_time;
} OSAlarm;  // Size: 0x28

void OSInitAlarm(void);
void OSCreateAlarm(OSAlarm* alarm);
static void InsertAlarm(OSAlarm* alarm, s64 time, OSAlarmHandler* handler);
void OSSetAlarm(OSAlarm* alarm, s64 time, OSAlarmHandler* handler);
void OSSetPeriodicAlarm(OSAlarm* alarm, s64 start, s64 period, OSAlarmHandler* handler);
void OSCancelAlarm(OSAlarm* alarm);
static void DecrementerExceptionCallback(__OSException exception, OSContext* context);
static void DecrementerExceptionHandler(__OSException exception, OSContext* context);
static s32 OnReset(s32 param_0);

#ifdef __cplusplus
};
#endif

#endif /* OSALARM_H */
