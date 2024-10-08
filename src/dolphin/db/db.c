#include "dolphin/db.h"

/* 80451708-8045170C 000C08 0004+00 2/2 0/0 0/0 .sbss            __DBInterface */
static DBInterface* __DBInterface;

/* 8045170C-80451710 000C0C 0004+00 1/1 0/0 0/0 .sbss            DBVerbose */
static int DBVerbose;

/* 80346398-803463C0 340CD8 0028+00 0/0 1/1 0/0 .text            DBInit */
void DBInit(void) {
    __DBInterface = (DBInterface*)OSPhysicalToCached(OS_DBINTERFACE_ADDR);
    __DBInterface->ExceptionDestination = (void (*)())OSCachedToPhysical(__DBExceptionDestination);
    DBVerbose = TRUE;
}

/* 803463C0-80346408 340D00 0048+00 1/1 0/0 0/0 .text            __DBExceptionDestinationAux */
void __DBExceptionDestinationAux(void) {
    u32* contextAddr = (void*)0x00C0;
    OSContext* context = (OSContext*)OSPhysicalToCached(*contextAddr);

    OSReport("DBExceptionDestination\n");
    OSDumpContext(context);
    PPCHalt();
}

/* 80346408-80346418 340D48 0010+00 1/1 0/0 0/0 .text            __DBExceptionDestination */
/* clang-format off */
asm void __DBExceptionDestination(void) {
    nofralloc
    mfmsr       r3
    ori         r3, r3, 0x10|0x20
    mtmsr       r3

    b __DBExceptionDestinationAux
}
/* clang-format on */

/* 80346418-80346434 340D58 001C+00 0/0 1/1 0/0 .text            __DBIsExceptionMarked */
BOOL __DBIsExceptionMarked(__OSException exception) {
    u32 mask = 1 << exception;

    return (BOOL)(__DBInterface->exceptionMask & mask);
}

/* 80346434-80346484 340D74 0050+00 0/0 4/4 0/0 .text            DBPrintf */
void DBPrintf(char* format, ...) {}