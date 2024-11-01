/**
 * m_Do_MemCardRWmng.cpp
 * Memcard Saving and Checksum
 */

#include "m_Do/m_Do_MemCardRWmng.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "stdio.h"
#include "d/d_com_inf_game.h"
#include "d/d_save.h"
#include "dolphin/card.h"
#include "m_Do/m_Do_MemCard.h"

/* 803ECF40-803F0F40 019C60 4000+00 2/2 0/0 0/0 .bss             sTmpBuf */
static u8 sTmpBuf[0x4000];

/* 80017498-8001769C 011DD8 0204+00 0/0 1/1 0/0 .text mDoMemCdRWm_Store__FP12CARDFileInfoPvUl */
s32 mDoMemCdRWm_Store(CARDFileInfo* file, void* data, u32 length) {
    mDoMemCdRWm_BuildHeader((mDoMemCdRWm_HeaderData*)sTmpBuf);

    s32 card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf), 0);
    if (card_state != CARD_RESULT_READY) { 
        return card_state;
    }

    if (!mDoMemCdRWm_CheckCardStat(file)) {
        memset(sTmpBuf, 0, sizeof(sTmpBuf));

        card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000);
        if (card_state != CARD_RESULT_READY) {
            return card_state;
        }

        card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000);
        if (card_state != CARD_RESULT_READY) {
            return card_state;
        }
    }

    struct data_s {
        int field_0x0;
        int field_0x4;
        u8 mData[0x1FF4];
        u32 mChecksum;
    };

    memset(sTmpBuf, 0, sizeof(sTmpBuf));
    data_s* tmp_data = (data_s*)sTmpBuf;
    tmp_data->field_0x4 = 6;
    memcpy(tmp_data->mData, data, length);
    tmp_data->field_0x0 = 0;
    u32 checksum = mDoMemCdRWm_CalcCheckSum(tmp_data, 0x1FFC);
    tmp_data->mChecksum = checksum;

    card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    card_state = CARDRead(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    if (checksum != mDoMemCdRWm_CalcCheckSum(sTmpBuf, 0x1FFC)) {
        return card_state;
    }

    card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    card_state = CARDRead(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    if (checksum != mDoMemCdRWm_CalcCheckSum(sTmpBuf, 0x1FFC)) {
        return card_state;
    }
    mDoMemCdRWm_SetCardStat(file);
    return card_state;
}

/* 8001769C-8001787C 011FDC 01E0+00 0/0 1/1 0/0 .text mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl */
s32 mDoMemCdRWm_Restore(CARDFileInfo* file, void* data, u32 length) {
    BOOL rewrite = FALSE;

    struct save_data_s {
        u8 field_0x0[4];
        u32 mDataVersion;
        u8 mSave1[QUEST_LOG_SIZE];
        u8 mSave2[QUEST_LOG_SIZE];
        u8 mSave3[QUEST_LOG_SIZE];
    };

    save_data_s* saves = (save_data_s*)sTmpBuf;
    save_data_s* backup_saves = (save_data_s*)(sTmpBuf + sizeof(sTmpBuf) / 2);

    s32 card_state = CARDRead(file, saves, sizeof(sTmpBuf) / 2, 0x4000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    BOOL test_save1 = mDoMemCdRWm_TestCheckSumGameData(saves->mSave1);
    BOOL test_save2 = mDoMemCdRWm_TestCheckSumGameData(saves->mSave2);
    BOOL test_save3 = mDoMemCdRWm_TestCheckSumGameData(saves->mSave3);

    card_state = CARDRead(file, backup_saves, sizeof(sTmpBuf) / 2, 0x6000);
    if (card_state != CARD_RESULT_READY) {
        return card_state;
    }

    BOOL test_backup1 = mDoMemCdRWm_TestCheckSumGameData(backup_saves->mSave1);
    BOOL test_backup2 = mDoMemCdRWm_TestCheckSumGameData(backup_saves->mSave2);
    BOOL test_backup3 = mDoMemCdRWm_TestCheckSumGameData(backup_saves->mSave3);

    if (!test_save1 && test_backup1) {
        memcpy(saves->mSave1, backup_saves->mSave1, QUEST_LOG_SIZE);
        rewrite = TRUE;
    }

    if (!test_save2 && test_backup2) {
        memcpy(saves->mSave2, backup_saves->mSave2, QUEST_LOG_SIZE);
        rewrite = TRUE;
    }

    if (!test_save3 && test_backup3) {
        memcpy(saves->mSave3, backup_saves->mSave3, QUEST_LOG_SIZE);
        rewrite = TRUE;
    }

    if (!mDoMemCdRWm_CheckCardStat(file)) {
        return CARD_RESULT_FATAL_ERROR;
    }

    if (rewrite) {
        card_state = CARDWrite(file, saves, sizeof(sTmpBuf) / 2, 0x4000);
        if (card_state != CARD_RESULT_READY) {
            return card_state;
        }

        card_state = CARDWrite(file, saves, sizeof(sTmpBuf) / 2, 0x6000);
        if (card_state != CARD_RESULT_READY) {
            return card_state;
        }
    }

    memcpy(data, saves->mSave1, length);
    mDoMemCd_setDataVersion(saves->mDataVersion);
    mDoMemCd_setSerialNo();

    return CARD_RESULT_READY;
}

/* 8001787C-800179E4 0121BC 0168+00 1/1 0/0 0/0 .text
 * mDoMemCdRWm_BuildHeader__FP22mDoMemCdRWm_HeaderData          */
static void mDoMemCdRWm_BuildHeader(mDoMemCdRWm_HeaderData* header) {
    snprintf(header->mTitle, sizeof(header->mTitle), "Zelda: Twilight Princess");

    OSCalendarTime time;
    OSTicksToCalendarTime(OSGetTime(), &time);
    snprintf(header->mComment, sizeof(header->mComment), "%d/%d Save Data", time.month + 1,
             time.day_of_month);

    ResTIMG* banner_data =
        (ResTIMG*)g_dComIfG_gameInfo.play.mCardIconResArchive->getResource("zelda2_gc_banner.bti");
    ResTIMG* icon_data =
        (ResTIMG*)g_dComIfG_gameInfo.play.mCardIconResArchive->getResource("zelda2_gc_icon.bti");

    memcpy(header->mBannerTexData, (u8*)banner_data + banner_data->imageOffset,
           (banner_data->numColors * 2) + 0xC00);
    memcpy(header->mIconTexData0, (u8*)icon_data + icon_data->imageOffset, 0x400);
    memcpy(header->mIconTexData1, (u8*)icon_data + icon_data->imageOffset, 0x400);
    memcpy(header->mIconTexData2, (u8*)icon_data + icon_data->imageOffset, 0x400);
    memcpy(header->mIconTexData3, (u8*)icon_data + icon_data->imageOffset, 0x400);
    memcpy(header->mIconTexData4, (u8*)icon_data + icon_data->imageOffset,
           (icon_data->numColors * 2) + 0x400);
    g_dComIfG_gameInfo.play.mCardIconResArchive->removeResourceAll();
}

/* 800179E4-80017B4C 012324 0168+00 1/1 0/0 0/0 .text mDoMemCdRWm_SetCardStat__FP12CARDFileInfo */
static void mDoMemCdRWm_SetCardStat(CARDFileInfo* file) {
    CARDStat stat;
    mDoMemCd_getCardStatus(file->fileNo, &stat);
    stat.iconAddr = 0;
    stat.commentAddr = 0x2400;
    CARDSetBannerFormat(&stat, CARD_STAT_BANNER_C8);
    CARDSetIconAnim(&stat, CARD_STAT_ANIM_BOUNCE);
    CARDSetIconFormat(&stat, 0, CARD_STAT_ICON_C8);
    CARDSetIconFormat(&stat, 1, CARD_STAT_ICON_C8);
    CARDSetIconFormat(&stat, 2, CARD_STAT_ICON_C8);
    CARDSetIconFormat(&stat, 3, CARD_STAT_ICON_C8);
    CARDSetIconFormat(&stat, 4, CARD_STAT_ICON_C8);
    CARDSetIconFormat(&stat, 5, CARD_STAT_ICON_NONE);
    CARDSetIconFormat(&stat, 6, CARD_STAT_ICON_NONE);
    CARDSetIconFormat(&stat, 7, CARD_STAT_ICON_NONE);
    CARDSetIconSpeed(&stat, 0, CARD_STAT_SPEED_FAST);
    CARDSetIconSpeed(&stat, 1, CARD_STAT_SPEED_FAST);
    CARDSetIconSpeed(&stat, 2, CARD_STAT_SPEED_FAST);
    CARDSetIconSpeed(&stat, 3, CARD_STAT_SPEED_FAST);
    CARDSetIconSpeed(&stat, 4, CARD_STAT_SPEED_FAST);
    CARDSetIconSpeed(&stat, 5, CARD_STAT_SPEED_END);
    CARDSetIconSpeed(&stat, 6, CARD_STAT_SPEED_END);
    CARDSetIconSpeed(&stat, 7, CARD_STAT_SPEED_END);
    mDoMemCd_setCardStatus(file->fileNo, &stat);
}

/* 80017B4C-80017C74 01248C 0128+00 2/2 0/0 0/0 .text mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo
 */
static BOOL mDoMemCdRWm_CheckCardStat(CARDFileInfo* file) {
    CARDStat stat;
    mDoMemCd_getCardStatus(file->fileNo, &stat);
    if (stat.iconAddr != 0 || stat.commentAddr != 0x2400
        || CARDGetBannerFormat(&stat) != CARD_STAT_BANNER_C8
        || CARDGetIconAnim(&stat) != CARD_STAT_ANIM_BOUNCE
        || CARDGetIconFormat(&stat, 0) != CARD_STAT_ICON_C8
        || CARDGetIconFormat(&stat, 1) != CARD_STAT_ICON_C8
        || CARDGetIconFormat(&stat, 2) != CARD_STAT_ICON_C8
        || CARDGetIconFormat(&stat, 3) != CARD_STAT_ICON_C8
        || CARDGetIconFormat(&stat, 4) != CARD_STAT_ICON_C8
        || CARDGetIconFormat(&stat, 5) != CARD_STAT_ICON_NONE
        || CARDGetIconFormat(&stat, 6) != CARD_STAT_ICON_NONE
        || CARDGetIconFormat(&stat, 7) != CARD_STAT_ICON_NONE
        || CARDGetIconSpeed(&stat, 0) != CARD_STAT_SPEED_FAST
        || CARDGetIconSpeed(&stat, 1) != CARD_STAT_SPEED_FAST
        || CARDGetIconSpeed(&stat, 2) != CARD_STAT_SPEED_FAST
        || CARDGetIconSpeed(&stat, 3) != CARD_STAT_SPEED_FAST
        || CARDGetIconSpeed(&stat, 4) != CARD_STAT_SPEED_FAST
        || CARDGetIconSpeed(&stat, 5) != CARD_STAT_SPEED_END
        || CARDGetIconSpeed(&stat, 6) != CARD_STAT_SPEED_END
        || CARDGetIconSpeed(&stat, 7) != CARD_STAT_SPEED_END)
    {
        return FALSE;
    }
    return TRUE;
}

/* 80017C74-80017CB4 0125B4 0040+00 1/1 0/0 0/0 .text            mDoMemCdRWm_CalcCheckSum__FPvUl */
static u32 mDoMemCdRWm_CalcCheckSum(void* data, u32 size) {
    u16 high;
    u16 low;

    low = 0;
    high = 0;
    
    u16* d = (u16*)data;
    for (int i = 0; i < size / 2; i++) {    
        high += *d;
        low += ~*d;
        d++;
    }

    return high << 16 | low;
}

/* 80017CB4-80017CEC 0125F4 0038+00 2/2 0/0 0/0 .text mDoMemCdRWm_CalcCheckSumGameData__FPvUl */
static u64 mDoMemCdRWm_CalcCheckSumGameData(void* data, u32 size) {
    u32 high;
    u32 low;

    low = 0;
    high = 0;

    u8* d = (u8*)data;
    for (int i = 0; i < size; i++) {
        high += *d;
        low += ~*d;
        d++;
    }

    return (u64)high << 32 | low;
}

/* 80017CEC-80017D38 01262C 004C+00 1/1 4/4 0/0 .text mDoMemCdRWm_TestCheckSumGameData__FPv */
BOOL mDoMemCdRWm_TestCheckSumGameData(void* data) {
    u64 checksum = mDoMemCdRWm_CalcCheckSumGameData(data, 0xA8C);
    return checksum == *(u64*)((u8*)data + 0xA8C);
}

/* 80017D38-80017D7C 012678 0044+00 0/0 4/4 0/0 .text mDoMemCdRWm_SetCheckSumGameData__FPUcUc */
void mDoMemCdRWm_SetCheckSumGameData(u8* data, u8 dataNum) {
    u8* file_ptr = data + (dataNum * QUEST_LOG_SIZE);

    *(u64*)(file_ptr + 0xA8C) = mDoMemCdRWm_CalcCheckSumGameData(file_ptr, 0xA8C);
}

/* 80374408-80374408 000A68 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
