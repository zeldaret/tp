#ifndef _REVOLUTION_IPCMEMORY_H_
#define _REVOLUTION_IPCMEMORY_H_

#include <private/iostypes.h>

IOSError iosFree(IOSHeapId, void*);
void* iosAlloc(IOSHeapId, u32);
void* iosAllocAligned(IOSHeapId, u32, u32);

IOSHeapId iosCreateHeap(void*, u32);

#endif // _REVOLUTION_IPCMEMORY_H_
