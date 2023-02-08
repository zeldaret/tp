#ifndef GXDISPLAYLIST_H
#define GXDISPLAYLIST_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

void GXBeginDisplayList(void* list, u32 capacity);
void GXEndDisplayList(void);
void GXCallDisplayList(void* list, u32 nbytes);

#ifdef __cplusplus
};
#endif

#endif /* GXDISPLAYLIST_H */
