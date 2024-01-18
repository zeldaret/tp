#ifndef CARDPRIV_H
#define CARDPRIV_H

#include "dolphin/os/OSAlarm.h"
#include "dolphin/os/OSThread.h"
#include "dolphin/dsp.h"

#ifdef __cplusplus
extern "C" {
#endif

#define CARD_FAT_AVAIL 0x0000u
#define CARD_FAT_CHECKSUM 0x0000u
#define CARD_FAT_CHECKSUMINV 0x0001u
#define CARD_FAT_CHECKCODE 0x0002u
#define CARD_FAT_FREEBLOCKS 0x0003u
#define CARD_FAT_LASTSLOT 0x0004u

#define CARD_PAGE_SIZE 128u
#define CARD_SEG_SIZE 512u

#define CARD_NUM_SYSTEM_BLOCK 5
#define CARD_SYSTEM_BLOCK_SIZE (8 * 1024u)

#define CARD_MAX_MOUNT_STEP (CARD_NUM_SYSTEM_BLOCK + 2)

typedef struct DVDDiskID DVDDiskID;

typedef struct CARDDir {
    u8 gameName[4];
    u8 company[2];
    u8 _padding0;
    u8 bannerFormat;
    u8 fileName[CARD_FILENAME_MAX];
    u32 time;  // seconds since 01/01/2000 midnight

    u32 iconAddr;  // 0xFFFFFFFF if not used
    u16 iconFormat;
    u16 iconSpeed;

    u8 permission;
    u8 copyTimes;
    u16 startBlock;
    u16 length;
    u8 _padding1[2];

    u32 commentAddr;  // 0xFFFFFFFF if not used
} CARDDir;

typedef struct CARDDirCheck {
    u8 padding0[64 - 2 * 4];
    u16 padding1;
    s16 checkCode;
    u16 checkSum;
    u16 checkSumInv;
} CARDDirCheck;

typedef struct CARDControl {
    /* 0x000 */ BOOL attached;
    /* 0x004 */ s32 result;
    /* 0x008 */ u16 size;
    /* 0x00A */ u16 pageSize;
    /* 0x00C */ s32 sectorSize;
    /* 0x010 */ u16 cBlock;
    /* 0x012 */ u16 vendorID;
    /* 0x014 */ s32 latency;
    /* 0x018 */ u8 id[12];
    /* 0x024 */ int mountStep;
    /* 0x028 */ int formatStep;
    /* 0x02C */ u32 scramble;
    /* 0x030 */ DSPTaskInfo task;
    /* 0x080 */ void* workArea;
    /* 0x084 */ CARDDir* currentDir;
    /* 0x088 */ u16* currentFat;
    /* 0x08C */ OSThreadQueue threadQueue;
    /* 0x094 */ u8 cmd[9];
    /* 0x0A0 */ s32 cmdlen;
    /* 0x0A4 */ vu32 mode;
    /* 0x0A8 */ int retry;
    /* 0x0AC */ int repeat;
    /* 0x0B0 */ u32 addr;
    /* 0x0B4 */ void* buffer;
    /* 0x0B8 */ s32 xferred;
    /* 0x0BC */ u16 freeNo;
    /* 0x0BE */ u16 startBlock;
    /* 0x0C0 */ CARDFileInfo* fileInfo;
    /* 0x0C4 */ CARDCallback extCallback;
    /* 0x0C8 */ CARDCallback txCallback;
    /* 0x0CC */ CARDCallback exiCallback;
    /* 0x0D0 */ CARDCallback apiCallback;
    /* 0x0D4 */ CARDCallback xferCallback;
    /* 0x0D8 */ CARDCallback eraseCallback;
    /* 0x0DC */ CARDCallback unlockCallback;
    /* 0x0E0 */ OSAlarm alarm;
    /* 0x108 */ u32 cid;
    /* 0x10C */ const DVDDiskID* diskID;
} CARDControl;

typedef struct CARDID {
    u8 serial[32];  // flashID[12] + timebase[8] + counterBias[4] + language[4] + XXX[4]
    u16 deviceID;
    u16 size;
    u16 encode;  // character set -- 0: S-JIS, 1: ANSI

    u8 padding[512 - 32 - 5 * 2];

    u16 checkSum;
    u16 checkSumInv;
} CARDID;

void __CARDDefaultApiCallback(s32 chan, s32 result);
s32 __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback);
s32 __CARDPutControlBlock(struct CARDControl* card, s32 result);
void __CARDSyncCallback(s32 chan, s32 result);
u16* __CARDGetFatBlock(CARDControl* card);

/* CARDBios */
void __CARDExtHandler(s32 chan, OSContext* context);
void __CARDExiHandler(s32 chan, OSContext* context);
void __CARDTxHandler(s32 chan, OSContext* context);
void __CARDUnlockedHandler(s32 chan, OSContext* context);
s32 __CARDEnableInterrupt(s32 chan, BOOL enable);
s32 __CARDReadStatus(s32 chan, u8* status);
s32 __CARDReadVendorID(s32 chan, u16* vendorId);
s32 __CARDClearStatus(s32 chan);
s32 __CARDStart(s32 chan, CARDCallback txCallback, CARDCallback exiCallback);
s32 __CARDReadSegment(s32 chan, CARDCallback callback);
s32 __CARDWritePage(s32 chan, CARDCallback callback);
u16 __CARDGetFontEncode(void);
void __CARDSetDiskID(const DVDDiskID* id);
s32 __CARDGetControlBlock(s32 chan, struct CARDControl** pcard);
s32 __CARDSync(s32 chan);

/* CARDBlock */
s32 __CARDAllocBlock(s32 chan, u32 cBlock, CARDCallback callback);
s32 __CARDUpdateFatBlock(s32 chan, u16* fat, CARDCallback callback);

/* CARDCheck */
void __CARDCheckSum(void* ptr, int length, u16* checksum, u16* checksumInv);
s32 __CARDVerify(CARDControl* card);

/* CARDDir */
CARDDir* __CARDGetDirBlock(CARDControl* card);
s32 __CARDUpdateDir(s32 chan, CARDCallback callback);

/* CARDFormat */
s32 __CARDFormatRegionAsync(s32 chan, u16 encode, CARDCallback callback);

/* CARDMount */
void __CARDMountCallback(s32 chan, s32 result);

/* CARDOpen */
BOOL __CARDCompareFileName(CARDDir* ent, const char* fileName);
s32 __CARDAccess(CARDControl* card, CARDDir* ent);
s32 __CARDIsWritable(CARDControl* card, CARDDir* ent);
s32 __CARDIsReadable(CARDControl* card, CARDDir* ent);

/* CARDRdwr */
s32 __CARDRead(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback);
s32 __CARDWrite(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback);

/* CARDRead */
s32 __CARDSeek(CARDFileInfo* fileInfo, s32 length, s32 offset, CARDControl** pcard);

/* CARDUnlock */
s32 __CARDUnlock(s32 chan, u8 flashID[12]);

#define CARDIsValidBlockNo(card, iBlock)                                                           \
    (CARD_NUM_SYSTEM_BLOCK <= (iBlock) && (iBlock) < (card)->cBlock)
#define __CARDGetDirCheck(dir) ((CARDDirCheck*)&(dir)[CARD_MAX_FILE])

#define TRUNC(n, a) (((u32)(n)) & ~((a)-1))
#define OFFSET(n, a) (((u32)(n)) & ((a)-1))

extern CARDControl __CARDBlock[2];
extern DVDDiskID __CARDDiskNone;
extern u16 __CARDVendorID;
extern u8 data_80450A72;

#ifdef __cplusplus
}
#endif

#endif /* CARDPRIV_H */
