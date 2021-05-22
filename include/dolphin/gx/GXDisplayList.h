#ifndef GXDISPLAYLIST_H
#define GXDISPLAYLIST_H

#include "dolphin/types.h"

extern "C" {
void GXBeginDisplayList(void* pDL, u32 capacity);
void GXEndDisplayList(void);
void GXCallDisplayList(const void* pDL, u32 size);
};

#endif /* GXDISPLAYLIST_H */
