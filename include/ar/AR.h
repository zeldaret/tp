#ifndef AR_H_
#define AR_H_

#include "dolphin/types.h"

extern "C" {
u32 ARInit(u32*, u32);
u32 ARAlloc(u32);
u32 ARGetSize(void);
}

#endif
