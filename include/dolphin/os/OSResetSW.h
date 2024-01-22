#ifndef OSRESETSW_H
#define OSRESETSW_H

#include "dolphin/types.h"
#include "dolphin/os/OSInterrupt.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*OSResetCallback)(void);

static BOOL OSGetResetButtonState(void);
BOOL OSGetResetSwitchState(void);
void __OSResetSWInterruptHandler(__OSInterrupt interrupt, OSContext* context);

#ifdef __cplusplus
};
#endif

#endif /* OSRESETSW_H */
