#ifndef OSDSP_TASK_H
#define OSDSP_TASK_H

#include "dolphin/os/OSInterrupt.h"

struct DSPTaskInfo;

extern DSPTaskInfo* DSP_prior_task;

#ifdef __cplusplus
extern "C" {
#endif

void __DSPHandler(OSInterrupt interrupt, OSContext* context);

#ifdef __cplusplus
}
#endif

void DsyncFrame2(u32 param_0, u32 param_1, u32 param_2);

#endif /* OSDSP_TASK_H */
