/**
 * m_Do_MemCardRWmng.cpp
 * Memcard Saving and Checksum
 */

#include "m_Do/m_Do_MemCardRWmng.h"
#include "MSL_C/MSL_Common/Src/printf.h"
#include "MSL_C/MSL_Common/Src/string.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_MemCard.h"

//
// Forward References:
//

extern "C" void mDoMemCdRWm_Store__FP12CARDFileInfoPvUl();
extern "C" void mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl();
extern "C" static void mDoMemCdRWm_BuildHeader__FP22mDoMemCdRWm_HeaderData();
extern "C" static void mDoMemCdRWm_SetCardStat__FP12CARDFileInfo();
extern "C" static void mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo();
extern "C" static void mDoMemCdRWm_CalcCheckSum__FPvUl();
extern "C" static void mDoMemCdRWm_CalcCheckSumGameData__FPvUl();
extern "C" void mDoMemCdRWm_TestCheckSumGameData__FPv();
extern "C" void mDoMemCdRWm_SetCheckSumGameData__FPUcUc();
extern "C" extern char const* const m_Do_m_Do_MemCardRWmng__stringBase0;

//
// External References:
//

extern "C" void _savegpr_20();
extern "C" void _savegpr_28();
extern "C" void _restgpr_20();
extern "C" void _restgpr_28();

//
// Declarations:
//

/* ############################################################################################## */
/* 803ECF40-803F0F40 019C60 4000+00 2/2 0/0 0/0 .bss             sTmpBuf */
static u8 sTmpBuf[0x4000];

/* 80017498-8001769C 011DD8 0204+00 0/0 1/1 0/0 .text mDoMemCdRWm_Store__FP12CARDFileInfoPvUl */
#ifdef NONMATCHING
s32 mDoMemCdRWm_Store(CARDFileInfo* file, void* data, u32 length) {
    mDoMemCdRWm_BuildHeader((mDoMemCdRWm_HeaderData*)sTmpBuf);

    s32 card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf), 0);
    if (card_state != CARD_ERROR_READY) {
        if (!mDoMemCdRWm_CheckCardStat(file)) {
            memset(sTmpBuf, 0, sizeof(sTmpBuf));

            card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000);
            if (card_state == CARD_ERROR_READY) {
                return;
            }

            card_state = CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000);
            if (card_state == CARD_ERROR_READY) {
                return;
            }
        }

        memset(sTmpBuf, 0, sizeof(sTmpBuf));
        *(int*)(sTmpBuf + 4) = 6;
        memcpy(sTmpBuf + 8, data, length);
        *(int*)(sTmpBuf) = 0;
        u32 checksum = mDoMemCdRWm_CalcCheckSum(sTmpBuf, 0x1FFC);
        *(u32*)(sTmpBuf + 0x1FFC) = checksum;

        if (CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000) == CARD_ERROR_READY &&
            CARDRead(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x4000) == CARD_ERROR_READY) {
            if (checksum == mDoMemCdRWm_CalcCheckSum(sTmpBuf, 0x1FFC)) {
                if (CARDWrite(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000) == CARD_ERROR_READY &&
                    CARDRead(file, sTmpBuf, sizeof(sTmpBuf) / 2, 0x6000) == CARD_ERROR_READY) {
                    if (checksum == mDoMemCdRWm_CalcCheckSum(sTmpBuf, 0x1FFC)) {
                        mDoMemCdRWm_SetCardStat(file);
                    }
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 mDoMemCdRWm_Store(CARDFileInfo* param_0, void* param_1, u32 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_MemCardRWmng/mDoMemCdRWm_Store__FP12CARDFileInfoPvUl.s"
}
#pragma pop
#endif

/* 8001769C-8001787C 011FDC 01E0+00 0/0 1/1 0/0 .text mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 mDoMemCdRWm_Restore(CARDFileInfo* param_0, void* param_1, u32 param_2) {
    nofralloc
#include "asm/m_Do/m_Do_MemCardRWmng/mDoMemCdRWm_Restore__FP12CARDFileInfoPvUl.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void mDoMemCdRWm_SetCardStat(CARDFileInfo* param_0) {
    nofralloc
#include "asm/m_Do/m_Do_MemCardRWmng/mDoMemCdRWm_SetCardStat__FP12CARDFileInfo.s"
}
#pragma pop

/* 80017B4C-80017C74 01248C 0128+00 2/2 0/0 0/0 .text mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm BOOL mDoMemCdRWm_CheckCardStat(CARDFileInfo* param_0) {
    nofralloc
#include "asm/m_Do/m_Do_MemCardRWmng/mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo.s"
}
#pragma pop

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
    u8* file_ptr = data + (dataNum * 0xA94);

    *(u64*)(file_ptr + 0xA8C) = mDoMemCdRWm_CalcCheckSumGameData(file_ptr, 0xA8C);
}

/* 80374408-80374408 000A68 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
