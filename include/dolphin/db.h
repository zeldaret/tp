#ifndef DB_H
#define DB_H

#include "dolphin/types.h"
#include "amcstubs/AmcExi2Stubs.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_DBINTERFACE_ADDR 0x00000040

typedef struct DBInterface {
    /* 0x0 */ u32 bPresent;
    /* 0x4 */ u32 exceptionMask;
    /* 0x8 */ void (*ExceptionDestination)(void);
    /* 0xC */ void* exceptionReturn;
} DBInterface;

extern DBInterface* __DBInterface;

void DBInit(void);
void __DBExceptionDestinationAux(void);
void __DBExceptionDestination(void);
void DBPrintf(char* format, ...);
void DBInitComm(vu8**, AmcEXICallback); // possibly not this type, but some similar construction
void DBInitInterrupts();
u32 DBQueryData();
BOOL DBRead(void*, u32);
BOOL DBWrite(const void*, u32);
void DBOpen();
void DBClose();

#ifdef __cplusplus
}
#endif

#endif /* DB_H */
