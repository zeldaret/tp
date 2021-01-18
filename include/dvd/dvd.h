#ifndef DVD_H_
#define DVD_H_

#include "dolphin/types.h"

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
} DVDState;
}

struct DVDDirectory {
    u32 entry_number;
    u32 location;
    u32 next;
};

struct DVDDirectoryEntry {
    u32 entry_number;
    BOOL is_directory;
    char* name;
};

struct DVDDiskID {
    char game_name[4];
    char company[2];
    u8 disk_number;
    u8 game_version;
    u8 is_streaming;
    u8 streaming_buffer_size;
    u8 padding[22];
};

struct DVDFileInfo;
struct DVDCommandBlock;
typedef void (*DVDCBCallback)(s32 result, DVDCommandBlock* block);
typedef void (*DVDCallback)(s32 result, DVDFileInfo* info);

struct DVDCommandBlock {
    DVDCommandBlock* next;
    DVDCommandBlock* prev;
    u32 command;
    s32 state;
    u32 offset;
    u32 length;
    void* buffer;
    u32 current_transfer_size;
    u32 transferred_size;
    DVDDiskID* disk_id;
    DVDCBCallback callback;
    void* user_data;
};

struct DVDFileInfo {
    DVDCommandBlock block;
    u32 start_address;
    u32 length;
    DVDCallback callback;
};

extern "C" {
s32 DVDOpen(const char*, DVDFileInfo*);
s32 DVDClose(DVDFileInfo*);
void DVDReadPrio(DVDFileInfo*, void*, s32, s32, s32);
void DVDGetCurrentDiskID(void);
s32 DVDFastOpen(long, DVDFileInfo*);
int DVDGetCommandBlockStatus(DVDCommandBlock*);
s32 DVDReadAsyncPrio(DVDFileInfo*, void*, long, long, DVDCallback, long);
s32 DVDConvertPathToEntrynum(const char*);
DVDState DVDGetDriveStatus(void);
s32 DVDCheckDisk(void);

BOOL DVDChangeDir(const char*);
BOOL DVDCloseDir(DVDDirectory*);
BOOL DVDOpenDir(const char*, DVDDirectory*);
BOOL DVDReadDir(DVDDirectory*, DVDDirectoryEntry*);
}

#endif