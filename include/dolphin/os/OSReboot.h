#ifndef OSREBOOT_H
#define OSREBOOT_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void __OSReboot(u32 param_0, u32 param_1);
void OSSetSaveRegion(void* start, void* end);
void OSGetSaveRegion(void* start, void* end);

#ifdef __cplusplus
};
#endif

#endif /* OSREBOOT_H */
