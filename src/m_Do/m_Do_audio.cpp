/**
 * m_Do_audio.cpp
 * Audio Management Functions
 */

#include "m_Do/m_Do_audio.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/os/OS.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_dvd_thread.h"

//
// Forward References:
//

extern "C" void reset__17mDoAud_zelAudio_cFv();
extern "C" static void mDoAud_Create__Fv();
extern "C" void mDoAud_Execute__Fv();
extern "C" void mDoAud_setSceneName__FPCcll();
extern "C" void mDoAud_load1stDynamicWave__Fv();
extern "C" void mDoAud_setFadeOutStart__FUc();
extern "C" void mDoAud_setFadeInStart__FUc();
extern "C" void mDoAud_resetProcess__Fv();
extern "C" void mDoAud_resetRecover__Fv();
extern "C" void __sinit_m_Do_audio_cpp();
extern "C" void __dt__17mDoAud_zelAudio_cFv();
extern "C" void __dt__10Z2AudioMgrFv();
extern "C" void __dt__14JAISoundHandleFv();
extern "C" void __dt__12Z2MultiSeObjFv();
extern "C" void __dt__16JAISeCategoryMgrFv();
extern "C" extern char const* const m_Do_m_Do_audio__stringBase0;

//
// External References:
//

extern "C" void create__25mDoDvdThd_mountXArchive_cFPCcUcQ210JKRArchive10EMountModeP7JKRHeap();
extern "C" void create__21mDoDvdThd_toMainRam_cFPCcUcP7JKRHeap();
extern "C" void __dt__15JASAudioReseterFv();
extern "C" void __dt__14JAISeqDataUserFv();
extern "C" void releaseSound__14JAISoundHandleFv();
extern "C" void __dt__12JAISoundInfoFv();
extern "C" void __dt__15JAISoundStarterFv();
extern "C" void __dt__16JAIStreamDataMgrFv();
extern "C" void __dt__12Z2MultiSeMgrFv();
extern "C" void setEventBit__11Z2StatusMgrFPv();
extern "C" void setFadeOutStart__10Z2SceneMgrFUc();
extern "C" void setFadeInStart__10Z2SceneMgrFUc();
extern "C" void setSceneName__10Z2SceneMgrFPcll();
extern "C" void load1stDynamicWave__10Z2SceneMgrFv();
extern "C" void __dt__10Z2AudienceFv();
extern "C" void __ct__10Z2AudioMgrFv();
extern "C" void init__10Z2AudioMgrFP12JKRSolidHeapUlPvP10JKRArchive();
extern "C" void setOutputMode__10Z2AudioMgrFUl();
extern "C" void gframeProcess__10Z2AudioMgrFv();
extern "C" void resetProcess__10Z2AudioMgrFUlb();
extern "C" void resetRecover__10Z2AudioMgrFv();
extern "C" void hasReset__10Z2AudioMgrCFv();
extern "C" void func_802CDB1C();
extern "C" void free__7JKRHeapFPvP7JKRHeap();
extern "C" void changeGroupID__7JKRHeapFUc();
extern "C" void __dl__FPv();
extern "C" void adjustSize__12JKRSolidHeapFv();
extern "C" void __dt__10JSUPtrListFv();
extern "C" void __register_global_object();
extern "C" void __destroy_arr();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8JAISeMgr[5];
extern "C" extern void* __vt__16JAISeCategoryMgr[5];
extern "C" extern void* __vt__9JAISeqMgr[5 + 1 /* padding */];
extern "C" extern void* __vt__10Z2SoundMgr[3 + 1 /* padding */];
extern "C" extern void* __vt__14Z2SoundStarter[5 + 1 /* padding */];
extern "C" extern void* __vt__11Z2SoundInfo[20];
extern "C" extern void* __vt__15Z2SpeechStarter[5];
extern "C" extern void* __vt__10Z2AudioMgr[3];
extern "C" u8 mResetData__6mDoRst[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" u8 sCurrentHeap__7JKRHeap[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80450BB8-80450BBC -00001 0004+00 5/5 6/6 0/0 .sbss            None */
/* 80450BB8 0001+00 data_80450BB8 None */
/* 80450BB9 0001+00 data_80450BB9 None */
/* 80450BBA 0002+00 data_80450BBA None */
#pragma push
#pragma force_active on
bool mDoAud_zelAudio_c::mInitFlag;

bool mDoAud_zelAudio_c::mResetFlag;

bool mDoAud_zelAudio_c::mBgmSet;
#pragma pop

/* 80006FB4-80006FC0 0018F4 000C+00 1/1 0/0 0/0 .text            reset__17mDoAud_zelAudio_cFv */
void mDoAud_zelAudio_c::reset() {
    mBgmSet = false;
}

/* 803DBF40-803DBF4C 008C60 000C+00 1/1 0/1 0/0 .bss             @3620 */
static u8 lit_3620[12];

/* 803DBF4C-803DD2D8 008C6C 138C+00 3/3 0/0 0/0 .bss             g_mDoAud_zelAudio */
static u8 g_mDoAud_zelAudio[5004];

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
            (*(mDoAud_zelAudio_c*)g_mDoAud_zelAudio)
                .mAudioMgr.init(g_mDoAud_audioHeap, 0xA00000, l_affCommand->getMemAddress(),
                                l_arcCommand->getArchive());
            JKRHeap::sCurrentHeap->changeGroupID(groupID);
            g_mDoAud_audioHeap->adjustSize();
        } else {
            // "Cannot initialize audio due to heap allocation failure\n"
            OSReport_Error("ヒープ確保失敗につきオーディオ初期化できません\n");
        }

        (*(mDoAud_zelAudio_c*)g_mDoAud_zelAudio)
            .mAudioMgr.mStatusMgr.setEventBit(dComIfGs_getPEventBit());
        (*(mDoAud_zelAudio_c*)g_mDoAud_zelAudio).reset();

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
        (*(mDoAud_zelAudio_c*)g_mDoAud_zelAudio).mAudioMgr.gframeProcess();
    }
}

/* 800071BC-800071F8 001AFC 003C+00 0/0 3/3 0/0 .text            mDoAud_setSceneName__FPCcll */
void mDoAud_setSceneName(char const* spot, s32 room, s32 layer) {
    Z2AudioMgr::getInterface()->mSceneMgr.setSceneName((char*)spot, room, layer);
}

/* 800071F8-80007224 001B38 002C+00 0/0 1/1 0/0 .text            mDoAud_load1stDynamicWave__Fv */
s32 mDoAud_load1stDynamicWave() {
    Z2AudioMgr::getInterface()->mSceneMgr.load1stDynamicWave();
    return 1;
}

/* 80007224-80007254 001B64 0030+00 0/0 2/2 0/0 .text            mDoAud_setFadeOutStart__FUc */
void mDoAud_setFadeOutStart(u8 param_0) {
    Z2AudioMgr::getInterface()->mSceneMgr.setFadeOutStart((u8)param_0);
}

/* 80007254-80007284 001B94 0030+00 0/0 2/2 1/1 .text            mDoAud_setFadeInStart__FUc */
void mDoAud_setFadeInStart(u8 param_0) {
    Z2AudioMgr::getInterface()->mSceneMgr.setFadeInStart((u8)param_0);
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

/* ############################################################################################## */
/* 803A2F40-803A2F4C 000060 000C+00 2/2 0/0 0/0 .data            __vt__17mDoAud_zelAudio_c */
SECTION_DATA extern void* __vt__17mDoAud_zelAudio_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)func_802CDB1C,
};

/* 80007318-80007368 001C58 0050+00 0/0 1/0 0/0 .text            __sinit_m_Do_audio_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_m_Do_audio_cpp() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__sinit_m_Do_audio_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80007318, __sinit_m_Do_audio_cpp);
#pragma pop

/* 80007368-800073C8 001CA8 0060+00 1/1 0/0 0/0 .text            __dt__17mDoAud_zelAudio_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__17mDoAud_zelAudio_cFv() {
    // asm mDoAud_zelAudio_c::~mDoAud_zelAudio_c() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__dt__17mDoAud_zelAudio_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803A2F4C-803A2F60 00006C 0010+04 1/1 2/2 0/0 .data            __vt__12JAUSoundInfo */
SECTION_DATA extern void* __vt__12JAUSoundInfo[4 + 1 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
    /* padding */
    NULL,
};

/* 800073C8-80007838 001D08 0470+00 1/1 0/0 0/0 .text            __dt__10Z2AudioMgrFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__10Z2AudioMgrFv() {
    // asm Z2AudioMgr::~Z2AudioMgr() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__dt__10Z2AudioMgrFv.s"
}
#pragma pop

/* 80007838-80007888 002178 0050+00 1/1 1/1 0/0 .text            __dt__14JAISoundHandleFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__14JAISoundHandleFv() {
    // asm JAISoundHandle::~JAISoundHandle() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__dt__14JAISoundHandleFv.s"
}
#pragma pop

/* 80007888-800078DC 0021C8 0054+00 1/1 1/1 0/0 .text            __dt__12Z2MultiSeObjFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__12Z2MultiSeObjFv() {
    // asm Z2MultiSeObj::~Z2MultiSeObj() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__dt__12Z2MultiSeObjFv.s"
}
#pragma pop

/* 800078DC-80007954 00221C 0078+00 1/1 3/2 0/0 .text            __dt__16JAISeCategoryMgrFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__16JAISeCategoryMgrFv() {
    // asm JAISeCategoryMgr::~JAISeCategoryMgr() {
    nofralloc
#include "asm/m_Do/m_Do_audio/__dt__16JAISeCategoryMgrFv.s"
}
#pragma pop

/* 80373D68-80373D68 0003C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
