#ifndef DSP_H
#define DSP_H

#include "dolphin/types.h"

void DSPReleaseHalt2(u32 msg);
u16 DSP_CreateMap2(u32 msg);
void DSPSendCommands2(u32* msgs, u32 param_1, void (*param_2)(u16));
void DsetupTable(u32 param_0, u32 param_1, u32 param_2, u32 param_3, u32 param_4);
void DsetMixerLevel(f32 level);

#endif /* DSP_H */
