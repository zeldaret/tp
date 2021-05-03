#ifndef AR_H
#define AR_H

#include "dolphin/types.h"

extern "C" {
u32 ARInit(u32*, u32);
u32 ARAlloc(u32);
u32 ARGetSize(void);
}

#endif /* AR_H */
