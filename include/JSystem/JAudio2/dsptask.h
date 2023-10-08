#ifndef DSPTASK_H
#define DSPTASK_H

#include "dolphin/types.h"

void DspBoot(void (*)(void*));
void DspFinishWork(u16 param_0);

#endif /* DSPTASK_H */
