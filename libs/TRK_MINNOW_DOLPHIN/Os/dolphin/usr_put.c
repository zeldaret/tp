/**
 * usr_put.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/Os/dolphin/usr_put.h"
// #include "dolphin/os.h"

// void OSReport(char* fmt, ...) causes extra crclr instruction.
// look into issue later
extern void OSReport(char* fmt);

/* 8036DB14-8036DB9C 368454 0088+00 0/0 2/2 0/0 .text            usr_puts_serial */
BOOL usr_puts_serial(const char* msg) {
    BOOL connect_ = FALSE;
    char c;
    char buf[2];

    while (!connect_ && (c = *msg++) != '\0') {
        BOOL connect = GetTRKConnected();

        buf[0] = c;
        buf[1] = '\0';

        SetTRKConnected(FALSE);
        OSReport(buf);

        SetTRKConnected(connect);
        connect_ = FALSE;
    }

    return connect_;
}

/* 8036DB10-8036DB14 368450 0004+00 0/0 1/1 0/0 .text            usr_put_initialize */
void usr_put_initialize(void) {}
