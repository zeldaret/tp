#ifndef OSRESETSW_H
#define OSRESETSW_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void __OSResetSWInterruptHandler(void);
static BOOL OSGetResetButtonState(void);
BOOL OSGetResetSwitchState(void);

#ifdef __cplusplus
};
#endif

#endif /* OSRESETSW_H */
