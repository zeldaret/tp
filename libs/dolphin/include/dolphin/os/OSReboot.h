#ifndef _DOLPHIN_OSREBOOT_H_
#define _DOLPHIN_OSREBOOT_H_

#ifdef __REVOLUTION_SDK__
#include <revolution/os/OSReboot.h>
#else
#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void OSSetSaveRegion(void* start, void* end);
void OSGetSaveRegion(void** start, void** end);
void OSGetSavedRegion(void** start, void** end);
void __OSReboot(u32 resetCode, u32 bootDol);

#ifdef __cplusplus
}
#endif

#endif
#endif
