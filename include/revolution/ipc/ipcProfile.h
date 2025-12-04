#ifndef _REVOLUTION_IPCPROFILE_H_
#define _REVOLUTION_IPCPROFILE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution.h>

void IPCiProfInit(void);
void IPCiProfQueueReq(void*, s32);
void IPCiProfReply(void*, s32);
void IPCiProfAck(void);

#ifdef __cplusplus
}
#endif

#endif // _REVOLUTION_IPCPROFILE_H_
