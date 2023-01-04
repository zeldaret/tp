#ifndef CARD_H
#define CARD_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define CARD_ENCODE_ANSI 0u
#define CARD_ENCODE_SJIS 1u

/* Sizes */
#define CARD_WORKAREA_SIZE (5 * 8 * 1024)
#define CARD_READ_SIZE 512
#define CARD_MAX_FILE 127
#define CARD_COMMENT_SIZE 64
#define CARD_FILENAME_MAX 32
#define CARD_ICON_MAX 8
#define CARD_ICON_WIDTH 32
#define CARD_ICON_HEIGHT 32
#define CARD_BANNER_WIDTH 96
#define CARD_BANNER_HEIGHT 32

/* Icon animation */
#define CARD_MODE_NORMAL 0
#define CARD_MODE_FAST 1

#define CARDGetBannerFormat(stat) (((stat)->bannerFormat) & CARD_STAT_BANNER_MASK)
#define CARDGetIconAnim(stat) (((stat)->bannerFormat) & CARD_STAT_ANIM_MASK)
#define CARDGetIconFormat(stat, n) (((stat)->iconFormat >> (2 * (n))) & CARD_STAT_ICON_MASK)
#define CARDGetIconSpeed(stat, n) (((stat)->iconSpeed >> (2 * (n))) & CARD_STAT_SPEED_MASK)
#define CARDSetBannerFormat(stat, f)                                                               \
  ((stat)->bannerFormat = (u8)(((stat)->bannerFormat & ~CARD_STAT_BANNER_MASK) | (f)))
#define CARDSetIconAnim(stat, f)                                                                   \
  ((stat)->bannerFormat = (u8)(((stat)->bannerFormat & ~CARD_STAT_ANIM_MASK) | (f)))
#define CARDSetIconFormat(stat, n, f)                                                              \
  ((stat)->iconFormat =                                                                            \
       (u16)(((stat)->iconFormat & ~(CARD_STAT_ICON_MASK << (2 * (n)))) | ((f) << (2 * (n)))))
#define CARDSetIconSpeed(stat, n, f)                                                               \
  ((stat)->iconSpeed =                                                                             \
       (u16)(((stat)->iconSpeed & ~(CARD_STAT_SPEED_MASK << (2 * (n)))) | ((f) << (2 * (n)))))
#define CARDSetIconAddress(stat, addr) ((stat)->iconAddr = (u32)(addr))
#define CARDSetCommentAddress(stat, addr) ((stat)->commentAddr = (u32)(addr))
#define CARDGetFileNo(fileInfo) ((fileInfo)->fileNo)

#define CARD_RESULT_UNLOCKED 1
#define CARD_RESULT_READY 0
#define CARD_RESULT_BUSY -1
#define CARD_RESULT_WRONGDEVICE -2
#define CARD_RESULT_NOCARD -3
#define CARD_RESULT_NOFILE -4
#define CARD_RESULT_IOERROR -5
#define CARD_RESULT_BROKEN -6
#define CARD_RESULT_EXIST -7
#define CARD_RESULT_NOENT -8
#define CARD_RESULT_INSSPACE -9
#define CARD_RESULT_NOPERM -10
#define CARD_RESULT_LIMIT -11
#define CARD_RESULT_NAMETOOLONG -12
#define CARD_RESULT_ENCODING -13
#define CARD_RESULT_CANCELED -14
#define CARD_RESULT_FATAL_ERROR -128

#define CARD_STAT_ICON_NONE 0
#define CARD_STAT_ICON_C8 1
#define CARD_STAT_ICON_RGB5A3 2
#define CARD_STAT_ICON_MASK 3

#define CARD_STAT_BANNER_NONE 0
#define CARD_STAT_BANNER_C8 1
#define CARD_STAT_BANNER_RGB5A3 2
#define CARD_STAT_BANNER_MASK 3

#define CARD_STAT_ANIM_LOOP 0x00
#define CARD_STAT_ANIM_BOUNCE 0x04
#define CARD_STAT_ANIM_MASK 0x04

#define CARD_STAT_SPEED_END 0
#define CARD_STAT_SPEED_FAST 1
#define CARD_STAT_SPEED_MIDDLE 2
#define CARD_STAT_SPEED_SLOW 3
#define CARD_STAT_SPEED_MASK 3

#define CARD_ATTR_PUBLIC 0x04u
#define CARD_ATTR_NO_COPY 0x08u
#define CARD_ATTR_NO_MOVE 0x10u
#define CARD_ATTR_GLOBAL 0x20u
#define CARD_ATTR_COMPANY 0x40u

typedef struct CARDFileInfo {
  s32 chan;
  s32 fileNo;

  s32 offset;
  s32 length;
  u16 iBlock;
  u16 __padding;
} CARDFileInfo;

typedef struct CARDStat {
  char fileName[CARD_FILENAME_MAX];
  u32 length;
  u32 time; // seconds since 01/01/2000 midnight
  u8 gameName[4];
  u8 company[2];

  u8 bannerFormat;
  u8 __padding;
  u32 iconAddr; // offset to the banner, bannerTlut, icon, iconTlut data set.
  u16 iconFormat;
  u16 iconSpeed;
  u32 commentAddr; // offset to the pair of 32 byte character strings.

  u32 offsetBanner;
  u32 offsetBannerTlut;
  u32 offsetIcon[CARD_ICON_MAX];
  u32 offsetIconTlut;
  u32 offsetData;
} CARDStat;

typedef void (*CARDCallback)(s32 chan, s32 result);

/* CARDBios */
void CARDInit(void);
BOOL CARDGetFastMode(void);
s32 CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed);

/* CARDCheck */
s32 CARDCheck(s32 chan);
static s32 CARDCheckExAsync(s32 chan, s32* xferBytes, CARDCallback callback);

/* CARDCreate */
static s32 CARDCreateAsync(s32 chan, const char* fileName, u32 size, CARDFileInfo* fileInfo,
                           CARDCallback callback);
s32 CARDCreate(s32 chan, const char* fileName, u32 size, CARDFileInfo* fileInfo);

/* CARDFormat */
s32 CARDFormat(s32 chan);

/* CARDMount */
s32 CARDProbe(s32 chan);
s32 CARDProbeEx(s32 chan, s32* memSize, s32* sectorSize);
s32 CARDMount(s32 chan, void* workArea, CARDCallback attachCb);
s32 CARDUnmount(s32 chan);
static s32 CARDMountAsync(s32 chan, void* workArea, CARDCallback detachCb, CARDCallback attachCb);

/* CARDNet */
s32 CARDGetSerialNo(s32 chan, u64* serialNo);

/* CARDOpen */
s32 CARDOpen(s32 chan, const char* fileName, CARDFileInfo* fileInfo);
s32 CARDClose(CARDFileInfo* fileInfo);

/* CARDRead */
static s32 CARDReadAsync(CARDFileInfo* fileInfo, void* buf, s32 length, s32 offset,
                         CARDCallback callback);
s32 CARDRead(CARDFileInfo* fileInfo, void* buf, s32 length, s32 offset);

/* CARDStat */
s32 CARDSetStatus(s32 chan, s32 fileNo, CARDStat* stat);
s32 CARDGetStatus(s32 chan, s32 fileNo, CARDStat* stat);
static s32 CARDSetStatusAsync(s32 chan, s32 fileNo, CARDStat* stat, CARDCallback callback);

/* CARDWrite */
static s32 CARDWriteAsync(CARDFileInfo* fileInfo, const void* buf, s32 length, s32 offset,
                          CARDCallback callback);
s32 CARDWrite(CARDFileInfo* fileInfo, const void* buf, s32 length, s32 offset);

#ifdef __cplusplus
}
#endif

#endif /* CARD_H */
