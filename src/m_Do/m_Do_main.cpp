/**
 * m_Do_main.cpp
 * Main Initialization
 */

#include "m_Do/m_Do_main.h"
#include "DynamicLink.h"
#include "JSystem/JAudio2/JASAudioThread.h"
#include "JSystem/JAudio2/JAUSoundTable.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTReport.h"
#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "c/c_dylink.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_logo.h"
#include "d/d_s_menu.h"
#include "d/d_s_play.h"
#include "f_ap/f_ap_game.h"
#include "m_Do/m_Do_MemCard.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_machine.h"
#include "SSystem/SComponent/c_counter.h"
#include <cstring.h>

/* 800056C0-80005728 000000 0068+00 1/1 0/0 0/0 .text            version_check__Fv */
void version_check() {
#if !PLATFORM_SHIELD
    if (!strcmp("20Apr2004", "20Apr2004") && !strcmp("Patch2", "Patch2")) {
        return;
    }

    // "SDK version doesn't match. Stopping\n"
    OSReport_Error("SDKのバージョンが一致しません。停止します\n");
    do {
    } while (true);
#endif
}

/* 803A2EE0-803A2EF4 000000 0012+02 2/2 1/1 0/0 .data            COPYDATE_STRING__7mDoMain */
char mDoMain::COPYDATE_STRING[18] = "??/??/?? ??:??:??";

/* 803D32E0-803D3308 000000 0028+00 3/2 0/0 0/0 .bss             RootHeapCheck */
// static HeapCheck RootHeapCheck;
static HeapCheck RootHeapCheck = HeapCheck(0,"Root","ルート");

/* 803D3308-803D3330 000028 0028+00 1/2 0/0 0/0 .bss             SystemHeapCheck */
// static HeapCheck SystemHeapCheck;
static HeapCheck SystemHeapCheck = HeapCheck(0,"System","システム");

/* 803D3330-803D3358 000050 0028+00 1/2 0/0 0/0 .bss             ZeldaHeapCheck */
// static HeapCheck ZeldaHeapCheck;
static HeapCheck ZeldaHeapCheck = HeapCheck(0,"Zelda","ゼルダ");

/* 803D3358-803D3380 000078 0028+00 1/2 0/0 0/0 .bss             GameHeapCheck */
// static HeapCheck GameHeapCheck;
static HeapCheck GameHeapCheck = HeapCheck(0,"Game","ゲーム");

/* 803D3380-803D33A8 0000A0 0028+00 1/2 0/0 0/0 .bss             ArchiveHeapCheck */
// static HeapCheck ArchiveHeapCheck;
static HeapCheck ArchiveHeapCheck = HeapCheck(0,"Archive","アーカイブ");

/* 803D33A8-803D33D0 0000C8 0028+00 1/2 0/0 0/0 .bss             J2dHeapCheck */
// static HeapCheck J2dHeapCheck;
static HeapCheck J2dHeapCheck = HeapCheck(0,"J2d","J2D");

/* 803D33D0-803D33F8 0000F0 0028+00 1/2 0/0 0/0 .bss             HostioHeapCheck */
// static HeapCheck HostioHeapCheck;
static HeapCheck HostioHeapCheck = HeapCheck(0,"Hostio","ホストIO");

/* 803D33F8-803D3420 000118 0028+00 1/2 0/0 0/0 .bss             CommandHeapCheck */
// static HeapCheck CommandHeapCheck;
static HeapCheck CommandHeapCheck = HeapCheck(0,"Command","コマンド");

/* 803A2EF4-803A2F14 -00001 0020+00 1/2 0/0 0/0 .data            HeapCheckTable */
static HeapCheck* HeapCheckTable[8] = {
    &RootHeapCheck,    &SystemHeapCheck, &ZeldaHeapCheck,  &GameHeapCheck,
    &ArchiveHeapCheck, &J2dHeapCheck,    &HostioHeapCheck, &CommandHeapCheck,
};

void printFrameLine() {
    OSCalendarTime calendar;
    OSTime time = OSGetTime();
    u32 retrace = VIGetRetraceCount();
    OSTicksToCalendarTime(time, &calendar);

    OS_REPORT("\x1b[44m-- %5d - %5d - %3d %d %04d/%02d/%02d %02d:%02d:%02d\'%03d\'\'%03d\n\x1b[m",
              g_Counter.mCounter0, retrace,
              calendar.yday, calendar.wday, calendar.year, calendar.mon, calendar.mday,
              calendar.hour, calendar.min, calendar.sec, calendar.msec, calendar.usec);
}

/* 80005728-8000578C 000068 0064+00 1/1 0/0 0/0 .text            CheckHeap1__9HeapCheckFv */
void HeapCheck::CheckHeap1() {
    s32 totalUsedSize = mHeap->getTotalUsedSize();
    s32 freeSize = mHeap->getFreeSize();

    if (mMaxTotalUsedSize < totalUsedSize)
        mMaxTotalUsedSize = totalUsedSize;

    if (mMaxTotalFreeSize > freeSize)
        mMaxTotalFreeSize = freeSize;
}

/* 8000578C-80005848 0000CC 00BC+00 1/1 0/0 0/0 .text            CheckHeap__FUl */
void CheckHeap(u32 i_padNo) {
    mDoMch_HeapCheckAll();
    OSCheckActiveThreads();

    int saveRel = (mDoCPd_c::getHold(i_padNo) & ~PAD_TRIGGER_Z) == (PAD_TRIGGER_L + PAD_TRIGGER_R) && mDoCPd_c::getTrig(i_padNo) & PAD_TRIGGER_Z;

    for (int i = 0; i < 8; i++) {
        HeapCheckTable[i]->CheckHeap1();
        if (saveRel) {
            HeapCheckTable[i]->saveRelBase();
        }
    }
}

/* 80005848-800058A0 000188 0058+00 2/2 0/0 0/0 .text            countUsed__FP10JKRExpHeap */
static int countUsed(JKRExpHeap* heap) {
    OSDisableScheduler();

    int counter = 0;
    JKRExpHeap::CMemBlock* used_blocks_head = heap->getUsedFirst();
    while (used_blocks_head) {
        counter++;
        used_blocks_head = used_blocks_head->getNextBlock();
    }

    OSEnableScheduler();
    return counter;
}

/* 800058A0-800058C4 0001E0 0024+00 2/2 0/0 0/0 .text            getUsedCount__9HeapCheckCFv */
s32 HeapCheck::getUsedCount() const {
    return countUsed(mHeap);
}

/* 800058C4-80005AD8 000204 0214+00 1/1 0/0 0/0 .text            heapDisplay__9HeapCheckCFv */
void HeapCheck::heapDisplay() const {
    s32 heap_size = mHeap->getHeapSize();
    s32 used_count = heap_size - getTargetHeapSize();

    s32 total_used_size = mHeap->getTotalUsedSize();
    s32 total_free_size = mHeap->getTotalFreeSize();
    s32 heap_free_size = mHeap->getFreeSize();

    JUTReport(100, 212, "[%sName]", mName);
    JUTReport(100, 227, "HeapSize         %8ld", heap_size);
    JUTReport(100, 240, "TargetHeapSize   %8ld", getTargetHeapSize());
    JUTReport(100, 253, "TotalFree        %8ld", total_free_size - used_count);
    JUTReport(100, 266, "FreeSize         %8ld", heap_free_size - used_count);
    JUTReport(100, 279, "TotalUsedSize    %8ld", total_used_size);
    JUTReport(100, 292, "TotalUsedRate        %3ld%%", (int)(total_used_size * 100) / (int)getTargetHeapSize());
    JUTReport(100, 305, "MaxTotalUsedSize %8ld", mMaxTotalUsedSize);
    JUTReport(100, 318, "MaxTotalUsedRate     %3ld%%", (mMaxTotalUsedSize * 100) / (int)getTargetHeapSize());
    JUTReport(100, 331, "MinFreeSize      %8ld", mMaxTotalFreeSize - used_count);
    JUTReport(100, 344, "MinFreeRate          %3ld%%", ((mMaxTotalFreeSize - used_count) * 100) / (int)getTargetHeapSize());
    JUTReport(100, 357, "UsedCount             %3ld%", countUsed(mHeap));
}

#if DEBUG
int mDoMain::argument = -1;
#endif

/* 80450580-80450584 000000 0004+00 3/3 6/6 0/0 .sdata           None */
s8 mDoMain::developmentMode = -1;

#ifdef DEBUG
u32 mDoMain::gameHeapSize = 0xFFFFFFFF;
u32 mDoMain::archiveHeapSize = 0xFFFFFFFF;
#endif

/* 80450584-80450588 000004 0004+00 0/0 1/1 0/0 .sdata           memMargin__7mDoMain */
u32 mDoMain::memMargin = 0xFFFFFFFF;

#ifdef DEBUG
int mDoMain::e3menu_no = -1;
#endif

/* 80450588-80450590 000008 0008+00 2/2 0/0 0/0 .sdata           None */
u8 mHeapBriefType = 4;

/* 80450B00-80450B08 000000 0008+00 1/1 0/0 0/0 .sbss            None */
static u8 fillcheck_check_frame;

/* 80450B08-80450B0C 000008 0004+00 1/1 1/1 0/0 .sbss            sPowerOnTime__7mDoMain */
OSTime mDoMain::sPowerOnTime;

/* 80450B10-80450B14 000010 0004+00 0/0 2/2 0/0 .sbss            sHungUpTime__7mDoMain */
OSTime mDoMain::sHungUpTime;

/* 80450B18-80450B1C -00001 0004+00 3/3 0/0 0/0 .sbss            None */
/* 80450B18 0001+00 data_80450B18 None */
static u8 mDisplayHeapSize;

/* 80450B19 0001+00 data_80450B19 None */
static u8 mSelectHeapBar;

/* 80450B1A 0002+00 data_80450B1A None */
static bool mCheckHeap;

/* 80005AD8-80005D4C 000418 0274+00 1/1 0/0 0/0 .text            debugDisplay__Fv */
void debugDisplay() {
    static const char* desc1[5] = {
        "", "TotalFree", "MaxUsed  ", "Used     ", "RelUsed  ",
    };

    static const char* desc2[5] = {
        "", "/ MaxFree", "/HeapSize", "Blk/Bytes", "Blk/Bytes",
    };

    if (mSelectHeapBar >= 1 && mSelectHeapBar <= 6) {
        HeapCheckTable[mSelectHeapBar - 1]->heapDisplay();
    }

    if (mHeapBriefType == 5) {
        JKRAramHeap* heap = JKRAram::getAramHeap();
        if (heap != NULL) {
            JUTReport(475, 100, "ARAM Free");
            JUTReport(475, 114, "%d", heap->getFreeSize());
            JUTReport(475, 128, "TotalFree");
            JUTReport(475, 142, "%d", heap->getTotalFreeSize());
        }
        return;
    }
    
    if (mHeapBriefType != 0) {
        JUT_ASSERT(596, mHeapBriefType < HeapCheckTableNum);
        JUTReport(475, 100, "%s", desc1[mHeapBriefType]);
        JUTReport(475, 114, "%s", desc2[mHeapBriefType]);

        for (int i = 0; i < 8; i++) {
            HeapCheck* heap_check = HeapCheckTable[i];
            JKRExpHeap* expHeap = heap_check->getHeap();

            s32 check1;
            s32 check2;
            switch (mHeapBriefType) {
            case 1:
                check1 = expHeap->getTotalFreeSize();
                check2 = expHeap->getFreeSize();
                break;
            case 2:
                check1 = heap_check->getMaxTotalUsedSize();
                check2 = expHeap->getHeapSize();
                break;
            case 3:
                check1 = heap_check->getUsedCount();
                check2 = expHeap->getTotalUsedSize();
                break;
            case 4:
                check1 = heap_check->getRelUsedCount();
                check2 = heap_check->getRelTotalUsedSize();
                break;
            }

            JUTReport(475, (i * 44) + 150, " [%s]", heap_check->getName());
            JUTReport(475, (i * 44) + 164, "%10d", check1);
            JUTReport(475, (i * 44) + 178, "%10d", check2);
        }
    }
}

void my_genCheckBox(JORMContext* mctx, const char* label, u8* pSrc, u8 mask) {
    mctx->genCheckBox(label, pSrc, mask, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}

/* 80005D4C-8000614C 00068C 0400+00 1/1 0/0 0/0 .text            Debug_console__FUl */
bool Debug_console(u32 i_padNo) {
    JUTConsole* console = JFWSystem::getSystemConsole();
    if (console != NULL) {
        static f32 console_position_x = 20.0f;
        static f32 console_position_y = 30.0f;
        static f32 console_scroll = 0.0f;

        if (mDoCPd_c::getTrig(i_padNo) & PAD_TRIGGER_Z && !(mDoCPd_c::getHold(i_padNo) & ~PAD_TRIGGER_Z)) {
            console->setVisible(console->isVisible() == false);
            JUTAssertion::setMessageCount(0);
        }

        if (console->isVisible()) {
            if ((mDoCPd_c::getHold(i_padNo) & PAD_TRIGGER_L && mDoCPd_c::getHold(i_padNo) & PAD_TRIGGER_R) ||
                ((mDoCPd_c::getAnalogL(i_padNo) > 0.0f && mDoCPd_c::getAnalogR(i_padNo) > 0.0f)))
            {
                f32 stick_x = mDoCPd_c::getStickX(i_padNo);
                f32 stick_y = mDoCPd_c::getStickY(i_padNo);

                if (mDoCPd_c::getHold(i_padNo) & (PAD_BUTTON_Y | PAD_BUTTON_X) &&
                    mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_START)
                {
                    console->clear();
                }

                if (!(mDoCPd_c::getHold(i_padNo) & (PAD_BUTTON_Y | PAD_BUTTON_X))) {
                    console_scroll -= stick_y;

                    int scrollAmount;
                    if (console_scroll > 1.0f) {
                        scrollAmount = console_scroll;
                    } else if (console_scroll < -1.0f) {
                        scrollAmount = -(int)-console_scroll;
                    } else {
                        scrollAmount = 0;
                    }

                    if (scrollAmount != 0) {
                        console_scroll -= scrollAmount;
                        console->scroll(scrollAmount);
                    }
                } else {
                    if (mDoCPd_c::getHold(i_padNo) & PAD_BUTTON_X) {
                        console_position_x += stick_x;
                    }

                    if (mDoCPd_c::getHold(i_padNo) & PAD_BUTTON_Y) {
                        console_position_y -= stick_y;
                    }
                }

                if (mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_A) {
                    console->dumpToTerminal(0xFFFFFFFF);
                    console->setOutput(JUTConsole::OUTPUT_OSREPORT | JUTConsole::OUTPUT_CONSOLE);
                }

                JUTReport(30, 390, 1, "Press X+Y+START to CLEAR console.");
                JUTReport(30, 400, 1, "3DStick UP/Down to scroll");
                JUTReport(30, 410, 1, "Press A to output terminal from console.");
                JUTReport(30, 420, 1, "SCROLL：%3d %3d %3d Output=%1x", console->getLineOffset(),
                          console->getPositionX(), console->getPositionY(), console->getOutput());
            } else {
                if (mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_DOWN) {
                    g_HIO.mDisplayMeter ^= (u8)1;
                }

                if (mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_LEFT) {
                    JKRAramHeap* aram = JKRAram::getAramHeap();
                    if (aram != NULL) {
                        aram->dump();
                    }

                    DynamicModuleControlBase::dump();
                    g_dComIfG_gameInfo.mResControl.dump();
                }

                if (mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_RIGHT) {
                    JKRGetSystemHeap()->dump_sort();
                }

                if (mDoCPd_c::getTrig(i_padNo) & PAD_BUTTON_UP) {
                    zeldaHeap->dump_sort();
                    gameHeap->dump_sort();
                    archiveHeap->dump_sort();
                }

                JUTReport(30, 440, 1, "Press L+R trigger to control console.");
                JUTReport(30, 450, 1, "Press [Z] trigger to close this window.");
            }

            console->setPosition(console_position_x, console_position_y);
            return 1;
        }
    }

    return 0;
}

#if PLATFORM_GCN
#define COPYDATE_PATH "/str/Final/Release/COPYDATE"
#else
#define COPYDATE_PATH "/str/RVL/Debug/COPYDATE"
#endif

/* 8000614C-800061C8 000A8C 007C+00 1/1 0/0 0/0 .text            LOAD_COPYDATE__FPv */
s32 LOAD_COPYDATE(void*) {
    DVDFileInfo ALIGN_DECL(32) fileInfo;
    u8 buffer[32];

    BOOL status = DVDOpen(COPYDATE_PATH, &fileInfo);
    if (status) {
        s32 rt = DVDReadPrio(&fileInfo, &buffer, sizeof(buffer), 0, 2);
        memcpy(mDoMain::COPYDATE_STRING, buffer, sizeof(mDoMain::COPYDATE_STRING) - 1);
        status = DVDClose(&fileInfo);
    }

    OS_REPORT("\x1b[36mCOPYDATE=[%s]\n\x1b[m", mDoMain::COPYDATE_STRING);
    return status;
}

/* 800061C8-8000628C 000B08 00C4+00 1/1 0/0 0/0 .text            debug__Fv */
static void debug() {
    if (mDoMain::developmentMode) {
        if (mCheckHeap) {
            CheckHeap(PAD_3);
        }

        if ((mDoCPd_c::getGamePad(PAD_3)->getButton() & ~PAD_TRIGGER_Z) == PAD_TRIGGER_R &&
            mDoCPd_c::getGamePad(PAD_3)->testTrigger(PAD_TRIGGER_Z))
        {
            mDisplayHeapSize ^= (u8)1;
        }

        if (mDisplayHeapSize) {
            if ((mDoCPd_c::getGamePad(PAD_3)->getButton() & ~PAD_TRIGGER_Z) == PAD_TRIGGER_L &&
                mDoCPd_c::getGamePad(PAD_3)->testTrigger(PAD_TRIGGER_Z))
            {
                mHeapBriefType < 5 ? mHeapBriefType++ : mHeapBriefType = 1;
            }

            debugDisplay();
        }

        Debug_console(PAD_3);
    }
}

/* 8000628C-80006454 000BCC 01C8+00 1/1 0/0 0/0 .text            main01__Fv */
void main01(void) {
    static u32 frame;

    // Setup heaps, setup exception manager, set RNG seed, setup DVDError Thread, setup Memory card Thread
    mDoMch_Create();

    // setup FrameBuffer and ZBuffer, init display lists
    mDoGph_Create();

    // Setup control pad
    mDoCPd_c::create();

    RootHeapCheck.setHeap((JKRExpHeap*)JKRHeap::getRootHeap());
    if (JKRHeap::getRootHeap()) {
        RootHeapCheck.setHeapSize(JKRHeap::getRootHeap()->getSize());
    }

    SystemHeapCheck.setHeap((JKRExpHeap*)JKRHeap::getSystemHeap());
    if (JKRHeap::getSystemHeap()) {
        SystemHeapCheck.setHeapSize(JKRHeap::getSystemHeap()->getSize());
    }

    ZeldaHeapCheck.setHeap(mDoExt_getZeldaHeap());
    if (ZeldaHeapCheck.getHeap()) {
        ZeldaHeapCheck.setHeapSize(ZeldaHeapCheck.getHeap()->getSize());
    }

    GameHeapCheck.setHeap(mDoExt_getGameHeap());
    if (GameHeapCheck.getHeap()) {
        GameHeapCheck.setHeapSize(GameHeapCheck.getHeap()->getSize());
    }

    ArchiveHeapCheck.setHeap(mDoExt_getArchiveHeap());
    if (ArchiveHeapCheck.getHeap()) {
        ArchiveHeapCheck.setHeapSize(ArchiveHeapCheck.getHeap()->getSize());
    }

    J2dHeapCheck.setHeap(mDoExt_getJ2dHeap());
    if (J2dHeapCheck.getHeap()) {
        J2dHeapCheck.setHeapSize(J2dHeapCheck.getHeap()->getSize());
    }

    HostioHeapCheck.setHeap(mDoExt_getHostIOHeap());
    if (HostioHeapCheck.getHeap()) {
        HostioHeapCheck.setHeapSize(HostioHeapCheck.getHeap()->getSize());
    }

    CommandHeapCheck.setHeap(mDoExt_getCommandHeap());
    if (CommandHeapCheck.getHeap()) {
        CommandHeapCheck.setHeapSize(CommandHeapCheck.getHeap()->getSize());
    }

    JUTConsole* console = JFWSystem::getSystemConsole();
    console->setOutput(mDoMain::developmentMode ? JUTConsole::OUTPUT_OSR_AND_CONSOLE :
                                                  JUTConsole::OUTPUT_NONE);
    console->setPosition(32, 42);

    mDoDvdThd_callback_c::create((mDoDvdThd_callback_func)LOAD_COPYDATE, NULL);
    fapGm_Create(); // init framework
    fopAcM_initManager();
    mDisplayHeapSize = 0;
    cDyl_InitAsync(); // init RELs

    g_mDoAud_audioHeap = JKRSolidHeap::create(0x14D800, JKRHeap::getCurrentHeap(), false);

    do {
        frame++;
        if (fillcheck_check_frame != 0 && frame % fillcheck_check_frame == 0) {
            mDoMch_HeapCheckAll();
        }

        if (SyncWidthSound) {
            g_mDoMemCd_control.update();
        }

        mDoCPd_c::read();   // read controller input
        fapGm_Execute();    // handle game execution
        mDoAud_Execute();   // handle audio execution
        debug();            // run debugger
    } while (true);
}

#if DEBUG
// NONMATCHING
void parse_args(int argc, const char* argv[]) {
    int i;

    OS_REPORT("argc = %d\n", argc);
    for (i = 0; i < argc; i++) {
        OS_REPORT("argv[%d] = %s\n", i, argv[i]);
    }

    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--noopening") == 0) {
            dScnLogo_c::onOpeningCut();
        } else if (strcmp(argv[i], "--nobank") == 0) {
            dStage_roomControl_c::onNoArcBank();
            OS_REPORT("\x1b[33mアーカイブバンクを無効にしました\n\x1b[m");
        } else if (strcmp(argv[i], "--particle254") == 0) {
            // data_8074c494 = 1;
            OSReport_Warning("パーティクル２５４固定にしました\n");
        } else if (strncmp(argv[i], "--menu=", sizeof("--menu=") - 1) == 0) {
            char* var_r27 = strchr(argv[i] + 7, ',');
            if (var_r27 != NULL) {
                *var_r27 = 0;
                var_r27++;

                char* var_r26 = std::strchr(var_r27, ',');
                if (var_r26 != NULL) {
                    *var_r26 = 0;
                    var_r26++;

                    char* spC = std::strchr(var_r26, ',');
                    if (spC != NULL) {
                        *spC = 0;
                        spC++;
                        sscanf(spC, "%d", dScnMenu_c::cursolPoint);
                        dScnMenu_c::m_error_flags |= (u8)8;
                    }

                    sscanf(var_r26, "%d", dScnMenu_c::cursolLayer);
                    dScnMenu_c::m_error_flags |= (u8)4;
                }

                sscanf(var_r27, "%d", dScnMenu_c::cursolRoomNo);
                dScnMenu_c::m_error_flags |= (u8)2;
            }

            strcpy(dScnMenu_c::cursolStageName, argv[i] + 7);
            dScnMenu_c::m_error_flags |= (u8)1;

            OS_REPORT("\n\n\ndScnMenu_c::cursolLayer=[%x]", dScnMenu_c::cursolLayer);
            OS_REPORT("\ndScnMenu_c::cursolRoomNo=[%x]", dScnMenu_c::cursolRoomNo);
            OS_REPORT("\ndScnMenu_c::cursolStageName=[%s]\n\n", dScnMenu_c::cursolStageName);
        } else if (strncmp(argv[i], "--situation=", sizeof("--situation=") - 1) == 0) {
            for (int j = 0; j < 100; j++) {
                if (argv[i][12 + j] <= ' ') {
                    break;
                }

                g_presetHIO.filename_buf[j] = argv[i][12 + j];
            }

            OS_REPORT("\n11 g_presetHIO.filename_buf[0]=[%-100.100s]", g_presetHIO.filename_buf);
        } else if (strcmp(argv[i], "--noprint") == 0) {
            OSReportDisable();
        } else if (strcmp(argv[i], "--develop") == 0) {
            mDoMain::developmentMode = 1;
        } else if (strcmp(argv[i], "--nodevelop") == 0) {
            mDoMain::developmentMode = 0;
        } else if (strncmp(argv[i], "--e3argument=", sizeof("--e3argument=") - 1) == 0) {
            sscanf(argv[i] + sizeof("--e3argument=") - 1, "%d", &mDoMain::argument);
        } else if (strncmp(argv[i], "--gameheapsize=0x", sizeof("--gameheapsize=0x") - 1) == 0) {
            sscanf(argv[i] + sizeof("--gameheapsize=0x") - 1, "%x", &mDoMain::gameHeapSize);
        } else if (strncmp(argv[i], "--archiveheapsize=0x", sizeof("--archiveheapsize=0x") - 1) == 0) {
            sscanf(argv[i] + sizeof("--archiveheapsize=0x") - 1, "%x", &mDoMain::archiveHeapSize);
        } else if (strncmp(argv[i], "--memmargin=0x", sizeof("--memmargin=0x") - 1) == 0) {
            sscanf(argv[i] + sizeof("--memmargin=0x") - 1, "%x", &mDoMain::memMargin);
        } else if (strncmp(argv[i], "--e3menu=0x", sizeof("--e3menu=0x") - 1) == 0) {
            sscanf(argv[i] + sizeof("--e3menu=0x") - 1, "%x", &mDoMain::e3menu_no);
        } else {
            OSReport_Error("unknown argument %d, %s\n", i, argv[i]);
        }
    }
}
#endif

/* 803D3420-803DB420 000140 8000+00 1/1 0/0 0/0 .bss             mainThreadStack */
static u8 mainThreadStack[32768];

/* 803DB420-803DB740 008140 0318+08 1/1 0/0 0/0 .bss             mainThread */
static OSThread mainThread;

/* 80006454-800065D8 000D94 0184+00 0/0 1/1 0/0 .text            main */
void main() {
    OSThread* current_thread = OSGetCurrentThread();
    u8* stack = mainThreadStack;
    mDoMain::sPowerOnTime = OSGetTime();
    OSReportInit();
    version_check();
    mDoRstData* reset_data = (mDoRstData*)OSAllocFromArenaLo(0x18, 4);
    mDoRst::setResetData(reset_data);

    if (!mDoRst::getResetData()) {
        do {
        } while (true);
    }

    if (!(OSGetResetCode() >> 0x1F)) {
        mDoRst::offReset();
        mDoRst::offResetPrepare();
        mDoRst::off3ButtonReset();
        mDoRst::set3ButtonResetPort(-1);
        mDoRst::setLogoScnFlag(0);
        mDoRst::setProgSeqFlag(0);
        mDoRst::setProgChgFlag(0);
        mDoRst::setWarningDispFlag(0);
        mDoRst::offShutdown();
        mDoRst::offReturnToMenu();
    }

    g_dComIfG_gameInfo.ct();

    if (mDoMain::developmentMode < 0) {
        DVDDiskID* disk_id = DVDGetCurrentDiskID();

        if (disk_id->gameVersion > 0x90) {
            mDoMain::developmentMode = 1;
        } else if (disk_id->gameVersion > 0x80) {
            u32 consoleType = OSGetConsoleType();
            mDoMain::developmentMode = (consoleType >> 0x1C) & 1;
        } else {
            mDoMain::developmentMode = 0;
        }
    }

    s32 priority = OSGetThreadPriority(current_thread);
    OSCreateThread(&mainThread, (void*(*)(void*))main01, 0, stack + sizeof(mainThreadStack), sizeof(mainThreadStack), priority, 0);
    OSResumeThread(&mainThread);
    OSSetThreadPriority(current_thread, 0x1F);
    OSSuspendThread(current_thread);
}

/* 800065D8-800065E0 000F18 0008+00 0/0 2/0 0/0 .text            dump_sort__7JKRHeapFv */
bool JKRHeap::dump_sort() {
    return true;
}

/* ############################################################################################## */
/* 80450B38-80450B3C 000038 0004+00 0/0 2/2 0/0 .sbss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
Z2WolfHowlMgr* JASGlobalInstance<Z2WolfHowlMgr>::sInstance;

/* 80450B3C-80450B40 00003C 0004+00 0/0 6/6 0/0 .sbss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
Z2EnvSeMgr* JASGlobalInstance<Z2EnvSeMgr>::sInstance;

/* 80450B40-80450B44 000040 0004+00 0/0 6/6 0/0 .sbss
 * sInstance__32JASGlobalInstance<11Z2FxLineMgr>                */
Z2FxLineMgr* JASGlobalInstance<Z2FxLineMgr>::sInstance;

/* 80450B44-80450B48 000044 0004+00 0/0 18/18 0/0 .sbss
 * sInstance__31JASGlobalInstance<10Z2Audience>                 */
Z2Audience* JASGlobalInstance<Z2Audience>::sInstance;

/* 80450B48-80450B4C 000048 0004+00 0/0 17/17 0/0 .sbss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
Z2SoundObjMgr* JASGlobalInstance<Z2SoundObjMgr>::sInstance;

/* 80450B4C-80450B50 00004C 0004+00 0/0 10/10 0/0 .sbss
 * sInstance__32JASGlobalInstance<11Z2SoundInfo>                */
Z2SoundInfo* JASGlobalInstance<Z2SoundInfo>::sInstance;

/* 80450B50-80450B54 000050 0004+00 0/0 5/5 0/0 .sbss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
JAUSoundInfo* JASGlobalInstance<JAUSoundInfo>::sInstance;

/* 80450B54-80450B58 000054 0004+00 0/0 2/2 0/0 .sbss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
JAUSoundNameTable* JASGlobalInstance<JAUSoundNameTable>::sInstance;

/* 80450B58-80450B5C 000058 0004+00 0/0 12/12 0/0 .sbss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
JAUSoundTable* JASGlobalInstance<JAUSoundTable>::sInstance;

/* 80450B5C-80450B60 00005C 0004+00 0/0 6/6 0/0 .sbss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
JAISoundInfo* JASGlobalInstance<JAISoundInfo>::sInstance;

/* 80450B60-80450B64 000060 0004+00 0/0 29/29 0/0 .sbss
 * sInstance__31JASGlobalInstance<10Z2SoundMgr>                 */
Z2SoundMgr* JASGlobalInstance<Z2SoundMgr>::sInstance;

/* 80450B64-80450B68 000064 0004+00 0/0 2/2 0/0 .sbss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
JAIStreamMgr* JASGlobalInstance<JAIStreamMgr>::sInstance;

/* 80450B68-80450B6C 000068 0004+00 0/0 3/3 0/0 .sbss sInstance__29JASGlobalInstance<9JAISeqMgr>
 */
JAISeqMgr* JASGlobalInstance<JAISeqMgr>::sInstance;

/* 80450B6C-80450B70 00006C 0004+00 0/0 4/4 0/0 .sbss sInstance__28JASGlobalInstance<8JAISeMgr> */
JAISeMgr* JASGlobalInstance<JAISeMgr>::sInstance;

/* 80450B70-80450B74 000070 0004+00 0/0 9/9 0/0 .sbss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
Z2SpeechMgr2* JASGlobalInstance<Z2SpeechMgr2>::sInstance;

/* 80450B74-80450B78 000074 0004+00 0/0 22/22 0/0 .sbss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
Z2SoundStarter* JASGlobalInstance<Z2SoundStarter>::sInstance;

/* 80450B78-80450B7C 000078 0004+00 0/0 2/2 0/0 .sbss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
JAISoundStarter* JASGlobalInstance<JAISoundStarter>::sInstance;

/* 80450B7C-80450B80 00007C 0004+00 0/0 34/34 0/0 .sbss
 * sInstance__32JASGlobalInstance<11Z2StatusMgr>                */
Z2StatusMgr* JASGlobalInstance<Z2StatusMgr>::sInstance;

/* 80450B80-80450B84 000080 0004+00 0/0 46/46 0/0 .sbss
 * sInstance__31JASGlobalInstance<10Z2SceneMgr>                 */
Z2SceneMgr* JASGlobalInstance<Z2SceneMgr>::sInstance;

/* 80450B84-80450B88 000084 0004+00 0/0 38/38 0/0 .sbss sInstance__28JASGlobalInstance<8Z2SeqMgr>
 */
Z2SeqMgr* JASGlobalInstance<Z2SeqMgr>::sInstance;

/* 80450B88-80450B8C 000088 0004+00 0/0 25/25 0/0 .sbss sInstance__27JASGlobalInstance<7Z2SeMgr>
 */
Z2SeMgr* JASGlobalInstance<Z2SeMgr>::sInstance;

/* 80450B8C-80450B90 00008C 0004+00 0/0 6/6 0/0 .sbss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
JASAudioThread* JASGlobalInstance<JASAudioThread>::sInstance;

/* 80450B90-80450B98 000090 0004+04 0/0 4/4 0/0 .sbss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
JASDefaultBankTable* JASGlobalInstance<JASDefaultBankTable>::sInstance;
