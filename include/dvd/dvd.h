#ifndef __DVD_H__
#define __DVD_H__

extern "C" {

typedef enum DVDState {
    DVD_STATE_END           = 0x0,
    DVD_STATE_BUSY          = 0x1,
    DVD_STATE_WAITING       = 0x2,
    DVD_STATE_COVER_CLOSED  = 0x3,
    DVD_STATE_NO_DISK       = 0x4,
    DVD_STATE_COVER_OPEN    = 0x5,
    DVD_STATE_WRONG_DISK    = 0x6,
    DVD_STATE_MOTOR_STOPPED = 0x7,
    DVD_STATE_IGNORED       = 0x8,
    DVD_STATE_CANCELED      = 0xa, // lmao they skipped 9
    DVD_STATE_RETRY         = 0xb,
    DVD_STATE_FATAL_ERROR   = 0xffffffff,
} DVDState;
}

class DVDFileInfo;
extern "C" {
    s32 DVDOpen(const char*, u8[48]);
    s32 DVDClose(u8[48]);
    void DVDReadPrio(void);
    void DVDGetCurrentDiskID(void);
    s32 DVDFastOpen(long, u8[48]);
    int DVDGetCommandBlockStatus(u8[48]);
    s32 DVDReadAsyncPrio(u8[48], void*, long, long, void(*)(long,DVDFileInfo*), long);
    void DVDConvertPathToEntrynum(void);
    DVDState DVDGetDriveStatus(void);
    s32 DVDCheckDisk(void);

    void DVDChangeDir(void);
    void DVDCloseDir(void);
    void DVDOpenDir(void);
    void DVDReadDir(void);

}


#endif