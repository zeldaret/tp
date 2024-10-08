#include "dolphin/card/CARDRdwr.h"
#include "dolphin/card.h"
#include "dolphin/card/CARDPriv.h"

static void BlockReadCallback(s32 chan, s32 result);
static void BlockWriteCallback(s32 chan, s32 result);

/* 80355184-80355260 34FAC4 00DC+00 1/1 0/0 0/0 .text            BlockReadCallback */
static void BlockReadCallback(s32 chan, s32 result) {
    CARDControl* card;
    CARDCallback callback;

    card = &__CARDBlock[chan];
    if (result < 0) {
        goto error;
    }

    card->xferred += CARD_SEG_SIZE;

    card->addr += CARD_SEG_SIZE;
    (u8*)card->buffer += CARD_SEG_SIZE;
    if (--card->repeat <= 0) {
        goto error;
    }

    result = __CARDReadSegment(chan, BlockReadCallback);
    if (result < 0) {
        goto error;
    }
    return;

error:
    if (card->apiCallback == 0) {
        __CARDPutControlBlock(card, result);
    }
    callback = card->xferCallback;
    if (callback) {
        card->xferCallback = 0;
        callback(chan, result);
    }
}

/* 80355260-803552C4 34FBA0 0064+00 0/0 3/3 0/0 .text            __CARDRead */
s32 __CARDRead(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback) {
    CARDControl* card;
    card = &__CARDBlock[chan];
    if (!card->attached) {
        return CARD_RESULT_NOCARD;
    }

    card->xferCallback = callback;
    card->repeat = (int)(length / CARD_SEG_SIZE);
    card->addr = addr;
    card->buffer = dst;

    return __CARDReadSegment(chan, BlockReadCallback);
}

/* 803552C4-803553AC 34FC04 00E8+00 1/1 0/0 0/0 .text            BlockWriteCallback */
static void BlockWriteCallback(s32 chan, s32 result) {
    CARDCallback callback;
    CARDControl* card = &__CARDBlock[chan];

    if (result < 0) {
        goto error;
    }

    card->xferred += card->pageSize;

    card->addr += card->pageSize;
    (u8*)card->buffer += card->pageSize;
    if (--card->repeat <= 0) {
        goto error;
    }

    result = __CARDWritePage(chan, BlockWriteCallback);
    if (result < 0) {
        goto error;
    }
    return;

error:
    if (card->apiCallback == 0) {
        __CARDPutControlBlock(card, result);
    }
    callback = card->xferCallback;
    if (callback) {
        card->xferCallback = 0;
        callback(chan, result);
    }
}

/* 803553AC-80355414 34FCEC 0068+00 0/0 4/4 0/0 .text            __CARDWrite */
s32 __CARDWrite(s32 chan, u32 addr, s32 length, void* dst, CARDCallback callback) {
    CARDControl* card;
    card = &__CARDBlock[chan];
    if (!card->attached) {
        return CARD_RESULT_NOCARD;
    }

    card->xferCallback = callback;
    card->repeat = (int)(length / card->pageSize);
    card->addr = addr;
    card->buffer = dst;

    return __CARDWritePage(chan, BlockWriteCallback);
}