#ifndef OSINTERRUPT_H
#define OSINTERRUPT_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef s16 OSInterrupt;
typedef u32 OSInterruptMask;
typedef void (*OSInterruptHandler)(OSInterrupt interrupt, struct OSContext* context);

BOOL OSDisableInterrupts(void);
void __RAS_OSDisableInterrupts_end(void);
BOOL OSEnableInterrupts(void);
BOOL OSRestoreInterrupts(BOOL enable);
OSInterruptHandler __OSSetInterruptHandler(OSInterrupt interrupt, OSInterruptHandler handler);
OSInterruptHandler __OSGetInterruptHandler(s16 index);
void __OSInterruptInit(void);
static OSInterruptMask SetInterruptMask(OSInterruptMask param_0, OSInterruptMask param_1);
OSInterruptMask __OSMaskInterrupts(OSInterruptMask mask);
OSInterruptMask __OSUnmaskInterrupts(OSInterruptMask mask);
void __OSDispatchInterrupt(OSInterrupt interrupt, struct OSContext* context);
static void ExternalInterruptHandler(OSInterrupt interrupt, struct OSContext* context);

#ifdef __cplusplus
};
#endif

#endif /* OSINTERRUPT_H */
