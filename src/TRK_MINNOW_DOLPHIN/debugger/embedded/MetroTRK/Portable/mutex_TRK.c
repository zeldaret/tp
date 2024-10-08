/**
 * mutex_TRK.c
 * Description:
 */

#include "trk.h"

/* 8036F4A8-8036F4B0 369DE8 0008+00 0/0 2/2 0/0 .text            TRKInitializeMutex */
DSError TRKInitializeMutex(void*) {
    return DS_NoError;
}

/* 8036F4A0-8036F4A8 369DE0 0008+00 0/0 6/6 0/0 .text            TRKAcquireMutex */
DSError TRKAcquireMutex(void*) {
    return DS_NoError;
}

/* 8036F498-8036F4A0 369DD8 0008+00 0/0 6/6 0/0 .text            TRKReleaseMutex */
DSError TRKReleaseMutex(void*) {
    return DS_NoError;
}