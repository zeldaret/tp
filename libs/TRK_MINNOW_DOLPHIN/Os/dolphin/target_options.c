/**
 * target_options.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/Os/dolphin/target_options.h"

static u8 useSerialIO;

/* 80372190-8037219C 36CAD0 000C+00 0/0 1/1 0/0 .text            SetUseSerialIO */
void SetUseSerialIO(u8 serialIO) {
    useSerialIO = serialIO;
}

/* 80372180-80372190 36CAC0 0010+00 0/0 2/2 0/0 .text            GetUseSerialIO */
u8 GetUseSerialIO(void) {
    return useSerialIO;
}
