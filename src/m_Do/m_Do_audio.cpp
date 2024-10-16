/**
 * m_Do_audio.cpp
 * Audio Management Functions
 */

#include "m_Do/m_Do_audio.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_dvd_thread.h"

/* 80450BB8-80450BBC -00001 0004+00 5/5 6/6 0/0 .sbss            None */
/* 80450BB8 0001+00 data_80450BB8 None */
/* 80450BB9 0001+00 data_80450BB9 None */
/* 80450BBA 0002+00 data_80450BBA None */
bool mDoAud_zelAudio_c::mInitFlag;

bool mDoAud_zelAudio_c::mResetFlag;

bool mDoAud_zelAudio_c::mBgmSet;

/* 80006FB4-80006FC0 0018F4 000C+00 1/1 0/0 0/0 .text            reset__17mDoAud_zelAudio_cFv */
void mDoAud_zelAudio_c::reset() {
    mBgmSet = false;
}

/* 803DBF4C-803DD2D8 008C6C 138C+00 3/3 0/0 0/0 .bss             g_mDoAud_zelAudio */
static mDoAud_zelAudio_c g_mDoAud_zelAudio;

/* 80450BBC-80450BC0 0000BC 0004+00 1/1 1/1 0/0 .sbss            g_mDoAud_audioHeap */
JKRSolidHeap* g_mDoAud_audioHeap;

/* 80450BC0-80450BC4 0000C0 0004+00 1/1 0/0 0/0 .sbss            l_affCommand */
static mDoDvdThd_toMainRam_c* l_affCommand;

/* 80450BC4-80450BC8 0000C4 0004+00 1/1 0/0 0/0 .sbss            l_arcCommand */
static mDoDvdThd_mountXArchive_c* l_arcCommand;

/* 80006FC0-80007164 001900 01A4+00 1/1 0/0 0/0 .text            mDoAud_Create__Fv */
static void mDoAud_Create() {
    if (l_affCommand == NULL) {
        l_affCommand = mDoDvdThd_toMainRam_c::create("/Audiores/Z2Sound.baa", 2, NULL);

        if (l_affCommand == NULL) {
            return;
        }
    }

    if (l_arcCommand == NULL) {
        l_arcCommand = mDoDvdThd_mountXArchive_c::create("/Audiores/Seqs/Z2SoundSeqs.arc", 0,
                                                         JKRArchive::MOUNT_DVD, NULL);

        if (l_arcCommand == NULL) {
            return;
        }
    }

    if (l_affCommand->sync() && l_arcCommand->sync()) {
        if (g_mDoAud_audioHeap != NULL) {
            s32 groupID = JKRHeap::sCurrentHeap->changeGroupID(5);
            g_mDoAud_zelAudio
                .init(g_mDoAud_audioHeap, 0xA00000, l_affCommand->getMemAddress(),
                                l_arcCommand->getArchive());
            JKRHeap::sCurrentHeap->changeGroupID(groupID);
            g_mDoAud_audioHeap->adjustSize();
        } else {
            // "Cannot initialize audio due to heap allocation failure\n"
            OSReport_Error("ヒープ確保失敗につきオーディオ初期化できません\n");
        }

        (g_mDoAud_zelAudio)
            .setEventBit(dComIfGs_getPEventBit());
        (g_mDoAud_zelAudio).reset();

        u32 soundMode = OSGetSoundMode();
        Z2AudioMgr::getInterface()->setOutputMode(soundMode);
        JKRHeap::free(l_affCommand->getMemAddress(), NULL);
        l_affCommand->destroy();
        l_arcCommand->destroy();

        mDoAud_zelAudio_c::onInitFlag();
        SyncWidthSound = true;
    }
}

/* 80007164-800071BC 001AA4 0058+00 0/0 1/1 0/0 .text            mDoAud_Execute__Fv */
void mDoAud_Execute() {
    if (!mDoAud_zelAudio_c::isInitFlag()) {
        if (!mDoRst::isShutdown() && !mDoRst::isReturnToMenu()) {
            mDoAud_Create();
        }
    } else {
        g_mDoAud_zelAudio.gframeProcess();
    }
}

/* 800071BC-800071F8 001AFC 003C+00 0/0 3/3 0/0 .text            mDoAud_setSceneName__FPCcll */
void mDoAud_setSceneName(char const* spot, s32 room, s32 layer) {
    Z2AudioMgr::getInterface()->setSceneName((char*)spot, room, layer);
}

/* 800071F8-80007224 001B38 002C+00 0/0 1/1 0/0 .text            mDoAud_load1stDynamicWave__Fv */
s32 mDoAud_load1stDynamicWave() {
    Z2AudioMgr::getInterface()->load1stDynamicWave();
    return 1;
}

/* 80007224-80007254 001B64 0030+00 0/0 2/2 0/0 .text            mDoAud_setFadeOutStart__FUc */
void mDoAud_setFadeOutStart(u8 param_0) {
    Z2AudioMgr::getInterface()->setFadeOutStart((u8)param_0);
}

/* 80007254-80007284 001B94 0030+00 0/0 2/2 1/1 .text            mDoAud_setFadeInStart__FUc */
void mDoAud_setFadeInStart(u8 param_0) {
    Z2AudioMgr::getInterface()->setFadeInStart((u8)param_0);
}

/* 80007284-800072C4 001BC4 0040+00 0/0 1/1 0/0 .text            mDoAud_resetProcess__Fv */
void mDoAud_resetProcess() {
    if (!mDoAud_zelAudio_c::isResetFlag()) {
        Z2AudioMgr::getInterface()->resetProcess(0x1E, false);
        mDoAud_zelAudio_c::onResetFlag();
    }
}

/* 800072C4-80007318 001C04 0054+00 0/0 2/2 0/0 .text            mDoAud_resetRecover__Fv */
bool mDoAud_resetRecover() {
    if (mDoAud_zelAudio_c::isResetFlag()) {
        if (!Z2AudioMgr::getInterface()->hasReset()) {
            return 0;
        }
        Z2AudioMgr::getInterface()->resetRecover();
        mDoAud_zelAudio_c::offResetFlag();
    }
    return 1;
}

/* 80373D68-80373D68 0003C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
