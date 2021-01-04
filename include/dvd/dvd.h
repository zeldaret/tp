#ifndef __DVD_H__
#define __DVD_H__

extern "C" {

typedef enum DVDState {
    DVD_STATE_END = 0x0,
    DVD_STATE_BUSY = 0x1,
    DVD_STATE_WAITING = 0x2,
    DVD_STATE_COVER_CLOSED = 0x3,
    DVD_STATE_NO_DISK = 0x4,
    DVD_STATE_COVER_OPEN = 0x5,
    DVD_STATE_WRONG_DISK = 0x6,
    DVD_STATE_MOTOR_STOPPED = 0x7,
    DVD_STATE_IGNORED = 0x8,
    DVD_STATE_CANCELED = 0xa,  // lmao they skipped 9
    DVD_STATE_RETRY = 0xb,
    DVD_STATE_FATAL_ERROR = -1,
    __DVD_STATE_ENUM_FORCE_S32 = INT32_MAX,
} DVDState;
}

class DVDDiskID {
    char game_name[4];
    char company[2];
    u8 disk_number;
    u8 game_version;
    u8 is_streaming;
    u8 streaming_buffer_size;
    u8 padding[22];
};

class DVDCommandBlock {
public:
    DVDCommandBlock* next;
    DVDCommandBlock* previous;
    u32 command;
    s32 state;
    u32 offset;
    u32 length;
    void* buffer;
    u32 current_transfer_size;
    u32 transferred_size;
    DVDDiskID* disk_id;
    u8 callback[4];
    void* user_data;
};

//typedef void (*DVDCallback)(u32 result, DVDFileInfo *info);

class DVDFileInfo {
public:
    DVDCommandBlock block;
    u32 start_address;
    u32 length;
    u8 callback[4];
};

extern "C" {
s32 DVDOpen(const char*, DVDFileInfo*);
s32 DVDClose(DVDFileInfo*);
void DVDReadPrio(DVDFileInfo*, void*, s32, s32, s32);
void DVDGetCurrentDiskID(void);
s32 DVDFastOpen(long, DVDFileInfo*);
int DVDGetCommandBlockStatus(DVDFileInfo*);
s32 DVDReadAsyncPrio(DVDFileInfo*, void*, long, long, void (*)(long, DVDFileInfo*), long);
void DVDConvertPathToEntrynum(void);
DVDState DVDGetDriveStatus(void);
s32 DVDCheckDisk(void);

void DVDChangeDir(void);
void DVDCloseDir(void);
void DVDOpenDir(void);
void DVDReadDir(void);
}

#endif