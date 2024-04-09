#ifndef GXPERF_H
#define GXPERF_H

#include "dolphin/gx/GXEnum.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXSetGPMetric(GXPerf0 perf0, GXPerf1 perf1);
void GXClearGPMetric(void);
void GXReadXfRasMetric(u32*, u32*, u32*, u32*);

#ifdef __cplusplus
};
#endif

#endif /* GXPERF_H */
