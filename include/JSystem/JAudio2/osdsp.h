#ifndef OSDSP_H
#define OSDSP_H

#include <dolphin/dsp.h>

extern "C" DSPTaskInfo* DSPAddTask(DSPTaskInfo*);
void DSPAddPriorTask(STRUCT_DSP_TASK*);

#endif /* OSDSP_H */
