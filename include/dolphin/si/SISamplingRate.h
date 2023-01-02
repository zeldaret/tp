#ifndef SISAMPLINGRATE_H
#define SISAMPLINGRATE_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct XY {
    u16 line;
    u8 count;
} XY;

void SISetSamplingRate(u32 msec);
void SIRefreshSamplingRate(void);

#ifdef __cplusplus
}
#endif

#endif /* SISAMPLINGRATE_H */
