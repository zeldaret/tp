#ifndef METROTRK_PORTABLE_NUBEVENT_H
#define METROTRK_PORTABLE_NUBEVENT_H

#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/msgbuf.h"
#include "dolphin/types.h"

typedef u32 NubEventID;

typedef enum NubEventType {
    NullEvent,
    ShutdownEvent,
    RequestEvent,
    BreakpointEvent,
    ExceptionEvent,
    SupportEvent
} NubEventType;

typedef struct NubEvent {
    NubEventType mType;
    NubEventID mID;
    MessageBufferID mMessageBufferID;
} NubEvent;

typedef struct EventQueue {
    s32 _00;
    s32 mCount;
    s32 mFirst;
    NubEvent mEventList[2];
    NubEventID mEventID;
} EventQueue;
EventQueue gTRKEventQueue;

#endif /* METROTRK_PORTABLE_NUBEVENT_H */
