#ifndef OSDSP_H
#define OSDSP_H

#include "dolphin/dsp.h"

struct STRUCT_DSP_TASK {
    /* 0x00 */ DSPTaskInfo info;
};

extern "C" DSPTaskInfo* DSPAddTask(DSPTaskInfo*);
void DSPAddPriorTask(STRUCT_DSP_TASK*);

#endif /* OSDSP_H */
