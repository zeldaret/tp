/**
 * MWCriticalSection_gc.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/utils/gc/MWCriticalSection_gc.h"

extern "C" BOOL OSRestoreInterrupts(unsigned int);
extern "C" unsigned int OSDisableInterrupts();

/* 80372CF8-80372CFC 36D638 0004+00 0/0 1/1 0/0 .text            MWInitializeCriticalSection */
extern "C" void MWInitializeCriticalSection(unsigned int*) {}

/* 80372CC8-80372CF8 36D608 0030+00 0/0 2/2 0/0 .text            MWEnterCriticalSection */
extern "C" void MWEnterCriticalSection(unsigned int* section) {
    *section = OSDisableInterrupts();
}

/* 80372CA4-80372CC8 36D5E4 0024+00 0/0 2/2 0/0 .text            MWExitCriticalSection */
extern "C" void MWExitCriticalSection(unsigned int* section) {
    OSRestoreInterrupts(*section);
}