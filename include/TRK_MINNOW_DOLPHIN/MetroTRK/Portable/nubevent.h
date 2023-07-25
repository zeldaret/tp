#ifndef METROTRK_PORTABLE_NUBEVENT_H
#define METROTRK_PORTABLE_NUBEVENT_H

#include "dolphin/types.h"

typedef struct TRKEventQueue {
    s32 _00;
    s32 _04;
    s32 _08;
    s32 _0C;
    s32 _10;
    s32 _14;
    s32 _18;
    s32 _1C;
    s32 _20;
    u32 _24;
} TRKEventQueue;

#endif /* METROTRK_PORTABLE_NUBEVENT_H */
