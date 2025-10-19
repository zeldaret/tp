#ifndef _DOLPHIN_DB_H_
#define _DOLPHIN_DB_H_

#ifdef __REVOLUTION_SDK__
#include <revolution/db.h>
#else
#include <dolphin/types.h>
#include <dolphin/db/DBInterface.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_DBINTERFACE_ADDR 0x00000040

BOOL DBIsDebuggerPresent(void);
void DBPrintf(char* str, ...);
s32 DBQueryData(void);
u32 DBRead(u8*, u32);

#ifdef __cplusplus
}
#endif

#endif
#endif // _DOLPHIN_DB_H_
