#ifndef _REVOLUTION_IPCCLT_H_
#define _REVOLUTION_IPCCLT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/types.h>
#include <private/iosrestypes.h>
#include <private/iosresclt.h>

s32 IOS_Open(const char*, u32);
s32 IOS_Close(s32);
s32 IOS_CloseAsync(IOSFd, IOSIpcCb, void*);

s32 IOS_Read(IOSFd, void*, u32);
s32 IOS_ReadAsync(IOSFd, void*, u32, IOSIpcCb, void*);

s32 IOS_Write(IOSFd, void*, u32);
s32 IOS_WriteAsync(IOSFd, void*, u32, IOSIpcCb, void*);

s32 IOS_Ioctl(IOSFd, s32, void*, u32, void*, u32);

IOSError IOS_Ioctlv(IOSFd, s32, u32, u32, IOSIoVector*);
IOSError IOS_IoctlvAsync(IOSFd, s32, u32, u32, IOSIoVector*, IOSIpcCb, void*);
s32 IOS_IoctlvReboot(s32, s32, u32, u32, IOSIoVector*);

s32 IOS_Seek(IOSFd, s32, u32);
s32 IOS_SeekAsync(IOSFd, s32, u32, IOSIpcCb, void*);

s32 IOS_IoctlAsync(s32, s32, void*, u32, void*, u32, IOSIpcCb, void*);

#ifdef __cplusplus
}
#endif

#endif // _REVOLUTION_IPCCLT_H_
