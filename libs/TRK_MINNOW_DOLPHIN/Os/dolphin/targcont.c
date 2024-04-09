/**
 * targcont.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/Os/dolphin/targcont.h"

/* 8037214C-80372180 36CA8C 0034+00 0/0 2/2 0/0 .text            TRKTargetContinue */
DSError TRKTargetContinue(void) {
    TRKTargetSetStopped(0);
    UnreserveEXI2Port();
    TRKSwapAndGo();
    ReserveEXI2Port();
    return 0;
}
