#ifndef DVD_H
#define DVD_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

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

typedef struct DVDDirectory {
    u32 entry_number;
    u32 location;
    u32 next;
} DVDDirectory;

typedef struct DVDDirectoryEntry {
    u32 entry_number;
    BOOL is_directory;
    char* name;
} DVDDirectoryEntry;

typedef struct DVDDiskID {
    /* 0x00 */ char game_name[4];
    /* 0x04 */ char company[2];
    /* 0x06 */ u8 disk_number;
    /* 0x07 */ u8 game_version;
    /* 0x08 */ u8 is_streaming;
    /* 0x09 */ u8 streaming_buffer_size;
    /* 0x0A */ u8 padding[22];
} DVDDiskID;

struct DVDFileInfo;
struct DVDCommandBlock;
typedef void (*DVDCBCallback)(s32 result, struct DVDCommandBlock* block);
typedef void (*DVDCallback)(s32 result, struct DVDFileInfo* info);

typedef struct DVDCommandBlock {
    struct DVDCommandBlock* next;
    struct DVDCommandBlock* prev;
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
} DVDCommandBlock;

typedef struct DVDFileInfo {
    DVDCommandBlock block;
    u32 start_address;
    u32 length;
    DVDCallback callback;
} DVDFileInfo;

typedef struct DVDDriveInfo {
    /* 0x00 */ u16 field_0x0;
    /* 0x02 */ u16 device_code;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u32 field_0x8;
    /* 0x0C */ u32 field_0xc;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ u32 field_0x1c;
} DVDDriveInfo;

s32 DVDOpen(const char*, DVDFileInfo*);
s32 DVDClose(DVDFileInfo*);
s32 DVDReadPrio(DVDFileInfo*, void*, s32, s32, s32);
DVDDiskID* DVDGetCurrentDiskID(void);
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

#ifdef __cplusplus
};
#endif

#endif /* DVD_H */
