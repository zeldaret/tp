#ifndef VI_H
#define VI_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*VIRetraceCallback)(u32);

void VIWaitForRetrace(void);
void VISetNextFrameBuffer(void*);
VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback);
void VIInit();
void VIConfigure(GXRenderModeObj*);
void VIFlush();
void* VIGetNextFrameBuffer();
void* VIGetCurrentFrameBuffer();
void VISetBlack(BOOL);
u32 VIGetRetraceCount();

#ifdef __cplusplus
};
#endif

#endif /* VI_H */
