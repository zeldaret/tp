#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/nubevent.h"

TRKEventQueue gTRKEventQueue;

/* 8036CDE8-8036CE40 367728 0058+00 0/0 1/1 0/0 .text            TRKInitializeEventQueue */
DSError TRKInitializeEventQueue() {
    TRKInitializeMutex(&gTRKEventQueue);
    TRKAcquireMutex(&gTRKEventQueue);
    gTRKEventQueue.count = 0;
    gTRKEventQueue.next = 0;
    gTRKEventQueue.eventID = 0x100;
    TRKReleaseMutex(&gTRKEventQueue);
    return DS_NoError;
}

/* 8036CD34-8036CDE8 367674 00B4+00 0/0 1/1 0/0 .text            TRKGetNextEvent */
BOOL TRKGetNextEvent(TRKEvent* event) {
    BOOL status = 0;
    TRKAcquireMutex(&gTRKEventQueue);
    if (0 < gTRKEventQueue.count) {
        TRK_memcpy(event, &gTRKEventQueue.events[gTRKEventQueue.next], sizeof(TRKEvent));
        gTRKEventQueue.count--;
        if (++gTRKEventQueue.next == 2) {
            gTRKEventQueue.next = 0;
        }
        status = 1;
    }
    TRKReleaseMutex(&gTRKEventQueue);
    return status;
}

/* 8036CC54-8036CD34 367594 00E0+00 0/0 5/5 0/0 .text            TRKPostEvent */
DSError TRKPostEvent(TRKEvent* event) {
    DSError ret = DS_NoError;
    int nextEventID;

    TRKAcquireMutex(&gTRKEventQueue);

    if (gTRKEventQueue.count == 2) {
        ret = DS_EventQueueFull;

    } else {
        nextEventID = (gTRKEventQueue.next + gTRKEventQueue.count) % 2;
        TRK_memcpy(&gTRKEventQueue.events[nextEventID], event, sizeof(TRKEvent));
        gTRKEventQueue.events[nextEventID].eventID = gTRKEventQueue.eventID;

        if (++gTRKEventQueue.eventID < 0x100) {
            gTRKEventQueue.eventID = 0x100;
        }

        gTRKEventQueue.count++;
    }

    TRKReleaseMutex(&gTRKEventQueue);
    return ret;
}

/* 8036CC3C-8036CC54 36757C 0018+00 0/0 5/5 0/0 .text            TRKConstructEvent */
void TRKConstructEvent(TRKEvent* event, NubEventType eventType) {
    event->eventType = eventType;
    event->eventID = 0;
    event->msgBufID = -1;
}

/* 8036CC18-8036CC3C 367558 0024+00 0/0 1/1 0/0 .text            TRKDestructEvent */
void TRKDestructEvent(TRKEvent* event) {
    TRKReleaseBuffer(event->msgBufID);
}