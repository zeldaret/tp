#ifndef DSP_TASK_H
#define DSP_TASK_H

#include "dolphin/dsp/dsp.h"

extern DSPTaskInfo* __DSP_tmp_task;
extern DSPTaskInfo* __DSP_last_task;
extern DSPTaskInfo* __DSP_first_task;
extern DSPTaskInfo* __DSP_curr_task;

#ifdef __cplusplus
extern "C" {
#endif

void __DSP_boot_task(DSPTaskInfo* task);
void __DSP_insert_task(DSPTaskInfo* task);

#ifdef __cplusplus
}

#endif

#endif /* DSP_TASK_H */
