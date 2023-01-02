#ifndef SISAMPLINGRATE_H
#define SISAMPLINGRATE_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void SISetSamplingRate(u32 msec);
void SIRefreshSamplingRate(void);

#ifdef __cplusplus
}
#endif

#endif /* SISAMPLINGRATE_H */
