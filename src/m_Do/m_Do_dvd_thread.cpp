/**
 * m_Do_dvd_thread.cpp
 * DVD Thread Manager
*/

#include "m_Do/m_Do_dvd_thread.h"
#include "JSystem/JAudio2/JASDvdThread.h"
#include "JSystem/JAudio2/JASTaskThread.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "JSystem/JKernel/JKRThread.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_node.h"
#include "dol2asm.h"
#include "dolphin/dvd/dvd.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_Reset.h"

/* 800157FC-80015858 01013C 005C+00 1/1 0/1 0/0 .text            main__9mDoDvdThdFPv */
s32 mDoDvdThd::main(void* param_0) {
    { JKRThread jkrThread(OSGetCurrentThread(), 0); }
    mDoExt_getAssertHeap()->becomeCurrentHeap();
    static_cast<mDoDvdThd_param_c*>(param_0)->mainLoop();
    return 0;
}

/* 803DD940-803DDC60 00A660 0318+08 2/2 0/0 0/0 .bss             l_thread__9mDoDvdThd */
OSThread mDoDvdThd::l_thread;

/* 803DDC60-803DEC60 00A980 1000+00 0/1 0/0 0/0 .bss             l_threadStack__9mDoDvdThd */
mDoDvdThdStack mDoDvdThd::l_threadStack;

/* 803DEC60-803DECC0 00B980 0048+18 5/6 0/0 0/0 .bss             l_param__9mDoDvdThd */
mDoDvdThd_param_c mDoDvdThd::l_param;

#pragma push
#pragma force_active on
static u8 padding[0x18];
#pragma pop

/* 80015858-800158B4 010198 005C+00 0/0 1/1 0/0 .text            create__9mDoDvdThdFl */
void mDoDvdThd::create(s32 param_0) {
    OSCreateThread(&l_thread, mDoDvdThd::main, &l_param,
                   l_threadStack.stack + sizeof(l_threadStack), sizeof(l_threadStack), param_0, 1);
    OSResumeThread(&l_thread);
}

/* 800158B4-800158DC 0101F4 0028+00 0/0 1/1 0/0 .text            suspend__9mDoDvdThdFv */
void mDoDvdThd::suspend() {
    OSSuspendThread(&l_thread);
}

/* 800158DC-800158FC 01021C 0020+00 3/3 0/0 0/0 .text            my_DVDConvertPathToEntrynum__FPCc
 */
static s32 my_DVDConvertPathToEntrynum(char const* param_0) {
    return DVDConvertPathToEntrynum(param_0);
}

/* 800158FC-80015944 01023C 0048+00 5/4 0/0 0/0 .text            __dt__19mDoDvdThd_command_cFv */
mDoDvdThd_command_c::~mDoDvdThd_command_c() {}

/* 80015944-8001598C 010284 0048+00 1/1 0/0 0/0 .text            __ct__17mDoDvdThd_param_cFv */
mDoDvdThd_param_c::mDoDvdThd_param_c() {
    OSInitMessageQueue(&mMessageQueue, &mMessageQueueMessages, 1);
    OSInitMutex(&mMutext);
    cLs_Create(&mNodeList);
}

/* 8001598C-800159B4 0102CC 0028+00 2/2 0/0 0/0 .text            kick__17mDoDvdThd_param_cFv */
void mDoDvdThd_param_c::kick() {
    OSSendMessage(&mMessageQueue, NULL, OS_MESSAGE_NOBLOCK);
}

/* 800159B4-800159DC 0102F4 0028+00 1/1 0/0 0/0 .text            waitForKick__17mDoDvdThd_param_cFv
 */
s32 mDoDvdThd_param_c::waitForKick() {
    return OSReceiveMessage(&mMessageQueue, NULL, OS_MESSAGE_BLOCK);
}

/* 800159DC-800159E4 01031C 0008+00 1/1 0/0 0/0 .text getFirstCommand__17mDoDvdThd_param_cFv */
mDoDvdThd_command_c* mDoDvdThd_param_c::getFirstCommand() {
    return (mDoDvdThd_command_c*)mNodeList.mpHead;
}

/* 800159E4-80015A3C 010324 0058+00 4/4 0/0 0/0 .text
 * addition__17mDoDvdThd_param_cFP19mDoDvdThd_command_c         */
void mDoDvdThd_param_c::addition(mDoDvdThd_command_c* pCommand) {
    OSLockMutex(&mMutext);
    cLs_Addition(&mNodeList, pCommand);
    OSUnlockMutex(&mMutext);
    this->kick();
}

/* 80015A3C-80015A90 01037C 0054+00 1/1 0/0 0/0 .text
 * cut__17mDoDvdThd_param_cFP19mDoDvdThd_command_c              */
void mDoDvdThd_param_c::cut(mDoDvdThd_command_c* param_0) {
    OSLockMutex(&mMutext);
    cLs_SingleCut(param_0);
    OSUnlockMutex(&mMutext);
    this->kick();
}

/* 80015A90-80015AD8 0103D0 0048+00 1/1 0/0 0/0 .text            cb__FPv */
static void cb(void* param_0) {
    mDoDvdThd_command_c** pCmd = (mDoDvdThd_command_c**)param_0;
    s32 result = (*pCmd)->execute();
    if (result != 1) {
        OSReport_Error("mDoDvdThd_param_c::mainLoop() コマンドの実行が失敗しました。\n");
    }
}

/* 80015AD8-80015B74 010418 009C+00 1/1 0/0 0/0 .text            mainLoop__17mDoDvdThd_param_cFv */
void mDoDvdThd_param_c::mainLoop() {
    while (this->waitForKick() != 0) {
        while (mDoDvdThd_command_c* command = this->getFirstCommand()) {
            this->cut(command);
            if (SyncWidthSound) {
                JASDvd::getThreadPointer()->sendCmdMsg(cb, &command, 4);
            } else {
                cb(&command);
            }
        }
    }
}

/* 80015B74-80015BB8 0104B4 0044+00 4/4 0/0 0/0 .text            __ct__19mDoDvdThd_command_cFv */
mDoDvdThd_command_c::mDoDvdThd_command_c() {
    mIsDone = false;
    cNd_ForcedClear(this);
}

/* 80015BB8-80015C18 0104F8 0060+00 1/0 0/0 0/0 .text            __dt__20mDoDvdThd_callback_cFv */
mDoDvdThd_callback_c::~mDoDvdThd_callback_c() {}

/* 80015C18-80015C74 010558 005C+00 1/1 0/0 0/0 .text __ct__20mDoDvdThd_callback_cFPFPv_PvPv */
mDoDvdThd_callback_c::mDoDvdThd_callback_c(mDoDvdThd_callback_func pFunc, void* pData) {
    mFunction = pFunc;
    mData = pData;
    mResult = NULL;
}

/* 80015C74-80015CF0 0105B4 007C+00 0/0 3/3 0/0 .text create__20mDoDvdThd_callback_cFPFPv_PvPv */
mDoDvdThd_callback_c* mDoDvdThd_callback_c::create(mDoDvdThd_callback_func pFunc, void* pData) {
    mDoDvdThd_callback_c* callCmd =
        new (mDoExt_getCommandHeap(), -4) mDoDvdThd_callback_c(pFunc, pData);
    if (callCmd != NULL) {
        mDoDvdThd::l_param.addition(callCmd);
    }
    return callCmd;
}

/* 80015CF0-80015D44 010630 0054+00 1/0 0/0 0/0 .text            execute__20mDoDvdThd_callback_cFv
 */
s32 mDoDvdThd_callback_c::execute() {
    mResult = mFunction(mData);
    mIsDone = true;
    return mResult != NULL;
}

/* 80015D44-80015DA4 010684 0060+00 1/0 0/0 0/0 .text            __dt__24mDoDvdThd_mountArchive_cFv
 */
mDoDvdThd_mountArchive_c::~mDoDvdThd_mountArchive_c() {}

/* 80015DA4-80015E14 0106E4 0070+00 1/1 0/0 0/0 .text            __ct__24mDoDvdThd_mountArchive_cFUc
 */
mDoDvdThd_mountArchive_c::mDoDvdThd_mountArchive_c(u8 param_0) {
    mMountDirection = param_0;
    mEntryNumber = -1;
    mArchive = NULL;
    mHeap = NULL;
    if (param_0 == 0) {
        mMountDirection = sDefaultDirection;
    }
}

/* 80015E14-80015EDC 010754 00C8+00 0/0 10/10 1/1 .text
 * create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap            */
mDoDvdThd_mountArchive_c* mDoDvdThd_mountArchive_c::create(char const* pArchivePath,
                                                           u8 mountDirection, JKRHeap* pHeap) {
    mDoDvdThd_mountArchive_c* mountArcCmd =
        new (mDoExt_getCommandHeap(), -4) mDoDvdThd_mountArchive_c(mountDirection);
    if (mountArcCmd != NULL) {
        mountArcCmd->mEntryNumber = my_DVDConvertPathToEntrynum(pArchivePath);
        if (mountArcCmd->mEntryNumber == -1) {
            mountArcCmd->mIsDone = true;
            delete mountArcCmd;
            mountArcCmd = NULL;
        } else {
            mountArcCmd->mHeap = pHeap;
            mDoDvdThd::l_param.addition(mountArcCmd);
        }
    }
    return mountArcCmd;
}

/* 80015EDC-80016108 01081C 022C+00 1/0 0/0 0/0 .text execute__24mDoDvdThd_mountArchive_cFv */
s32 mDoDvdThd_mountArchive_c::execute() {
    bool isZeldaHeap = false;
    bool isGameHeap = false;
    bool isArcHeap = false;
    bool isJ2DHeap = false;
    JKRHeap* heap = mHeap != NULL ? mHeap : mDoExt_getArchiveHeap();
    JKRMemArchive* memArchive;
    while (true) {
        if (heap == mDoExt_getArchiveHeapPtr()) {
            isArcHeap = true;
        } else if (heap == mDoExt_getZeldaHeap()) {
            isZeldaHeap = true;
        } else if (heap == mDoExt_getGameHeap()) {
            isGameHeap = true;
        } else if (heap == mDoExt_getJ2dHeap()) {
            isJ2DHeap = true;
        }
        if (mMountDirection == 0) {
            memArchive =
                new (heap, 0) JKRMemArchive(mEntryNumber, JKRArchive::MOUNT_DIRECTION_HEAD);
        } else {
            memArchive =
                new (heap, -4) JKRMemArchive(mEntryNumber, JKRArchive::MOUNT_DIRECTION_TAIL);
        }
        if (memArchive != NULL && memArchive->isMounted()) {
            mArchive = memArchive;
            break;
        }
        OSReport_Error("mDoDvdThd_mountArchive_c::execute マウント失敗\n");
        if (memArchive) {
            delete memArchive;
        }
        if (!isZeldaHeap) {
            OSReport_Error("mDoDvdThd_mountArchive_c::execute ゼルダヒープで再チャレンジ！\n");
            heap = mDoExt_getZeldaHeap();
        } else if (!isArcHeap) {
            OSReport_Error("mDoDvdThd_mountArchive_c::execute アーカイブヒープで再チャレンジ！\n");
            heap = mDoExt_getArchiveHeapPtr();
        } else if (!isGameHeap) {
            OSReport_Error("mDoDvdThd_mountArchive_c::execute ゲームヒープで再チャレンジ！\n");
            heap = mDoExt_getGameHeap();
        } else if (!isJ2DHeap) {
            OSReport_Error("mDoDvdThd_mountArchive_c::execute J2Dヒープで再チャレンジ！\n");
            heap = mDoExt_getJ2dHeap();
        } else {
            OSReport_FatalError("mDoDvdThd_mountArchive_c::execute ヒープが致命的に足りません！\n");
            break;
        }
    }
    mIsDone = true;
    return mArchive != NULL;
}

/* 80016108-80016168 010A48 0060+00 1/0 0/0 0/0 .text            __dt__25mDoDvdThd_mountXArchive_cFv
 */
mDoDvdThd_mountXArchive_c::~mDoDvdThd_mountXArchive_c() {}

/* 80016168-800161E0 010AA8 0078+00 1/1 0/0 0/0 .text
 * __ct__25mDoDvdThd_mountXArchive_cFUcQ210JKRArchive10EMountMode */
mDoDvdThd_mountXArchive_c::mDoDvdThd_mountXArchive_c(u8 mountDirection, JKRArchive::EMountMode mountMode) {
    mMountDirection = mountDirection;
    mEntryNum = -1;
    mArchive = NULL;
    mMountMode = mountMode;
    mHeap = NULL;
    if (mountDirection == 0) {
        mMountDirection = sDefaultDirection;
    }
}

/* 800161E0-800162B0 010B20 00D0+00 0/0 3/3 0/0 .text
 * create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap */
mDoDvdThd_mountXArchive_c* mDoDvdThd_mountXArchive_c::create(char const* pArchivePath,
                                                             u8 mountDirection,
                                                             JKRArchive::EMountMode mountMode,
                                                             JKRHeap* pHeap) {
    mDoDvdThd_mountXArchive_c* mountXArcCmd =
        new (mDoExt_getCommandHeap(), -4) mDoDvdThd_mountXArchive_c(mountDirection, mountMode);
    if (mountXArcCmd != NULL) {
        mountXArcCmd->mEntryNum = my_DVDConvertPathToEntrynum(pArchivePath);
        if (mountXArcCmd->mEntryNum == -1) {
            mountXArcCmd->mIsDone = true;
            delete mountXArcCmd;
            mountXArcCmd = NULL;
        } else {
            mountXArcCmd->mHeap = pHeap;
            mDoDvdThd::l_param.addition(mountXArcCmd);
        }
    }
    return mountXArcCmd;
}

/* 800162B0-80016338 010BF0 0088+00 1/0 0/0 0/0 .text execute__25mDoDvdThd_mountXArchive_cFv */
s32 mDoDvdThd_mountXArchive_c::execute() {
    JKRArchive::EMountDirection mountDirection =
        mMountDirection == 0 ? JKRArchive::MOUNT_DIRECTION_HEAD : JKRArchive::MOUNT_DIRECTION_TAIL;
    JKRHeap* heap = mHeap != NULL ? mHeap : mDoExt_getArchiveHeap();
    mArchive = JKRArchive::mount(mEntryNum, mMountMode, heap, mountDirection);
    s32 result = mArchive != NULL;
    mIsDone = true;
    return result;
}

/* 80016338-80016394 010C78 005C+00 1/1 0/0 0/0 .text            __ct__21mDoDvdThd_toMainRam_cFUc */
mDoDvdThd_toMainRam_c::mDoDvdThd_toMainRam_c(u8 param_0) {
    mMountDirection = param_0;
    if (param_0 == 0) {
        mMountDirection = sDefaultDirection;
    }
}

/* 80016394-8001645C 010CD4 00C8+00 0/0 3/3 0/0 .text
 * create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap               */
mDoDvdThd_toMainRam_c* mDoDvdThd_toMainRam_c::create(char const* pArchivePath, u8 mountDirection,
                                                     JKRHeap* pHeap) {
    mDoDvdThd_toMainRam_c* toMainRAMCmd =
        new (mDoExt_getCommandHeap(), -4) mDoDvdThd_toMainRam_c(mountDirection);
    if (toMainRAMCmd != NULL) {
        toMainRAMCmd->mEntryNum = my_DVDConvertPathToEntrynum(pArchivePath);
        if (toMainRAMCmd->mEntryNum == -1) {
            toMainRAMCmd->mIsDone = true;
            delete toMainRAMCmd;
            toMainRAMCmd = NULL;
        } else {
            toMainRAMCmd->mHeap = pHeap;
            mDoDvdThd::l_param.addition(toMainRAMCmd);
        }
    }
    return toMainRAMCmd;
}

/* 8001645C-800164BC 010D9C 0060+00 1/0 0/0 0/0 .text            __dt__21mDoDvdThd_toMainRam_cFv */
mDoDvdThd_toMainRam_c::~mDoDvdThd_toMainRam_c() {}

/* 800164BC-80016574 010DFC 00B8+00 1/0 0/0 0/0 .text            execute__21mDoDvdThd_toMainRam_cFv
 */
s32 mDoDvdThd_toMainRam_c::execute() {
    JKRHeap* heap;
    if (mHeap != NULL) {
        heap = mHeap;
    } else {
        heap = mDoExt_getArchiveHeap();
    }
    JKRDvdRipper::EAllocDirection allocDir = mMountDirection == 0 ?
                                                 JKRDvdRipper::ALLOC_DIRECTION_FORWARD :
                                                 JKRDvdRipper::ALLOC_DIRECTION_BACKWARD;
    mData = JKRDvdRipper::loadToMainRAM(mEntryNum, NULL, EXPAND_SWITCH_UNKNOWN1, 0, heap, allocDir,
                                        0, NULL, NULL);
    if (mData != NULL) {
        mDataSize = heap->getSize(mData);
    }
    mIsDone = true;
    return mData != NULL;
}

/* 80374357-8037438B 0009B7 0034+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80374357 =
    "mDoDvdThd_getResource_c::create() クラス生成に失敗\n";
#pragma pop

/* 8037438B-803743C1 0009EB 0036+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
// MWCC ignores mapping of some japanese characters using the
// byte 0x5C (ASCII '\'). This is why this string is hex-encoded.
SECTION_DEAD static char const* const stringBase_8037438B =
    "\x6D\x44\x6F\x44\x76\x64\x54\x68\x64\x5F\x67\x65\x74\x52\x65\x73\x6F\x75\x72\x63\x65\x5F\x63"
    "\x3A\x3A\x63\x72\x65\x61\x74\x65\x28\x29\x20\x83\x8A\x83\x5C\x81\x5B\x83\x58\x8E\xE6\x93\xBE"
    "\x82\xC9"
    "\x8E\xB8\x94\x73\x0A";
#pragma pop

/* 803743C1-803743F8 000A21 0037+00 0/0 0/0 0/0 .rodata          None */
#pragma push
#pragma force_active on
// MWCC ignores mapping of some japanese characters using the
// byte 0x5C (ASCII '\'). This is why this string is hex-encoded.
SECTION_DEAD static char const* const stringBase_803743C1 =
    "\x6D\x44\x6F\x44\x76\x64\x54\x68\x64\x5F\x67\x65\x74\x52\x65\x73\x6F\x75\x72\x63\x65\x5F\x63"
    "\x3A\x3A\x65\x78\x65\x63\x75\x74\x65\x28\x29\x20\x83\x8A\x83\x5C\x81\x5B\x83\x58\x8E\xE6\x93"
    "\xBE\x82"
    "\xC9\x8E\xB8\x94\x73\x0A";
#pragma pop
