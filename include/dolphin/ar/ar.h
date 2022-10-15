#ifndef AR_H
#define AR_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

u32 ARInit(u32*, u32);
u32 ARAlloc(u32);
u32 ARGetSize(void);

#ifdef __cplusplus
};
#endif

#endif /* AR_H */
