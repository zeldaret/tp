#ifndef M_DO_M_DO_DVDERROR_H
#define M_DO_M_DO_DVDERROR_H

#include "JSystem/JKernel/JKRThread.h"

void mDoDvdErr_ThdCleanup();
static void mDoDvdErr_Watch(void*);
static void AlarmHandler(OSAlarm*, OSContext*);
void mDoDvdErr_ThdInit();

#endif /* M_DO_M_DO_DVDERROR_H */
