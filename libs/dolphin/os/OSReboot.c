#include "dolphin/os/OSReboot.h"
#include "dolphin/os/OSArena.h"
#include "dolphin/os/OSContext.h"
#include "dolphin/os/OSExec.h"

/* 8033F5D0-8033F640 339F10 0070+00 0/0 1/1 0/0 .text            __OSReboot */
void __OSReboot(u32 resetCode, u32 bootDol) {
    struct OSContext context;
    char* iVar1;
	OSDisableInterrupts();
    OSSetArenaLo((void*)0x81280000);
    OSSetArenaHi((void*)0x812f0000);
    OSClearContext(&context);
    OSSetCurrentContext(&context);
    iVar1 = NULL;
    __OSBootDol(bootDol, resetCode | 0x80000000, &iVar1);
}

/* 80451688-8045168C 000B88 0004+00 2/2 0/0 0/0 .sbss            SaveStart */
static void* SaveStart;

/* 8045168C-80451690 000B8C 0004+00 2/2 0/0 0/0 .sbss            SaveEnd */
static void* SaveEnd;

/* 8033F640-8033F64C 339F80 000C+00 0/0 1/1 0/0 .text            OSSetSaveRegion */
void OSSetSaveRegion(void* start, void* end) {
    SaveStart = start;
    SaveEnd = end;
}

/* 8033F64C-8033F660 339F8C 0014+00 0/0 1/1 0/0 .text            OSGetSaveRegion */
void OSGetSaveRegion(void** start, void** end) {
    *start = SaveStart;
    *end = SaveEnd;
}
