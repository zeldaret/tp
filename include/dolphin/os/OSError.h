#ifndef OSERROR_H
#define OSERROR_H

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

extern u32 __OSFpscrEnableBits;
typedef u16 OSError;

#define OS_ERROR_SYSTEM_RESET 0
#define OS_ERROR_MACHINE_CHECK 1
#define OS_ERROR_DSI 2
#define OS_ERROR_ISI 3
#define OS_ERROR_INTERRUPT 4
#define OS_ERROR_ALIGNMENT 5
#define OS_ERROR_PROGRAM 6
#define OS_ERROR_FLOATING_POINT 7
#define OS_ERROR_DECREMENTER 8
#define OS_ERROR_SYSTEM_CALL 9
#define OS_ERROR_TRACE 10
#define OS_ERROR_PERFORMANCE_MONITOR 11
#define OS_ERROR_BREAKPOINT 12
#define OS_ERROR_RESERVED 13
#define OS_ERROR_THERMAL_INTERRUPT 14
#define OS_ERROR_MEMORY_PROTECTION 15
#define OS_ERROR_FLOATING_POINT_EXCEPTION 16

typedef enum {
    EXCEPTION_SYSTEM_RESET,
    EXCEPTION_MACHINE_CHECK,
    EXCEPTION_DSI,
    EXCEPTION_ISI,
    EXCEPTION_EXTERNAL_INTERRUPT,
    EXCEPTION_ALIGNMENT,
    EXCEPTION_PROGRAM,
    EXCEPTION_FLOATING_POINT,
    EXCEPTION_DECREMENTER,
    EXCEPTION_SYSTEM_CALL,
    EXCEPTION_TRACE	,
    EXCEPTION_PERFORMANCE_MONITOR,
    EXCEPTION_BREAKPOINT,
    EXCEPTION_RESERVED,
    EXCEPTION_THERMAL_INTERRUPT,
    EXCEPTION_MEMORY_PROTECTION,
    EXCEPTION_FLOATING_POINT_EXCEPTION,
} OSException;

typedef u8 __OSException;

typedef void (*OSErrorHandler)(OSError error, OSContext* context, u32, u32);

OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler);
void __OSUnhandledException(OSException exception, OSContext* context, u32 dsisr, u32 dar);

#ifdef __cplusplus
};
#endif

#endif /* OSERROR_H */
