#ifndef OSMEMORY_H
#define OSMEMORY_H

#include "dolphin/os/OSInterrupt.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_PROTECT_CHAN0 0
#define OS_PROTECT_CHAN1 1
#define OS_PROTECT_CHAN2 2
#define OS_PROTECT_CHAN3 3

#define OS_PROTECT_CONTROL_NONE 0x00
#define OS_PROTECT_CONTROL_READ 0x01
#define OS_PROTECT_CONTROL_WRITE 0x02
#define OS_PROTECT_CONTROL_RDWR (OS_PROTECT_CONTROL_READ | OS_PROTECT_CONTROL_WRITE)

static void MEMIntrruptHandler(OSInterrupt interrupt, struct OSContext* context);
void OSProtectRange(u32 channel, void* address, u32 nBytes, u32 control);
static void Config24MB(void);
static void Config48MB(void);
static void RealMode(u32 config);
void __OSInitMemoryProtection(void);

#ifdef __cplusplus
};
#endif

#endif /* OSMEMORY_H */
