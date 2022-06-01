#ifndef M_DO_M_DO_DVDERROR_H
#define M_DO_M_DO_DVDERROR_H

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRThread.h"

void mDoDvdErr_ThdCleanup();
static void mDoDvdErr_Watch(void*);
static void AlarmHandler(OSAlarm*, OSContext*);

#endif /* M_DO_M_DO_DVDERROR_H */
