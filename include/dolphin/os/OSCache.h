#ifndef OSCACHE_H
#define OSCACHE_H

#include "dolphin/types.h"

extern "C" {
void DCInvalidateRange(void*, u32);
void DCStoreRange(void*, u32);
}

#endif /* OSCACHE_H */
