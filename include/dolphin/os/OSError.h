#ifndef OSERROR_H
#define OSERROR_H

#include "dolphin/types.h"

struct OSContext;

extern u32 __OSFpscrEnableBits;

typedef u16 OSError;
typedef void (*OSErrorHandler)(OSError, OSContext*, u32, u32);

#define OS_ERROR_SYSTEM_RESET 0x0
#define OS_ERROR_MACHINE_CHECK 0x1
#define OS_ERROR_DSI 0x2
#define OS_ERROR_ISI 0x3
#define OS_ERROR_INTERRUPT 0x4
#define OS_ERROR_ALIGNMENT 0x5
#define OS_ERROR_PROGRAM 0x6
#define OS_ERROR_FLOATING_POINT 0x7
#define OS_ERROR_DECREMENTER 0x8
#define OS_ERROR_SYSTEM_CALL 0x9
#define OS_ERROR_TRACE 0xa
#define OS_ERROR_PERFORMANCE_MONITOR 0xb
#define OS_ERROR_BREAKPOINT 0xc
#define OS_ERROR_RESERVED 0xd
#define OS_ERROR_THERMAL_INTERRUPT 0xe
#define OS_ERROR_MEMORY_PROTECTION 0xf
#define OS_ERROR_FLOATING_POINT_EXCEPTION 0x10

extern "C" void OSSetErrorHandler(OSError, OSErrorHandler);

#endif /* OSERROR_H */
