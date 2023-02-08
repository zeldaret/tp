#ifndef GXPERF_H
#define GXPERF_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXSetGPMetric(u32 perf0, u32 perf1);
void GXClearGPMetric(void);
void GXReadXfRasMetric(u32*, u32*, u32*, u32*);

#ifdef __cplusplus
};
#endif

#endif /* GXPERF_H */
