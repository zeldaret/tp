#ifndef _REVOLUTION_IPC_H_
#define _REVOLUTION_IPC_H_

#include <revolution/ipc/ipcclt.h>
#include <revolution/ipc/ipcProfile.h>
#include <revolution/ipc/memory.h>

extern u32 IPCReadReg(u32);

void IPCInit(void);
IOSError IPCCltInit(void);

void IPCReInit(void);
IOSError IPCCltReInit(void);

extern void* IPCGetBufferHi(void);
extern void* IPCGetBufferLo(void);
extern void IPCSetBufferLo(void*);

#endif // _REVOLUTION_IPC_H_
