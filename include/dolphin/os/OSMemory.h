#ifndef OSMEMORY_H
#define OSMEMORY_H

#include "dolphin/types.h"
#include "dolphin/os/OSInterrupt.h"

#ifdef __cplusplus
extern "C" {
#endif

static s32 OnReset(s32 param_0);
static void MEMIntrruptHandler(OSInterrupt interrupt, struct OSContext* context);
void OSProtectRange(u32 channel, void* address, u32 nBytes, u32 control);
static void Config24MB(void);
static void Config48MB(void);
static void RealMode(void);
void __OSInitMemoryProtection(void);

#ifdef __cplusplus
};
#endif

#endif /* OSMEMORY_H */
