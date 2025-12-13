#ifndef _REVOLUTION_WUD_PRIVATE_H_
#define _REVOLUTION_WUD_PRIVATE_H_

#include <revolution/os.h>
#include <revolution/wpad/bte.h>
#include <revolution/wpad/wud.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WUD_MAX_DEV_ENTRY_FOR_STD 10
#define WUD_MAX_DEV_ENTRY_FOR_SMP 6

#define WUD_MAX_DEV_ENTRY 16

#define WUD_DEV_HANDLE_INVALID (-1)

struct WUDDevInfoList {
    /* 0x00 */ WUDDevInfo* devInfo;
    /* 0x04 */ struct WUDDevInfoList* prev;
    /* 0x08 */ struct WUDDevInfoList* next;
};  // size 0x0c

typedef struct /* possibly untagged, like kpad */ {
    /* 0x000 */ WUDSyncDeviceCallback* syncStdCB;
    /* 0x004 */ WUDSyncDeviceCallback* syncSmpCB;
    /* 0x008 */ WUDClearDeviceCallback* clearDevCB;
    /* 0x00c */ u8 syncState;
    /* 0x00d */ u8 deleteState;
    /* 0x00e */ u8 linkKeyState;
    /* 0x00f */ u8 stackState;
    /* 0x010 */ u8 initState;
    /* 0x011 */ u8 shutdownState;
    /* 0x012 */ u8 devNums;
    /* 0x013 */ u8 devSmpNums;
    /* 0x014 */ struct WUDDevInfoList* smpListHead;
    /* 0x018 */ struct WUDDevInfoList* smpListTail;
    /* 0x01c */ struct WUDDevInfoList smpList[WUD_MAX_DEV_ENTRY_FOR_SMP];
    /* 0x064 */ struct WUDDevInfoList* stdListHead;
    /* 0x068 */ struct WUDDevInfoList* stdListTail;
    /* 0x06c */ struct WUDDevInfoList stdList[WUD_MAX_DEV_ENTRY_FOR_STD];
    /* 0x0e4 */ WUDDevInfo stdDevs[WUD_MAX_DEV_ENTRY_FOR_STD];
    /* 0x4a4 */ WUDDevInfo smpDevs[WUD_MAX_DEV_ENTRY_FOR_SMP];
    /* 0x6e4 */ u8 connectedNum;
    /* 0x6e5 */ u8 linkedNum;
    /* 0x6e6 */ u8 syncedNum;
    /* 0x6e7 */ u8 syncSkipChecks;
    /* 0x6e8 */ s8 syncLoopNum;
    /* 0x6e9 */ u8 syncType;
    /* 0x6ea */ u8 connectable;
    /* 0x6eb */ u8 discoverable;
    /* 0x6ec */ WUDHidReceiveCallback* hidRecvCB;
    /* 0x6f0 */ WUDHidConnectCallback* hidConnCB;
    /* 0x6f4 */ WUDAllocFunc* allocFunc;
    /* 0x6f8 */ WUDFreeFunc* freeFunc;
    /* 0x6fc */ BD_ADDR pairAddr;
    /* 0x702 */ BD_ADDR hostAddr;
    /* 0x708 */ s8 libStatus;
    /* 0x709 */ u8 siPortStatus;
    /* 0x70a */ u8 pmID;
    /* 0x70b */ s8 syncRssi;
    /* 0x710 */ OSAlarm alarm;
    /* 0x740 */ u32 hhFlags;  // some flags maybe?
    /* 0x744 */ u16 bufferStatus0;
    /* 0x746 */ u16 bufferStatus1;
    /* 0x748 */ s8 initWaitDeviceUpFrames;
    /* 0x749 */ s8 waitStartSearchFrames;
    /* 0x74a */ s16 waitIncomingFrames;
} wud_cb_st;  // size 0x750

u16 WUDiGetQueueSizeForHandle(u8 dev_handle);
u16 WUDiGetNotAckNumForHandle(u8 dev_handle);

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_WUD_PRIVATE_H_
