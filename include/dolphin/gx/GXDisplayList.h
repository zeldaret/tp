#ifndef GXDISPLAYLIST_H
#define GXDISPLAYLIST_H

#include "dolphin/types.h"

extern "C" {
void GXBeginDisplayList(void* list, u32 capacity);
void GXEndDisplayList(void);
void GXCallDisplayList(void* list, u32 nbytes);
};

#endif /* GXDISPLAYLIST_H */
