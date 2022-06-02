#ifndef CARD_H
#define CARD_H

#include "dolphin/types.h"

#define CARD_ERROR_UNLOCKED 1
#define CARD_ERROR_READY 0
#define CARD_ERROR_BUSY -1
#define CARD_ERROR_WRONGDEVICE -2
#define CARD_ERROR_NOCARD -3
#define CARD_ERROR_NOFILE -4
#define CARD_ERROR_IOERROR -5
#define CARD_ERROR_BROKEN -6
#define CARD_ERROR_EXIST -7
#define CARD_ERROR_NOENT -8
#define CARD_ERROR_INSSPACE -9
#define CARD_ERROR_NOPERM -10
#define CARD_ERROR_LIMIT -11
#define CARD_ERROR_NAMETOOLONG -12
#define CARD_ERROR_ENCODING -13
#define CARD_ERROR_CANCELED -14
#define CARD_ERROR_FATAL_ERROR -128

struct CARDFileInfo {
    /* 0x00 */ s32 channel;
    /* 0x04 */ s32 fileNo;
    /* 0x08 */ u32 offset;
    /* 0x0C */ u16 iconIndex;
    /* 0x0E */ u16 commentIndex;
    /* 0x10 */ u16 field_0x10;
};  // Size: 0x10

struct CARDStat {
    /* 0x00 */ char filename[32];
    /* 0x20 */ u32 length;
    /* 0x24 */ u32 time;
    /* 0x28 */ char gamecode[4];
    /* 0x2C */ char company[2];
    /* 0x2E */ u8 gameVersion;
    /* 0x2F */ u8 bannerFormat;
    /* 0x30 */ u32 iconAddress;
    /* 0x34 */ u16 iconFormat;
    /* 0x36 */ u16 iconSpeed;
    /* 0x38 */ u32 commentAddress;
    /* 0x3C */ u32 bannerOffset;
    /* 0x40 */ u32 bannerPalOffset;
    /* 0x44 */ u32 iconOffset[8];
    /* 0x64 */ u32 iconPalOffset;
    /* 0x68 */ u32 dataOffset;
};  // Size: 0x6C

typedef void (*CARDCallback)(s32 channel, s32 result);

extern "C" {
s32 CARDInit(void);
s32 CARDFreeBlocks(s32 channel, s32* free_bytes, s32* free_files);
s32 CARDCheck(s32 channel);
s32 CARDProbe(s32 channel);
s32 CARDProbeEx(s32 channel, s32* mem_size, s32* sect_size);
s32 CARDMount(s32 channel, void* buffer, CARDCallback callback);
s32 CARDUnmount(s32 channel);
s32 CARDFormat(s32 channel);
s32 CARDOpen(s32 channel, const char* filename, CARDFileInfo* file);
s32 CARDClose(CARDFileInfo* file);
s32 CARDCreate(s32 channel, const char* filename, u32 size, CARDFileInfo* file);
s32 CARDRead(CARDFileInfo* file, void* buffer, u32 size, u32 offset);
s32 CARDWrite(CARDFileInfo* file, void* buffer, u32 size, u32 offset);
s32 CARDGetStatus(s32 channel, s32 fileNo, CARDStat* stat);
s32 CARDSetStatus(s32 channel, s32 fileNo, CARDStat* stat);
s32 CARDGetSerialNo(s32 channel, u32* serial1, u32* serial2);
};

#endif /* CARD_H */
