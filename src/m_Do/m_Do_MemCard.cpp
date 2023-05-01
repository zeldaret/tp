/**
 * m_Do_MemCard.cpp
 * Memory Card Control
 */

#include "m_Do/m_Do_MemCard.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JGadget/binary.h"
#include "MSL_C/string.h"
#include "dol2asm.h"
#include "dolphin/card/card.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_Reset.h"

/* 8001672C-80016730 01106C 0004+00 1/1 0/0 0/0 .text            __ct__15mDoMemCd_Ctrl_cFv */
mDoMemCd_Ctrl_c::mDoMemCd_Ctrl_c() {}

/* ############################################################################################## */
/* 803DFC20-803E0C20 00C940 1000+00 1/1 0/0 0/0 .bss             MemCardStack */
static u8 MemCardStack[4096];

/* 803E0C20-803E0F40 00D940 0318+08 1/1 0/0 0/0 .bss             MemCardThread */
static OSThread MemCardThread;

/* 80016730-800167D0 011070 00A0+00 0/0 1/1 0/0 .text            ThdInit__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::ThdInit() {
    CARDInit();
    mCopyToPos = 0;
    mProbeStat = 2;
    mCardState = 0;
    mCardCommand = CARD_NO_COMMAND;
    mChannel = 0;

    OSInitMutex(&mMutex);
    OSInitCond(&mCond);

    int priority = OSGetThreadPriority(OSGetCurrentThread());
    OSCreateThread(&MemCardThread, mDoMemCd_main, NULL, MemCardStack + sizeof(MemCardStack),
                   sizeof(MemCardStack), priority + 1, 1);
    OSResumeThread(&MemCardThread);
}

/* 800167D0-80016894 011110 00C4+00 1/1 0/0 0/0 .text            main__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::main() {
    do {
        OSLockMutex(&mMutex);
        while (mCardCommand == CARD_NO_COMMAND) {
            OSWaitCond(&mCond, &mMutex);
        }
        OSUnlockMutex(&mMutex);

        switch (mCardCommand) {
        case CARD_RESTORE:
            restore();
            break;
        case CARD_STORE:
            store();
            break;
        case CARD_FORMAT:
            format();
            break;
        case CARD_ATTACH:
            attach();
            break;
        case CARD_DETACH:
            detach();
            break;
        }

        OSLockMutex(&mMutex);
        mCardCommand = CARD_NO_COMMAND;
        OSUnlockMutex(&mMutex);
    } while (true);
}

/* 80016894-800169B4 0111D4 0120+00 0/0 1/1 0/0 .text            update__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::update() {
    if (mDoRst::isReset()) {
        OSLockMutex(&mMutex);
        mCardCommand = CARD_DETACH;
        mProbeStat = 3;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    } else if (getStatus(0) != 14) {
        if (CARDProbe(0) && getStatus(0) == 0) {
            OSLockMutex(&mMutex);
            mProbeStat = 0;
            mCardState = 13;
            mCardCommand = CARD_ATTACH;
            OSUnlockMutex(&mMutex);
            OSSignalCond(&mCond);
        } else if (!CARDProbe(0) && getStatus(0) != 0) {
            OSLockMutex(&mMutex);
            mProbeStat = 1;
            mCardState = 13;
            mCardCommand = CARD_DETACH;
            OSUnlockMutex(&mMutex);
            OSSignalCond(&mCond);
        }
    }
}

/* 800169B4-80016A0C 0112F4 0058+00 0/0 2/2 0/0 .text            load__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::load() {
    if (OSTryLockMutex(&mMutex)) {
        field_0x1fc8 = 0;
        mCardCommand = CARD_RESTORE;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016A0C-80016AB0 01134C 00A4+00 1/1 0/0 0/0 .text            restore__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::restore() {
    CARDFileInfo file;
    field_0x1fc8 = 0;

    s32 card_state = CARDOpen(mChannel, "gczelda2", &file);
    if (card_state == CARD_RESULT_READY) {
        if (!mDoMemCdRWm_Restore(&file, this, sizeof(mData))) {
            mCardState = 3;
        } else {
            setCardState(card_state);
        }
        CARDClose(&file);
    } else {
        setCardState(card_state);
    }

    field_0x1fc8 = 1;
}

/* 80016AB0-80016B58 0113F0 00A8+00 0/0 2/2 0/0 .text            LoadSync__15mDoMemCd_Ctrl_cFPvUlUl
 */
s32 mDoMemCd_Ctrl_c::LoadSync(void* buffer, u32 size, u32 index) {
    int ret = 0;

    if (field_0x1fc8 == 0) {
        return 0;
    }

    if (OSTryLockMutex(&mMutex)) {
        if (mCardState == 3) {
            memcpy(buffer, &mData[index], size);
            mCardState = 1;
            ret = 1;
        } else {
            mCardState = 2;
            ret = 2;
        }
        OSUnlockMutex(&mMutex);
    }

    return ret;
}

/* 80016B58-80016BD4 011498 007C+00 0/0 2/2 0/0 .text            save__15mDoMemCd_Ctrl_cFPvUlUl */
void mDoMemCd_Ctrl_c::save(void* buffer, u32 size, u32 index) {
    if (OSTryLockMutex(&mMutex)) {
        memcpy(&mData[index], buffer, size);
        field_0x1fc8 = 0;
        mCardCommand = CARD_STORE;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016BD4-80016CE0 011514 010C+00 1/1 0/0 0/0 .text            store__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::store() {
    CARDFileInfo file;
    s32 card_state;
    field_0x1fc8 = 0;

    if (mCardState == 2) {
        card_state = CARDCreate(mChannel, "gczelda2", 0x8000, &file);
        if (card_state == CARD_RESULT_READY || card_state == CARD_RESULT_EXIST) {
            mCardState = 1;
        } else {
            setCardState(card_state);
        }
    }

    if (mCardState == 1) {
        card_state = CARDOpen(mChannel, "gczelda2", &file);
        if (card_state == CARD_RESULT_READY) {
            card_state = mDoMemCdRWm_Store(&file, this, sizeof(mData));
            if (card_state != CARD_RESULT_READY) {
                setCardState(card_state);
            } else {
                mCardState = 4;
            }
            CARDClose(&file);
        } else {
            setCardState(card_state);
        }
    } else {
        setCardState(card_state);
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
        if (mCardState == 4) {
            mCardState = 1;
            ret = 1;
        } else if (mCardState == 1) {
            ret = 0;
        } else {
            ret = 2;
        }
        OSUnlockMutex(&mMutex);
    }

    return ret;
}

/* 80016D74-80016E58 0116B4 00E4+00 2/1 2/2 0/0 .text            getStatus__15mDoMemCd_Ctrl_cFUl */
u32 mDoMemCd_Ctrl_c::getStatus(u32) {
    u32 status;
    if (OSTryLockMutex(&mMutex)) {
        switch (mCardState) {
        case 1:
            status = 2;
            break;
        case 2:
            status = 1;
            break;
        case 3:
            status = 3;
            break;
        case 4:
            status = 4;
            break;
        case 5:
            status = 5;
            break;
        case 0:
            status = 0;
            break;
        case 6:
            status = 7;
            break;
        case 7:
            status = 6;
            break;
        case 8:
            status = 11;
            break;
        case 9:
            status = 12;
            break;
        case 10:
            status = 9;
            break;
        case 11:
            status = 10;
            break;
        case 12:
            status = 8;
            break;
        case 13:
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
        mCardCommand = CARD_FORMAT;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80016EA8-80016F2C 0117E8 0084+00 1/1 0/0 0/0 .text            format__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::format() {
    field_0x1fc8 = 0;

    s32 card_state = CARDFormat(mChannel);
    if (OSTryLockMutex(&mMutex)) {
        if (card_state == CARD_RESULT_READY) {
            mCardState = 5;
        } else {
            setCardState(card_state);
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
        if (mCardState != 13) {
            if (mCardState == 5) {
                mCardState = 2;
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
    s32 sect_size;

    s32 card_state = CARDProbeEx(mChannel, &mem_size, &sect_size);
    if (card_state == CARD_RESULT_NOCARD) {
        mCardState = 0;
    } else if (card_state == CARD_RESULT_FATAL_ERROR) {
        mCardState = 12;
    } else if (card_state == CARD_RESULT_WRONGDEVICE) {
        mCardState = 10;
    } else if (sect_size != 0x2000) {
        mCardState = 11;
    } else {
        if (mount()) {
            if (loadfile()) {
                mCardState = 1;
            } else {
                switch (checkspace()) {
                case 0:
                    mCardState = 2;
                    break;
                case 1:
                    mCardState = 8;
                    break;
                case 2:
                    mCardState = 9;
                    break;
                case 3:
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
        mCardState = 13;
        mCardCommand = CARD_ATTACH;
        OSUnlockMutex(&mMutex);
        OSSignalCond(&mCond);
    }
}

/* 80017110-80017148 011A50 0038+00 1/1 0/0 0/0 .text            detach__15mDoMemCd_Ctrl_cFv */
void mDoMemCd_Ctrl_c::detach() {
    CARDUnmount(mChannel);
    mCardState = 0;
}

/* ############################################################################################## */

/* 803E0F40-803EAF40 00DC60 A000+00 1/1 0/0 0/0 .bss             MemCardWorkArea0 */
static u8 MemCardWorkArea0[5 * 8 * 1024] ALIGN_DECL(32);

/* 80017148-80017274 011A88 012C+00 2/1 0/0 0/0 .text            mount__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::mount() {
    s32 result = CARDMount(mChannel, MemCardWorkArea0, 0);

    switch (result) {
    case CARD_RESULT_IOERROR:
    case CARD_RESULT_FATAL_ERROR:
        mCardState = 12;
        return 0;
    case CARD_RESULT_NOCARD:
        mCardState = 0;
        return 0;
    case CARD_RESULT_BROKEN:
    case CARD_RESULT_READY:
        switch (CARDCheck(mChannel)) {
        case CARD_RESULT_READY:
            return 1;
        case CARD_RESULT_BROKEN:
            mCardState = 7;
            return 0;
        case CARD_RESULT_IOERROR:
            mCardState = 12;
            return 0;
        case CARD_RESULT_NOCARD:
            mCardState = 0;
            return 0;
        case CARD_RESULT_ENCODING:
            mCardState = 6;
            return 0;
        }
        break;
    case CARD_RESULT_ENCODING:
        mCardState = 6;
        return 0;
    }

    return 0;
}

/* 80017274-800172D4 011BB4 0060+00 1/1 0/0 0/0 .text            loadfile__15mDoMemCd_Ctrl_cFv */
s32 mDoMemCd_Ctrl_c::loadfile() {
    CARDFileInfo file;

    s32 card_state = CARDOpen(mChannel, "gczelda2", &file);
    if (card_state == CARD_RESULT_READY) {
        CARDClose(&file);
        return CARD_RESULT_UNLOCKED;
    } else {
        setCardState(card_state);
        return CARD_RESULT_READY;
    }
}

/* 800172D4-80017360 011C14 008C+00 1/1 0/0 0/0 .text            checkspace__15mDoMemCd_Ctrl_cFv */
// 
s32 mDoMemCd_Ctrl_c::checkspace() {
    s32 bytesNotUsed, filesNotUsed;
    s32 result = CARDFreeBlocks(mChannel,&bytesNotUsed,&filesNotUsed);

    if (result != 0) {
        setCardState(result);
        return 3;  
    }

    if (bytesNotUsed < 0x8000) {
        return 1;
    }

    if (filesNotUsed < 1) {
        return 2;
    }
    
    return 0;
}

/* 80017360-8001741C 011CA0 00BC+00 5/5 0/0 0/0 .text            setCardState__15mDoMemCd_Ctrl_cFl
 */
void mDoMemCd_Ctrl_c::setCardState(s32 param_0) {
    switch (param_0) {
    case CARD_RESULT_IOERROR:
    case CARD_RESULT_FATAL_ERROR:
        mCardState = 12;
        break;
    case CARD_RESULT_NOCARD:
        mCardState = 0;
        break;
    case CARD_RESULT_BROKEN:
    case CARD_RESULT_READY:
        if (CARDCheck(mChannel) != 0) {
            mCardState = 7;
        }
        break;
    case CARD_RESULT_ENCODING:
        mCardState = 6;
        break;
    case CARD_RESULT_NOFILE:
        mCardState = 2;
        break;
    }
}

/* ############################################################################################## */
/* 803EAF40-803ECF40 017C60 2000+00 2/2 27/27 0/0 .bss             g_mDoMemCd_control */
mDoMemCd_Ctrl_c g_mDoMemCd_control;

/* 8001741C-80017470 011D5C 0054+00 1/1 0/0 0/0 .text            mDoMemCd_main__FPv */
static int mDoMemCd_main(void*) {
    { JKRThread thread(OSGetCurrentThread(), 0); }

    mDoExt_getAssertHeap()->becomeCurrentHeap();

    g_mDoMemCd_control.main();
    return 0;
}
