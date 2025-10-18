#ifndef _REVOLUTION_SC_H_
#define _REVOLUTION_SC_H_

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void SCInit(void);
u32 SCCheckStatus(void);
int SCReloadConfFileAsync(void* bufp, u32 bufSize, int);
BOOL SCFindByteArrayItem(u8* data, u32, u32 itemID);
BOOL SCFindIntegerItem(int* data, u32 itemID, u8 type);
BOOL SCFindU8Item(u8* data, u32 itemID);
BOOL SCFindS8Item(s8* data, u32 itemID);
BOOL SCFindU32Item(u32* data, u32 itemID);
u8 SCGetAspectRatio(void);
u8 SCGetDisplayOffsetH(void);
BOOL SCGetIdleMode(u8* data);
u8 SCGetLanguage(void);
u8 SCGetProgressiveMode(void);
u8 SCGetScreenSaverMode(void);
u8 SCGetSoundMode(void);
u8 SCGetCounterBias(void);
BOOL SCGetProductAreaString(const char*, int);
u32 SCGetProductArea(void);
u32 SCGetProductGameRegion(void);

#ifdef __cplusplus
}
#endif

#endif
