#ifndef UTILS_GC_MWCRITICALSECTION_GC_H
#define UTILS_GC_MWCRITICALSECTION_GC_H

#include "dolphin/types.h"

void MWExitCriticalSection(u32* section);
void MWEnterCriticalSection(u32* section);
void MWInitializeCriticalSection();

#endif /* UTILS_GC_MWCRITICALSECTION_GC_H */
