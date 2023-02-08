#ifndef OSARENA_H
#define OSARENA_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void* OSGetArenaHi(void);
void* OSGetArenaLo(void);
void OSSetArenaHi(void* hi);
void OSSetArenaLo(void* lo);
void* OSAllocFromArenaLo(u32 size, s32 alignment);

#ifdef __cplusplus
};
#endif

#endif /* OSARENA_H */
