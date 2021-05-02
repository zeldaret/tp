#ifndef VI_H
#define VI_H

#include "dolphin/types.h"

typedef void (*VIRetraceCallback)(u32);

extern "C" void VIWaitForRetrace(void);

#endif /* VI_H */
