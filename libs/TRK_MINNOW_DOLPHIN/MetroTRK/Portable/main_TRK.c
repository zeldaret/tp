/**
 * main_TRK.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/main_TRK.h"
#include "TRK_MINNOW_DOLPHIN/utils/common/MWTrace.h"

/* 8044F818-8044F820 07C538 0004+04 1/1 0/0 0/0 .bss             TRK_mainError */
static DSError TRK_mainError;

/* 80371B9C-80371BF4 36C4DC 0058+00 0/0 2/2 0/0 .text            TRK_main */
DSError TRK_main(void) {
    MWTRACE(1, "TRK_Main \n");
    TRK_mainError = TRKInitializeNub();

    if (TRK_mainError == DS_NoError) {
        TRKNubWelcome();
        TRKNubMainLoop();
    }

    TRK_mainError = TRKTerminateNub();
    return TRK_mainError;
}
