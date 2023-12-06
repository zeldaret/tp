#ifndef GXFIFO_H
#define GXFIFO_H

#include "dolphin/gx/GXStruct.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/os/OSThread.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*GXBreakPtCallback)(void);

void GXInitFifoBase(GXFifoObj* fifo, void* base, u32 size);
void GXInitFifoPtrs(GXFifoObj* fifo, void* read_ptr, void* write_ptr);
void GXSetCPUFifo(GXFifoObj* fifo);
void GXSetGPFifo(GXFifoObj* fifo);
void GXSaveCPUFifo(GXFifoObj* fifo);
void __GXSaveCPUFifoAux(GXFifoObj* fifo);
void GXGetGPStatus(GXBool* overhi, GXBool* underlo, GXBool* read_idle, GXBool* cmd_idle, GXBool* breakpoint);
void* GXGetFifoBase(GXFifoObj* fifo);
u32 GXGetFifoSize(GXFifoObj* fifo);
GXBreakPtCallback GXSetBreakPtCallback(GXBreakPtCallback cb);
void __GXFifoInit(void);
void __GXFifoReadEnable(void);
void __GXFifoReadDisable(void);
void __GXFifoLink(u8);
void __GXWriteFifoIntEnable(u32, u32);
void __GXWriteFifoIntReset(u32, u32);
void __GXCleanGPFifo(void);
OSThread* GXSetCurrentGXThread(void);
OSThread* GXGetCurrentGXThread(void);
GXFifoObj* GXGetCPUFifo(void);
GXFifoObj* GXGetGPFifo(void);

#ifdef __cplusplus
};
#endif

#endif /* GXFIFO_H */
