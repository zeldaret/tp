#ifndef VI_H
#define VI_H

#include "dolphin/types.h"
#include "dolphin/gx/GX.h"

typedef void (*VIRetraceCallback)(u32);

extern "C" void VIWaitForRetrace(void);
extern "C" void VISetNextFrameBuffer(void*);
extern "C" VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback);
extern "C" VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback);
extern "C" void VIInit();
extern "C" void VIConfigure(GXRenderModeObj*);
extern "C" void VIFlush();
extern "C" void* VIGetNextFrameBuffer();
extern "C" void* VIGetCurrentFrameBuffer();
extern "C" void VISetBlack(BOOL);
extern "C" u32 VIGetRetraceCount();

#endif /* VI_H */
