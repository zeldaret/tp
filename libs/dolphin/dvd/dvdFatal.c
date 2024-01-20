#include "dolphin/dvd/dvdFatal.h"
#include "dolphin/types.h"

/* 804517C8-804517D0 000CC8 0004+04 1/1 0/0 0/0 .sbss            FatalFunc */
static void (*FatalFunc)(void) = NULL;

/* 8034BCFC-8034BD2C 34663C 0030+00 0/0 1/1 0/0 .text            __DVDPrintFatalMessage */
void __DVDPrintFatalMessage(void) {
    if (!FatalFunc) {
        return;
    }
    FatalFunc();
}
