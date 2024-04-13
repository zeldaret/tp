#include "dolphin/card.h"
#include "dolphin/os.h"
#include "dolphin/card/CARDPriv.h"

/* 80450A60-80450A68 -00001 0004+04 1/1 0/0 0/0 .sdata           __CARDVersion */
char* __CARDVersion = "<< Dolphin SDK - CARD\trelease build: Apr  5 2004 04:15:35 (0x2301) >>";

static BOOL OnReset(BOOL);
static void TimeoutHandler(OSAlarm* alarm, OSContext* context);
static s32 Retry(s32 chan);
static void UnlockedCallback(s32 chan, s32 result);

/* 80352A30-80352A34 34D370 0004+00 0/0 5/5 0/0 .text            __CARDDefaultApiCallback */
void __CARDDefaultApiCallback(s32 chan, s32 result) {}

/* 8044CDE0-8044CE00 079B00 0020+00 0/1 3/3 0/0 .bss             __CARDDiskNone */
DVDDiskID __CARDDiskNone;

/* 8044CBC0-8044CDE0 0798E0 0220+00 16/16 27/27 0/0 .bss             __CARDBlock */
CARDControl __CARDBlock[2];

/* 80352A34-80352A68 34D374 0034+00 0/0 7/7 0/0 .text            __CARDSyncCallback */
void __CARDSyncCallback(s32 chan, s32 result) {
    OSWakeupThread(&__CARDBlock[chan].threadQueue);
}

/* 80352A68-80352B40 34D3A8 00D8+00 0/0 1/1 0/0 .text            __CARDExtHandler */
void __CARDExtHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    if (card->attached) {
        card->attached = FALSE;
        EXISetExiCallback(chan, 0);
        OSCancelAlarm(&card->alarm);
        callback = card->exiCallback;

        if (callback) {
            card->exiCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }

        if (card->result != CARD_RESULT_BUSY) {
            card->result = CARD_RESULT_NOCARD;
        }

        callback = card->extCallback;
        if (callback && CARD_MAX_MOUNT_STEP <= card->mountStep) {
            card->extCallback = 0;
            callback(chan, CARD_RESULT_NOCARD);
        }
    }
}

/* 80352B40-80352C58 34D480 0118+00 0/0 1/1 0/0 .text            __CARDExiHandler */
void __CARDExiHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    u8 status;
    s32 result;

    card = &__CARDBlock[chan];

    OSCancelAlarm(&card->alarm);

    if (!card->attached) {
        return;
    }

    if (!EXILock(chan, 0, 0)) {
        result = CARD_RESULT_FATAL_ERROR;
        goto fatal;
    }

    if ((result = __CARDReadStatus(chan, &status)) < 0 || (result = __CARDClearStatus(chan)) < 0) {
        goto error;
    }

    if ((result = (status & 0x18) ? CARD_RESULT_IOERROR : CARD_RESULT_READY) ==
            CARD_RESULT_IOERROR &&
        --card->retry > 0)
    {
        result = Retry(chan);
        if (result >= 0) {
            return;
        }
        goto fatal;
    }

error:
    EXIUnlock(chan);

fatal:
    callback = card->exiCallback;
    if (callback) {
        card->exiCallback = 0;
        callback(chan, result);
    }
}

/* 80352C58-80352D00 34D598 00A8+00 3/3 0/0 0/0 .text            __CARDTxHandler */
void __CARDTxHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;
    BOOL err;

    card = &__CARDBlock[chan];
    err = !EXIDeselect(chan);
    EXIUnlock(chan);
    callback = card->txCallback;

    if (callback) {
        card->txCallback = 0;
        callback(chan, (!err && EXIProbe(chan)) ? CARD_RESULT_READY : CARD_RESULT_NOCARD);
    }
}

/* 80352D00-80352D84 34D640 0084+00 2/2 2/2 0/0 .text            __CARDUnlockedHandler */
void __CARDUnlockedHandler(s32 chan, OSContext* context) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    callback = card->unlockCallback;
    if (callback) {
        card->unlockCallback = 0;
        callback(chan, EXIProbe(chan) ? CARD_RESULT_UNLOCKED : CARD_RESULT_NOCARD);
    }
}

/* 80352D84-80352E44 34D6C4 00C0+00 0/0 1/1 0/0 .text            __CARDEnableInterrupt */
s32 __CARDEnableInterrupt(s32 chan, BOOL enable) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, 0, 4)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = enable ? 0x81010000 : 0x81000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 2, 1, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

/* 80352E44-80352F34 34D784 00F0+00 1/1 2/2 0/0 .text            __CARDReadStatus */
s32 __CARDReadStatus(s32 chan, u8* status) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, 0, 4)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = 0x83000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 2, 1, NULL);
    err |= !EXISync(chan);
    err |= !EXIImm(chan, status, 1, 0, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

/* 80352F34-80353024 34D874 00F0+00 0/0 1/1 0/0 .text            __CARDReadVendorID */
s32 __CARDReadVendorID(s32 chan, u16* vendorId) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, 0, 4)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = 0x85000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 2, 1, NULL);
    err |= !EXISync(chan);
    err |= !EXIImm(chan, vendorId, 2, 0, NULL);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);
    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

/* 80353024-803530D0 34D964 00AC+00 1/1 1/1 0/0 .text            __CARDClearStatus */
s32 __CARDClearStatus(s32 chan) {
    BOOL err;
    u32 cmd;

    if (!EXISelect(chan, 0, 4)) {
        return CARD_RESULT_NOCARD;
    }

    cmd = 0x89000000;
    err = FALSE;
    err |= !EXIImm(chan, &cmd, 1, 1, 0);
    err |= !EXISync(chan);
    err |= !EXIDeselect(chan);

    return err ? CARD_RESULT_NOCARD : CARD_RESULT_READY;
}

/* 803530D0-80353174 34DA10 00A4+00 2/2 0/0 0/0 .text            TimeoutHandler */
static void TimeoutHandler(OSAlarm* alarm, OSContext* context) {
    s32 chan;
    CARDControl* card;
    CARDCallback callback;
    for (chan = 0; chan < 2; ++chan) {
        card = &__CARDBlock[chan];
        if (alarm == &card->alarm) {
            break;
        }
    }

    if (!card->attached) {
        return;
    }

    EXISetExiCallback(chan, NULL);
    callback = card->exiCallback;
    if (callback) {
        card->exiCallback = 0;
        callback(chan, CARD_RESULT_IOERROR);
    }
}

static void SetupTimeoutAlarm(CARDControl* card) {
    OSCancelAlarm(&card->alarm);
    switch (card->cmd[0]) {
    case 0xF2:
        OSSetAlarm(&card->alarm, OSMillisecondsToTicks(100), TimeoutHandler);
        break;
    case 0xF3:
        break;
    case 0xF4:
        if (card->pageSize > 0x80) {
            OSSetAlarm(&card->alarm, OSSecondsToTicks((OSTime)2) * (card->cBlock / 0x40),
                       TimeoutHandler);
            break;
        }
    case 0xF1:
        OSSetAlarm(&card->alarm, OSSecondsToTicks((OSTime)2) * (card->sectorSize / 0x2000),
                   TimeoutHandler);
        break;
    default:
        break;
    }
}

/* 80353174-80353414 34DAB4 02A0+00 2/2 0/0 0/0 .text            Retry */
static s32 Retry(s32 chan) {
    CARDControl* card;
    card = &__CARDBlock[chan];

    if (!EXISelect(chan, 0, 4)) {
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    SetupTimeoutAlarm(card);

    if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1)) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    if (card->cmd[0] == 0x52 &&
        !EXIImmEx(chan, (u8*)card->workArea + sizeof(CARDID), card->latency, 1))
    {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    if (card->mode == 0xffffffff) {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_READY;
    }

    if (!EXIDma(chan, card->buffer, (s32)((card->cmd[0] == 0x52) ? 512 : card->pageSize),
                card->mode, __CARDTxHandler))
    {
        EXIDeselect(chan);
        EXIUnlock(chan);
        return CARD_RESULT_NOCARD;
    }

    return CARD_RESULT_READY;
}

/* 80353414-80353524 34DD54 0110+00 1/1 0/0 0/0 .text            UnlockedCallback */
static void UnlockedCallback(s32 chan, s32 result) {
    CARDCallback callback;
    CARDControl* card;

    card = &__CARDBlock[chan];
    if (result >= 0) {
        card->unlockCallback = UnlockedCallback;
        if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
            result = CARD_RESULT_READY;
        } else {
            card->unlockCallback = 0;
            result = Retry(chan);
        }
    }

    if (result < 0) {
        switch (card->cmd[0]) {
        case 0x52:
            callback = card->txCallback;
            if (callback) {
                card->txCallback = 0;
                callback(chan, result);
            }

            break;
        case 0xF2:
        case 0xF4:
        case 0xF1:
            callback = card->exiCallback;
            if (callback) {
                card->exiCallback = 0;
                callback(chan, result);
            }
            break;
        }
    }
}

/* 80353524-80353748 34DE64 0224+00 3/3 0/0 0/0 .text            __CARDStart */
static s32 __CARDStart(s32 chan, CARDCallback txCallback, CARDCallback exiCallback) {
    BOOL enabled;
    CARDControl* card;
    s32 result;

    enabled = OSDisableInterrupts();

    card = &__CARDBlock[chan];
    if (!card->attached) {
        result = CARD_RESULT_NOCARD;
    } else {
        if (txCallback) {
            card->txCallback = txCallback;
        }
        if (exiCallback) {
            card->exiCallback = exiCallback;
        }
        card->unlockCallback = UnlockedCallback;
        if (!EXILock(chan, 0, __CARDUnlockedHandler)) {
            result = CARD_RESULT_BUSY;
        } else {
            card->unlockCallback = 0;

            if (!EXISelect(chan, 0, 4)) {
                EXIUnlock(chan);
                result = CARD_RESULT_NOCARD;
            } else {
                SetupTimeoutAlarm(card);
                result = CARD_RESULT_READY;
            }
        }
    }

    OSRestoreInterrupts(enabled);
    return result;
}

#define AD1(x) ((u8)(((x) >> 17) & 0x7f))
#define AD1EX(x) ((u8)(AD1(x) | 0x80));
#define AD2(x) ((u8)(((x) >> 9) & 0xff))
#define AD3(x) ((u8)(((x) >> 7) & 0x03))
#define BA(x) ((u8)((x) & 0x7f))

/* 80353748-8035387C 34E088 0134+00 0/0 2/2 0/0 .text            __CARDReadSegment */
s32 __CARDReadSegment(s32 chan, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];
    card->cmd[0] = 0x52;
    card->cmd[1] = AD1(card->addr);
    card->cmd[2] = AD2(card->addr);
    card->cmd[3] = AD3(card->addr);
    card->cmd[4] = BA(card->addr);
    card->cmdlen = 5;
    card->mode = 0;
    card->retry = 0;

    result = __CARDStart(chan, callback, 0);
    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    } else if (result >= 0) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1) ||
            !EXIImmEx(chan, (u8*)card->workArea + sizeof(CARDID), card->latency,
                      1) ||  // XXX use DMA if possible
            !EXIDma(chan, card->buffer, 512, card->mode, __CARDTxHandler))
        {
            card->txCallback = 0;
            EXIDeselect(chan);
            EXIUnlock(chan);
            result = CARD_RESULT_NOCARD;
        } else {
            result = CARD_RESULT_READY;
        }
    }
    return result;
}

/* 8035387C-803539B8 34E1BC 013C+00 0/0 2/2 0/0 .text            __CARDWritePage */
s32 __CARDWritePage(s32 chan, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];

    card->cmd[0] = 0xF2;
    if (card->pageSize > 0x80) {
        card->cmd[1] = AD1(card->addr) | 0x80;
    } else {
        card->cmd[1] = AD1(card->addr);
    }

    card->cmd[2] = AD2(card->addr);
    card->cmd[3] = AD3(card->addr);
    card->cmd[4] = BA(card->addr);
    card->cmdlen = 5;
    card->mode = 1;
    card->retry = 3;

    result = __CARDStart(chan, 0, callback);
    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    } else if (result >= 0) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1) ||
            !EXIDma(chan, card->buffer, card->pageSize, card->mode, __CARDTxHandler))
        {
            card->exiCallback = 0;
            EXIDeselect(chan);
            EXIUnlock(chan);
            result = CARD_RESULT_NOCARD;
        } else {
            result = CARD_RESULT_READY;
        }
    }
    return result;
}

/* 803539B8-80353AC8 34E2F8 0110+00 0/0 6/6 0/0 .text            __CARDEraseSector */
s32 __CARDEraseSector(s32 chan, u32 addr, CARDCallback callback) {
    CARDControl* card;
    s32 result;

    card = &__CARDBlock[chan];
    if (card->pageSize > 0x80) {
        if (callback) {
            callback(chan, 0);
        }
        return 0;
    }
    card->cmd[0] = 0xF1;
    card->cmd[1] = AD1(addr);
    card->cmd[2] = AD2(addr);
    card->cmdlen = 3;
    card->mode = -1;
    card->retry = 3;

    result = __CARDStart(chan, 0, callback);

    if (result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_READY;
    } else if (result >= 0) {
        if (!EXIImmEx(chan, card->cmd, card->cmdlen, 1)) {
            card->exiCallback = NULL;
            result = CARD_RESULT_NOCARD;
        } else {
            result = CARD_RESULT_READY;
        }

        EXIDeselect(chan);
        EXIUnlock(chan);
    }
    return result;
}

/* 803D1E80-803D1EA0 -00001 0010+10 1/1 0/0 0/0 .data            ResetFunctionInfo */
static OSResetFunctionInfo ResetFunctionInfo = {
    OnReset,
    127,
    NULL,
    NULL,
};

/* 80451918-80451920 -00001 0004+04 3/3 0/0 0/0 .sbss            None */
/* 80451918 0002+00 data_80451918 __CARDEncode */
static u16 __CARDEncode;

/* 8045191A 0002+00 data_8045191A __CARDFastMode */
static u16 __CARDFastMode;

/* 80353AC8-80353B74 34E408 00AC+00 0/0 1/1 0/0 .text            CARDInit */
void CARDInit(void) {
    int chan;

    if (__CARDBlock[0].diskID && __CARDBlock[1].diskID) {
        return;
    }

    __CARDEncode = OSGetFontEncode();

    OSRegisterVersion(__CARDVersion);

    DSPInit();
    OSInitAlarm();

    for (chan = 0; chan < 2; ++chan) {
        CARDControl* card = &__CARDBlock[chan];

        card->result = CARD_RESULT_NOCARD;
        OSInitThreadQueue(&card->threadQueue);
        OSCreateAlarm(&card->alarm);
    }
    __CARDSetDiskID((DVDDiskID*)OSPhysicalToCached(0x0));

    OSRegisterResetFunction(&ResetFunctionInfo);
}

/* 80353B74-80353B7C 34E4B4 0008+00 0/0 2/2 0/0 .text            __CARDGetFontEncode */
u16 __CARDGetFontEncode(void) {
    return __CARDEncode;
}

/* 80353B7C-80353BB4 34E4BC 0038+00 1/1 0/0 0/0 .text            __CARDSetDiskID */
void __CARDSetDiskID(const DVDDiskID* id) {
    __CARDBlock[0].diskID = id ? id : &__CARDDiskNone;
    __CARDBlock[1].diskID = id ? id : &__CARDDiskNone;
}

/* 80353BB4-80353C6C 34E4F4 00B8+00 1/1 10/10 0/0 .text            __CARDGetControlBlock */
s32 __CARDGetControlBlock(s32 chan, CARDControl** pcard) {
    BOOL enabled;
    s32 result;
    CARDControl* card;

    card = &__CARDBlock[chan];
    if (chan < 0 || chan >= 2 || card->diskID == NULL) {
        return CARD_RESULT_FATAL_ERROR;
    }

    enabled = OSDisableInterrupts();
    if (!card->attached) {
        result = CARD_RESULT_NOCARD;
    } else if (card->result == CARD_RESULT_BUSY) {
        result = CARD_RESULT_BUSY;
    } else {
        card->result = CARD_RESULT_BUSY;
        result = CARD_RESULT_READY;
        card->apiCallback = 0;
        *pcard = card;
    }
    OSRestoreInterrupts(enabled);
    return result;
}

/* 80353C6C-80353CD0 34E5AC 0064+00 0/0 24/24 0/0 .text            __CARDPutControlBlock */
s32 __CARDPutControlBlock(CARDControl* card, s32 result) {
    BOOL enabled;

    enabled = OSDisableInterrupts();
    if (card->attached) {
        card->result = result;
    } else if (card->result == CARD_RESULT_BUSY) {
        card->result = result;
    }
    OSRestoreInterrupts(enabled);
    return result;
}

/* 80353CD0-80353E20 34E610 0150+00 0/0 1/1 0/0 .text            CARDFreeBlocks */
s32 CARDFreeBlocks(s32 chan, s32* byteNotUsed, s32* filesNotUsed) {
    CARDControl* card;
    s32 result;
    u16* fat;
    CARDDir* dir;
    CARDDir* ent;
    u16 fileNo;

    result = __CARDGetControlBlock(chan, &card);
    if (result < 0) {
        return result;
    }

    fat = __CARDGetFatBlock(card);
    dir = __CARDGetDirBlock(card);
    if (fat == 0 || dir == 0) {
        return __CARDPutControlBlock(card, CARD_RESULT_BROKEN);
    }

    if (byteNotUsed) {
        *byteNotUsed = (s32)(card->sectorSize * fat[CARD_FAT_FREEBLOCKS]);
    }

    if (filesNotUsed) {
        *filesNotUsed = 0;
        for (fileNo = 0; fileNo < CARD_MAX_FILE; fileNo++) {
            ent = &dir[fileNo];
            if (ent->fileName[0] == 0xff) {
                ++*filesNotUsed;
            }
        }
    }

    return __CARDPutControlBlock(card, CARD_RESULT_READY);
}

s32 CARDGetResultCode(s32 chan) {
    CARDControl* card;
    if (chan < 0 || chan >= 2) {
        return CARD_RESULT_FATAL_ERROR;
    }
    card = &__CARDBlock[chan];
    return card->result;
}

/* 80353E20-80353EB8 34E760 0098+00 0/0 7/7 0/0 .text            __CARDSync */
s32 __CARDSync(s32 chan) {
    CARDControl* block;
    s32 result;
    s32 enabled;

    block = &__CARDBlock[chan];
    enabled = OSDisableInterrupts();
    while ((result = CARDGetResultCode(chan)) == -1) {
        OSSleepThread(&block->threadQueue);
    }
    OSRestoreInterrupts(enabled);
    return result;
}

/* 80353EB8-80353F08 34E7F8 0050+00 1/0 0/0 0/0 .text            OnReset */
static BOOL OnReset(BOOL f) {
    if (!f) {
        if (CARDUnmount(0) == CARD_RESULT_BUSY || CARDUnmount(1) == CARD_RESULT_BUSY) {
            return FALSE;
        }
    }

    return TRUE;
}

/* 80353F08-80353F24 34E848 001C+00 0/0 1/1 0/0 .text            CARDGetFastMode */
BOOL CARDGetFastMode(void) {
    if (__CARDFastMode != 0) {
        return TRUE;
    }

    return FALSE;
}
