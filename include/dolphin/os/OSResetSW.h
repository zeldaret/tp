#ifndef OSRESETSW_H
#define OSRESETSW_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*OSResetCallback)(void);

static BOOL OSGetResetButtonState(void);
BOOL OSGetResetSwitchState(void);

#ifdef __cplusplus
};
#endif

#endif /* OSRESETSW_H */
