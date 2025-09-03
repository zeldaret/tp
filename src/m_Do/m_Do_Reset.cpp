/**
 * m_Do_Reset.cpp
 * Game Reset Management
 */

#include "m_Do/m_Do_Reset.h"
#include "JSystem/JAudio2/JASDvdThread.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "JSystem/JUtility/JUTXfb.h"
#include "SSystem/SComponent/c_API_controller_pad.h"
#include "dolphin/gx.h"
#include "m_Do/m_Do_audio.h"
#include "m_Do/m_Do_DVDError.h"
#include "m_Do/m_Do_MemCard.h"

//
// Forward References:
//

extern "C" static void my_OSCancelAlarmAll__Fv();
extern "C" static void destroyVideo__Fv();
extern "C" void mDoRst_reset__FiUli();
extern "C" void mDoRst_resetCallBack__FiPv();
extern "C" u32 getResetData__6mDoRstFv();
extern "C" extern char const* const m_Do_m_Do_Reset__stringBase0;
extern "C" u8 mResetData__6mDoRst[4 + 4 /* padding */];

//
// External References:
//

extern "C" void mDoDvdErr_ThdCleanup__Fv();
extern "C" void cAPICPad_recalibrate__Fv();
extern "C" void pause__13JASTaskThreadFb();
extern "C" void getThreadPointer__6JASDvdFv();
extern "C" void hasReset__10Z2AudioMgrCFv();
extern "C" void destroyManager__8JUTVideoFv();
extern "C" void clearIndex__6JUTXfbFv();
extern "C" void LCDisable();
extern "C" void VIWaitForRetrace();
extern "C" void VIFlush();
extern "C" void GXFlush();
extern "C" void GXAbortFrame();
extern "C" void GXDrawDone();
extern "C" void _savegpr_27();
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" u8 sCallback__Q210JUTGamePad13C3ButtonReset[4];
extern "C" u8 sCallbackArg__Q210JUTGamePad13C3ButtonReset[4 + 4 /* padding */];
extern "C" u8 sManager__6JUTXfb[4 + 4 /* padding */];

static void my_OSCancelAlarmAll() {}

static void destroyVideo() {
    JUTVideo::destroyManager();
    GXSetDrawDoneCallback(NULL);
    VISetBlack(1);
    VIFlush();
    VIWaitForRetrace();
    return;
}

/* 80450C78-80450C80 000178 0004+04 3/2 42/42 2/2 .sbss            mResetData__6mDoRst */
mDoRstData* mDoRst::mResetData;

/* 80015614-8001574C 00FF54 0138+00 0/0 3/3 0/0 .text            mDoRst_reset__FiUli */
void mDoRst_reset(int param_0, u32 param_1, int param_2) {
    JUTXfb::getManager()->clearIndex();
    mDoDvdErr_ThdCleanup();
    cAPICPad_recalibrate();

    if (mDoAud_zelAudio_c::isInitFlag()) {
        bool audioReset;
        do {
            audioReset = Z2AudioMgr::getInterface()->hasReset();
        } while (!audioReset);
    }

    if (DVDGetDriveStatus() == DVD_STATE_BUSY) {
        OSAttention("DVD_STATE_BUSY\n");
    }

    JASTaskThread* task_thread = JASDvd::getThreadPointer();
    if (task_thread != NULL) {
        task_thread->pause(true);
        OSThread* thread = task_thread->getThreadRecord();
        if (thread != NULL) {
            OSSuspendThread(thread);
            OSDetachThread(thread);
            OSCancelThread(thread);
        }
    }

    VIWaitForRetrace();
    VIWaitForRetrace();

    OSThread* gxThread = GXGetCurrentGXThread();
    s32 enable = OSDisableInterrupts();

    if (gxThread != OSGetCurrentThread()) {
        OSCancelThread(gxThread);
        GXSetCurrentGXThread();
    }

    GXFlush();
    GXAbortFrame();
    GXDrawDone();
    OSRestoreInterrupts(enable);
    destroyVideo();

    while (!mDoMemCd_isCardCommNone()) {
        VIWaitForRetrace();
    }

    my_OSCancelAlarmAll();
    LCDisable();
    OSSetSaveRegion(mDoRst::mResetData, (u8*)&mDoRst::getResetData + 0x18);
    OSResetSystem(param_0, param_1, param_2);

    do {
        VIWaitForRetrace();
    } while (true);
}

/* 8001574C-800157F4 01008C 00A8+00 0/0 3/3 0/0 .text            mDoRst_resetCallBack__FiPv */
void mDoRst_resetCallBack(int port, void*) {
    if (!mDoRst::isReset()) {
        if (port == -1) {
            cAPICPad_recalibrate();
        } else {
            if (mDoRst::is3ButtonReset()) {
                JUTGamePad::C3ButtonReset::sResetOccurred = false;
                JUTGamePad::C3ButtonReset::sCallback = mDoRst_resetCallBack;
                JUTGamePad::C3ButtonReset::sCallbackArg = NULL;
                return;
            }
            mDoRst::on3ButtonReset();
            mDoRst::set3ButtonResetPort(port);
            cAPICPad_recalibrate();
        }

        if (DVDCheckDisk() == 0 && DVDGetDriveStatus() != DVD_STATE_FATAL_ERROR) {
            mDoRst::onReturnToMenu();
        }
        mDoRst::onReset();
    }
}

/* ############################################################################################## */
/* 80450C80-80450C88 -00001 0008+00 0/0 6/6 0/0 .sbss            None */
/* 80450C80 0001+00 data_80450C80 None */
/* 80450C81 0007+00 data_80450C81 None */
// most of these are probably fake
#pragma push
#pragma force_active on
u8 struct_80450C7C;
u8 struct_80450C7D;
u8 struct_80450C7E;
u8 struct_80450C7F;

bool SyncWidthSound;
u8 sDefaultDirection;

u8 struct_80450C82;
u8 struct_80450C83;
u8 struct_80450C84;
u8 struct_80450C85;
u8 struct_80450C86;
u8 struct_80450C87;
#pragma pop

/* 80450C88-80450C90 000188 0008+00 0/0 2/2 0/0 .sbss            None */
bool mDoDvdErr_initialized;
