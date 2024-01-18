#include "dolphin/card/CARDStat.h"
#include "dolphin/card.h"
#include "dolphin/card/CARDPriv.h"
#include "dolphin/dsp.h"

static void UpdateIconOffsets(CARDDir* ent, CARDStat* stat);

/* 80358C90-80358E88 3535D0 01F8+00 2/2 0/0 0/0 .text            UpdateIconOffsets */
static void UpdateIconOffsets(CARDDir* ent, CARDStat* stat) {
    u32 offset;
    BOOL iconTlut;
    int i;

    offset = ent->iconAddr;
    if (offset == 0xFFFFFFFF) {
        stat->bannerFormat = 0;
        stat->iconFormat = 0;
        stat->iconSpeed = 0;
        offset = 0;
    }

    iconTlut = FALSE;
    switch (CARDGetBannerFormat(ent)) {
    case CARD_STAT_BANNER_C8:
        stat->offsetBanner = offset;
        offset += CARD_BANNER_WIDTH * CARD_BANNER_HEIGHT;
        stat->offsetBannerTlut = offset;
        offset += 2 * 256;
        break;
    case CARD_STAT_BANNER_RGB5A3:
        stat->offsetBanner = offset;
        offset += 2 * CARD_BANNER_WIDTH * CARD_BANNER_HEIGHT;
        stat->offsetBannerTlut = 0xFFFFFFFF;
        break;
    default:
        stat->offsetBanner = 0xFFFFFFFF;
        stat->offsetBannerTlut = 0xFFFFFFFF;
        break;
    }

    for (i = 0; i < CARD_ICON_MAX; ++i) {
        switch (CARDGetIconFormat(ent, i)) {
        case CARD_STAT_ICON_C8:
            stat->offsetIcon[i] = offset;
            offset += CARD_ICON_WIDTH * CARD_ICON_HEIGHT;
            iconTlut = TRUE;
            break;
        case CARD_STAT_ICON_RGB5A3:
            stat->offsetIcon[i] = offset;
            offset += 2 * CARD_ICON_WIDTH * CARD_ICON_HEIGHT;
            break;
        default:
            stat->offsetIcon[i] = 0xFFFFFFFF;
            break;
        }
    }

    if (iconTlut) {
        stat->offsetIconTlut = offset;
        offset += 2 * 256;
    } else {
        stat->offsetIconTlut = 0xFFFFFFFF;
    }
    stat->offsetData = offset;
}

/* 80358E88-80358F9C 3537C8 0114+00 0/0 2/2 0/0 .text            CARDGetStatus */
s32 CARDGetStatus(s32 chan, s32 fileNo, CARDStat* stat) {
    CARDControl* card;
    CARDDir* dir;
    CARDDir* ent;
    s32 result;

    if (fileNo < 0 || CARD_MAX_FILE <= fileNo) {
        return CARD_RESULT_FATAL_ERROR;
    }
    result = __CARDGetControlBlock(chan, &card);
    if (result < 0) {
        return result;
    }

    dir = __CARDGetDirBlock(card);
    ent = &dir[fileNo];
    result = __CARDIsReadable(card, ent);

    if (result >= 0) {
        memcpy(stat->gameName, ent->gameName, sizeof(stat->gameName));
        memcpy(stat->company, ent->company, sizeof(stat->company));
        stat->length = (u32)ent->length * card->sectorSize;
        memcpy(stat->fileName, ent->fileName, CARD_FILENAME_MAX);
        stat->time = ent->time;

        stat->bannerFormat = ent->bannerFormat;
        stat->iconAddr = ent->iconAddr;
        stat->iconFormat = ent->iconFormat;
        stat->iconSpeed = ent->iconSpeed;
        stat->commentAddr = ent->commentAddr;

        UpdateIconOffsets(ent, stat);
    }
    return __CARDPutControlBlock(card, result);
}

/* 80358F9C-80359110 3538DC 0174+00 1/1 0/0 0/0 .text            CARDSetStatusAsync */
s32 CARDSetStatusAsync(s32 chan, s32 fileNo, CARDStat* stat, CARDCallback callback) {
    CARDControl* card;
    CARDDir* dir;
    CARDDir* ent;
    s32 result;

    if (fileNo < 0 || CARD_MAX_FILE <= fileNo ||
        (stat->iconAddr != 0xffffffff && CARD_READ_SIZE <= stat->iconAddr) ||
        (stat->commentAddr != 0xffffffff &&
         CARD_SYSTEM_BLOCK_SIZE - CARD_COMMENT_SIZE < stat->commentAddr % CARD_SYSTEM_BLOCK_SIZE))
    {
        return CARD_RESULT_FATAL_ERROR;
    }
    result = __CARDGetControlBlock(chan, &card);
    if (result < 0) {
        return result;
    }

    dir = __CARDGetDirBlock(card);
    ent = &dir[fileNo];
    result = __CARDIsWritable(card, ent);
    if (result < 0) {
        return __CARDPutControlBlock(card, result);
    }

    ent->bannerFormat = stat->bannerFormat;
    ent->iconAddr = stat->iconAddr;
    ent->iconFormat = stat->iconFormat;
    ent->iconSpeed = stat->iconSpeed;
    ent->commentAddr = stat->commentAddr;
    UpdateIconOffsets(ent, stat);

    if (ent->iconAddr == 0xffffffff) {
        CARDSetIconSpeed(ent, 0, CARD_STAT_SPEED_FAST);
    }

    ent->time = (u32)OSTicksToSeconds(OSGetTime());
    result = __CARDUpdateDir(chan, callback);
    if (result < 0) {
        __CARDPutControlBlock(card, result);
    }
    return result;
}

/* 80359110-80359158 353A50 0048+00 0/0 1/1 0/0 .text            CARDSetStatus */
s32 CARDSetStatus(s32 chan, s32 fileNo, CARDStat* stat) {
    s32 result = CARDSetStatusAsync(chan, fileNo, stat, __CARDSyncCallback);
    if (result < 0) {
        return result;
    }

    return __CARDSync(chan);
}
