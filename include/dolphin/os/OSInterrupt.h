#ifndef OSINTERRUPT_H
#define OSINTERRUPT_H

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    OS_INTR_MEM_0,
    OS_INTR_MEM_1,
    OS_INTR_MEM_2,
    OS_INTR_MEM_3,
    OS_INTR_MEM_ADDRESS,
    OS_INTR_DSP_AI,
    OS_INTR_DSP_ARAM,
    OS_INTR_DSP_DSP,
    OS_INTR_AI_AI,
    OS_INTR_EXI_0_EXI,
    OS_INTR_EXI_0_TC,
    OS_INTR_EXI_0_EXT,
    OS_INTR_EXI_1_EXI,
    OS_INTR_EXI_1_TC,
    OS_INTR_EXI_1_EXT,
    OS_INTR_EXI_2_EXI,
    OS_INTR_EXI_2_TC,
    OS_INTR_PI_CP,
    OS_INTR_PI_PE_TOKEN,
    OS_INTR_PI_PE_FINISH,
    OS_INTR_PI_SI,
    OS_INTR_PI_DI,
    OS_INTR_PI_RSW,
    OS_INTR_PI_ERROR,
    OS_INTR_PI_VI,
    OS_INTR_PI_DEBUG,
    OS_INTR_PI_HSP,
    OS_INTR_PI_ACR,
    OS_INTR_28,
    OS_INTR_29,
    OS_INTR_30,
    OS_INTR_31,

    OS_INTR_MAX
} OSInterruptType;

typedef s16 OSInterrupt;
typedef u32 OSInterruptMask;
typedef void (*OSInterruptHandler)(OSInterrupt interrupt, OSContext* context);

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
void __OSDispatchInterrupt(OSInterrupt interrupt, OSContext* context);
static void ExternalInterruptHandler(OSInterrupt interrupt, OSContext* context);

void __RAS_OSDisableInterrupts_begin(void);
void __RAS_OSDisableInterrupts_end(void);

#ifdef __cplusplus
};
#endif

#endif /* OSINTERRUPT_H */
