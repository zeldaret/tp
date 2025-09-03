/**
 * m_Do_MemCard.cpp
 * Memory Card Control
 */

#include <dolphin/card.h>
#include "m_Do/m_Do_MemCard.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_MemCardRWmng.h"
#include "m_Do/m_Do_Reset.h"

#define SLOT_A 0

#define CHECKSPACE_RESULT_READY    0
#define CHECKSPACE_RESULT_INSSPACE 1
#define CHECKSPACE_RESULT_NOENT    2
#define CHECKSPACE_RESULT_ERROR    3

/* 8001672C-80016730 01106C 0004+00 1/1 0/0 0/0 .text            __ct__15mDoMemCd_Ctrl_cFv */
mDoMemCd_Ctrl_c::mDoMemCd_Ctrl_c() {}

/* 803DFC20-803E0C20 00C940 1000+00 1/1 0/0 0/0 .bss             MemCardStack */
static u8 MemCardStack[0x1000];

/* 803E0C20-803E0F40 00D940 0318+08 1/1 0/0 0/0 .bss             MemCardThread */
static OSThread MemCardThread;

/* 80016730-800167D0 011070 00A0+00 0/0 1/1 0/0 .text            ThdInit__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::ThdInit() {
    CARDInit();
    mCopyToPos = 0;
    mProbeStat = 2;
    mCardState = CARD_STATE_NO_CARD_e;
    mCardCommand = COMM_NONE_e;
    mChannel = SLOT_A;

    OSInitMutex(&mMutex);
    OSInitCond(&mCond);

    int priority = OSGetThreadPriority(OSGetCurrentThread());
    OSCreateThread(&MemCardThread, (void*(*)(void*))mDoMemCd_main, NULL, MemCardStack + sizeof(MemCardStack),
                   sizeof(MemCardStack), priority + 1, 1);
    OSResumeThread(&MemCardThread);

    // "Memory Card Thread Init\n"
    OS_REPORT("メモリーカードスレッド起動\n");
}

/* 800167D0-80016894 011110 00C4+00 1/1 0/0 0/0 .text            main__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::main() {
    do {
        OSLockMutex(&mMutex);
        while (mCardCommand == COMM_NONE_e) {
            OSWaitCond(&mCond, &mMutex);
        }
        OSUnlockMutex(&mMutex);

        switch (mCardCommand) {
        case COMM_RESTORE_e:
            restore();
            break;
        case COMM_STORE_e:
            store();
            break;
        case COMM_FORMAT_e:
            format();
            break;
        case COMM_ATTACH_e:
            attach();
            break;
        case COMM_DETACH_e:
            detach();
            break;
        }

        OSLockMutex(&mMutex);
        mCardCommand = COMM_NONE_e;
        OSUnlockMutex(&mMutex);
    } while (true);
}

/* 80016894-800169B4 0111D4 0120+00 0/0 1/1 0/0 .text            update__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::update() {
    if (mDoRst::isReset()) {
        OSLockMutex(&mMutex);
        mCardCommand = COMM_DETACH_e;
        mProbeStat = 3;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    } else if (getStatus(0) != 14) {
        if (CARDProbe(SLOT_A) && getStatus(0) == 0) {
            OSLockMutex(&mMutex);
            mProbeStat = 0;
            mCardState = CARD_STATE_13_e;
            mCardCommand = COMM_ATTACH_e;
            OSUnlockMutex(&mMutex);
            OSSignalCond(&mCond);
        } else if (!CARDProbe(SLOT_A) && getStatus(0) != 0) {
            OSLockMutex(&mMutex);
            mProbeStat = 1;
            mCardState = CARD_STATE_13_e;
            mCardCommand = COMM_DETACH_e;
            OSUnlockMutex(&mMutex);
            OSSignalCond(&mCond);
        }
    }
}

/* 800169B4-80016A0C 0112F4 0058+00 0/0 2/2 0/0 .text            load__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::load() {
    if (OSTryLockMutex(&mMutex)) {
        field_0x1fc8 = 0;
        mCardCommand = COMM_RESTORE_e;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016A0C-80016AB0 01134C 00A4+00 1/1 0/0 0/0 .text            restore__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::restore() {
    CARDFileInfo file;
    field_0x1fc8 = 0;

    s32 ret = CARDOpen(mChannel, "gczelda2", &file);
    OS_REPORT("\x1b[43;30mCret=%d\n\x1b[m", ret);
    if (ret == CARD_RESULT_READY) {
        s32 ret2 = mDoMemCdRWm_Restore(&file, this, sizeof(mData));
        OS_REPORT("\x1b[43;30mret2=%d\n\x1b[m", ret2);
        if (ret2 == CARD_RESULT_READY) {
            mCardState = CARD_STATE_READ_e;
        } else {
            setCardState(ret);
        }
        CARDClose(&file);
    } else {
        setCardState(ret);
    }

    field_0x1fc8 = 1;
}

/* 80016AB0-80016B58 0113F0 00A8+00 0/0 2/2 0/0 .text            LoadSync__15mDoMemCd_Ctrl_cFPvUlUl
 */
s32 mDoMemCd_Ctrl_c::LoadSync(void* i_buffer, u32 i_size, u32 i_position) {
    int ret = 0;

    if (field_0x1fc8 == 0) {
        return 0;
    }

    if (OSTryLockMutex(&mMutex)) {
        if (mCardState == CARD_STATE_READ_e) {
            memcpy(i_buffer, &mData[i_position], i_size);
            mCardState = CARD_STATE_READY_e;
            ret = 1;
        } else {
            mCardState = CARD_STATE_NO_FILE_e;
            ret = 2;
        }
        OSUnlockMutex(&mMutex);
    }

    return ret;
}

/* 80016B58-80016BD4 011498 007C+00 0/0 2/2 0/0 .text            save__15mDoMemCd_Ctrl_cFPvUlUl */
void mDoMemCd_Ctrl_c::save(void* i_buffer, u32 i_size, u32 i_position) {
    if (OSTryLockMutex(&mMutex)) {
        memcpy(&mData[i_position], i_buffer, i_size);
        field_0x1fc8 = 0;
        mCardCommand = COMM_STORE_e;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016BD4-80016CE0 011514 010C+00 1/1 0/0 0/0 .text            store__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::store() {
    CARDFileInfo file;
    s32 ret;
    field_0x1fc8 = 0;

    if (mCardState == CARD_STATE_NO_FILE_e) {
        ret = CARDCreate(mChannel, "gczelda2", SAVEDATA_FILE_SIZE, &file);
        if (ret == CARD_RESULT_READY || ret == CARD_RESULT_EXIST) {
            mCardState = CARD_STATE_READY_e;
        } else {
            setCardState(ret);
        }
    }

    if (mCardState == CARD_STATE_READY_e) {
        ret = CARDOpen(mChannel, "gczelda2", &file);
        if (ret == CARD_RESULT_READY) {
            ret = mDoMemCdRWm_Store(&file, this, sizeof(mData));
            if (ret != CARD_RESULT_READY) {
                setCardState(ret);
                OS_REPORT("CARD Write ERR ret:%d\n", ret);
            } else {
                mCardState = CARD_STATE_WRITE_e;
                OS_REPORT("CARD Write OK ret:%d stat:%d\n", ret, mCardState);
            }
            CARDClose(&file);
        } else {
            setCardState(ret);
        }
    } else {
        setCardState(ret);
    }

    field_0x1fc8 = 1;
}

/* 80016CE0-80016D74 011620 0094+00 0/0 6/6 0/0 .text            SaveSync__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::SaveSync() {
    int ret = 0;

    if (field_0x1fc8 == 0) {
        return 0;
    }

    if (OSTryLockMutex(&mMutex)) {
        if (mCardState == CARD_STATE_WRITE_e) {
            mCardState = CARD_STATE_READY_e;
            ret = 1;
        } else if (mCardState == CARD_STATE_READY_e) {
            ret = 0;
        } else {
            ret = 2;
        }

        OS_REPORT("CARD Save Sync ret:%d stat:%d\n", ret, mCardState);
        OSUnlockMutex(&mMutex);
    }

    return ret;
}

/* 80016D74-80016E58 0116B4 00E4+00 2/1 2/2 0/0 .text            getStatus__15mDoMemCd_Ctrl_cFUl */
u32 mDoMemCd_Ctrl_c::getStatus(u32) {
    u32 status;
    if (OSTryLockMutex(&mMutex)) {
        switch (mCardState) {
        case CARD_STATE_READY_e:
            status = 2;
            break;
        case CARD_STATE_NO_FILE_e:
            status = 1;
            break;
        case CARD_STATE_READ_e:
            status = 3;
            break;
        case CARD_STATE_WRITE_e:
            status = 4;
            break;
        case CARD_STATE_FORMAT_e:
            status = 5;
            break;
        case CARD_STATE_NO_CARD_e:
            status = 0;
            break;
        case CARD_STATE_WRONG_ENCODING_e:
            status = 7;
            break;
        case CARD_STATE_BROKEN_e:
            status = 6;
            break;
        case CARD_STATE_INSSPACE_e:
            status = 11;
            break;
        case CARD_STATE_NOENT_e:
            status = 12;
            break;
        case CARD_STATE_WRONG_DEVICE_e:
            status = 9;
            break;
        case CARD_STATE_WRONG_SECTORSIZE_e:
            status = 10;
            break;
        case CARD_STATE_FATAL_ERROR_e:
            status = 8;
            break;
        case CARD_STATE_13_e:
            status = 14;
            break;
        }

        OSUnlockMutex(&mMutex);
        return status;
    }

    return 14;
}

/* 80016E58-80016EA8 011798 0050+00 0/0 2/2 0/0 .text            command_format__15mDoMemCd_Ctrl_cFv
 */
void mDoMemCd_Ctrl_c::command_format() {
    if (OSTryLockMutex(&mMutex)) {
        mCardCommand = COMM_FORMAT_e;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016EA8-80016F2C 0117E8 0084+00 1/1 0/0 0/0 .text            format__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::format() {
    field_0x1fc8 = 0;

    s32 ret = CARDFormat(mChannel);
    if (OSTryLockMutex(&mMutex)) {
        if (ret == CARD_RESULT_READY) {
            mCardState = CARD_STATE_FORMAT_e;
        } else {
            setCardState(ret);
        }

        field_0x1fc8 = 1;
        OSUnlockMutex(&mMutex);
    }
}

/* 80016F2C-80016FB8 01186C 008C+00 0/0 2/2 0/0 .text            FormatSync__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::FormatSync() {
    int ret = 0;

    if (field_0x1fc8 == 0) {
        return 0;
    }

    if (OSTryLockMutex(&mMutex)) {
        if (mCardState != CARD_STATE_13_e) {
            if (mCardState == CARD_STATE_FORMAT_e) {
                mCardState = CARD_STATE_NO_FILE_e;
                ret = 1;
            } else {
                ret = 2;
            }
        }
        OSUnlockMutex(&mMutex);
    }

    return ret;
}

/* 80016FB8-800170B8 0118F8 0100+00 1/1 0/0 0/0 .text            attach__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::attach() {
    s32 mem_size;
    s32 sector_size;

    s32 ret = CARDProbeEx(mChannel, &mem_size, &sector_size);
    if (ret == CARD_RESULT_NOCARD) {
        mCardState = CARD_STATE_NO_CARD_e;
    } else if (ret == CARD_RESULT_FATAL_ERROR) {
        mCardState = CARD_STATE_FATAL_ERROR_e;
    } else if (ret == CARD_RESULT_WRONGDEVICE) {
        mCardState = CARD_STATE_WRONG_DEVICE_e;
    } else if (sector_size != SECTOR_SIZE) {
        mCardState = CARD_STATE_WRONG_SECTORSIZE_e;
    } else {
        if (mount()) {
            if (loadfile()) {
                mCardState = CARD_STATE_READY_e;
            } else {
                switch (checkspace()) {
                case CHECKSPACE_RESULT_READY:
                    mCardState = CARD_STATE_NO_FILE_e;
                    break;
                case CHECKSPACE_RESULT_INSSPACE:
                    mCardState = CARD_STATE_INSSPACE_e;
                    break;
                case CHECKSPACE_RESULT_NOENT:
                    mCardState = CARD_STATE_NOENT_e;
                    break;
                case CHECKSPACE_RESULT_ERROR:
                    break;
                }
            }
        }
    }
}

/* 800170B8-80017110 0119F8 0058+00 0/0 1/1 0/0 .text            command_attach__15mDoMemCd_Ctrl_cFv
 */
void mDoMemCd_Ctrl_c::command_attach() {
    if (OSTryLockMutex(&mMutex)) {
        mCardState = CARD_STATE_13_e;
        mCardCommand = COMM_ATTACH_e;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80017110-80017148 011A50 0038+00 1/1 0/0 0/0 .text            detach__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::detach() {
    CARDUnmount(mChannel);
    mCardState = CARD_STATE_NO_CARD_e;
}

/* 803E0F40-803EAF40 00DC60 A000+00 1/1 0/0 0/0 .bss             MemCardWorkArea0 */
static u8 MemCardWorkArea0[CARD_WORKAREA_SIZE] ALIGN_DECL(32);

/* 80017148-80017274 011A88 012C+00 2/1 0/0 0/0 .text            mount__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::mount() {
    s32 result = CARDMount(mChannel, MemCardWorkArea0, NULL);

    switch (result) {
    case CARD_RESULT_IOERROR:
    case CARD_RESULT_FATAL_ERROR:
        mCardState = CARD_STATE_FATAL_ERROR_e;
        return FALSE;
    case CARD_RESULT_NOCARD:
        mCardState = CARD_STATE_NO_CARD_e;
        return FALSE;
    case CARD_RESULT_BROKEN:
    case CARD_RESULT_READY:
        switch (CARDCheck(mChannel)) {
        case CARD_RESULT_READY:
            return TRUE;
        case CARD_RESULT_BROKEN:
            mCardState = CARD_STATE_BROKEN_e;
            return FALSE;
        case CARD_RESULT_IOERROR:
            mCardState = CARD_STATE_FATAL_ERROR_e;
            return FALSE;
        case CARD_RESULT_NOCARD:
            mCardState = CARD_STATE_NO_CARD_e;
            return FALSE;
        case CARD_RESULT_ENCODING:
            mCardState = CARD_STATE_WRONG_ENCODING_e;
            return FALSE;
        }
        break;
    case CARD_RESULT_ENCODING:
        mCardState = CARD_STATE_WRONG_ENCODING_e;
        return FALSE;
    }

    return FALSE;
}

/* 80017274-800172D4 011BB4 0060+00 1/1 0/0 0/0 .text            loadfile__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::loadfile() {
    CARDFileInfo file;

    s32 ret = CARDOpen(mChannel, "gczelda2", &file);
    if (ret == CARD_RESULT_READY) {
        CARDClose(&file);
        return TRUE;
    } else {
        setCardState(ret);
        return FALSE;
    }
}

/* 800172D4-80017360 011C14 008C+00 1/1 0/0 0/0 .text            checkspace__15mDoMemCd_Ctrl_cFv */
// 
s32 mDoMemCd_Ctrl_c::checkspace() {
    s32 bytesNotUsed, filesNotUsed;
    s32 result = CARDFreeBlocks(mChannel, &bytesNotUsed, &filesNotUsed);

    if (result != CARD_RESULT_READY) {
        setCardState(result);
        return CHECKSPACE_RESULT_ERROR;  
    }

    if (bytesNotUsed < SAVEDATA_FILE_SIZE) {
        return CHECKSPACE_RESULT_INSSPACE;
    }

    if (filesNotUsed < 1) {
        return CHECKSPACE_RESULT_NOENT;
    }
    
    return CHECKSPACE_RESULT_READY;
}

/* 80017360-8001741C 011CA0 00BC+00 5/5 0/0 0/0 .text            setCardState__15mDoMemCd_Ctrl_cFl
 */
void mDoMemCd_Ctrl_c::setCardState(s32 i_result) {
    switch (i_result) {
    case CARD_RESULT_IOERROR:
    case CARD_RESULT_FATAL_ERROR:
        mCardState = CARD_STATE_FATAL_ERROR_e;
        break;
    case CARD_RESULT_NOCARD:
        mCardState = CARD_STATE_NO_CARD_e;
        break;
    case CARD_RESULT_BROKEN:
    case CARD_RESULT_READY:
        if (CARDCheck(mChannel) != CARD_RESULT_READY) {
            mCardState = CARD_STATE_BROKEN_e;
        }
        break;
    case CARD_RESULT_ENCODING:
        mCardState = CARD_STATE_WRONG_ENCODING_e;
        break;
    case CARD_RESULT_NOFILE:
        mCardState = CARD_STATE_NO_FILE_e;
        break;
    }
}

/* 803EAF40-803ECF40 017C60 2000+00 2/2 27/27 0/0 .bss             g_mDoMemCd_control */
mDoMemCd_Ctrl_c g_mDoMemCd_control;

/* 8001741C-80017470 011D5C 0054+00 1/1 0/0 0/0 .text            mDoMemCd_main__FPv */
static int mDoMemCd_main(void*) {
    { JKRThread thread(OSGetCurrentThread(), 0); }

    mDoExt_getAssertHeap()->becomeCurrentHeap();

    g_mDoMemCd_control.main();
    return 0;
}
