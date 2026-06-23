/**
 * m_Do_main.cpp
 * Main Initialization
 */

#include "m_Do/machine.h" // IWYU pragma: keep

#include "m_Do/m_Do_main.h"
#include "DynamicLink.h"
#include "JSystem/JAudio2/JASAudioThread.h"
#include "JSystem/JAudio2/JAUSoundTable.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTReport.h"
#include "JSystem/JUtility/JUTException.h"
#include "JSystem/JUtility/JUTProcBar.h"
#include "JSystem/JHostIO/JORServer.h"
#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "c/c_dylink.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_logo.h"
#include "d/d_s_menu.h"
#include "d/d_s_play.h"
#include "d/d_debug_pad.h"
#include "f_ap/f_ap_game.h"
#include "f_op/f_op_msg.h"
#include "m_Do/m_Do_MemCard.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_machine.h"
#include "m_Do/m_Do_printf.h"
#include "m_Do/m_Do_ext2.h"
#include "SSystem/SComponent/c_counter.h"
#include <cstring>

#if PLATFORM_WII
#include "d/d_cursor_mng.h"
#endif

#if PLATFORM_WII || PLATFORM_SHIELD
#include <revolution/sc.h>
#endif

#if PLATFORM_WII
#define GET_BUTTON(pad) cAPICPad_BUTTON(2)
#define GET_TRIGGER(pad) cAPICPad_TRIGGER(2)
#define GET_ANALOG_L(pad) cAPICPad_L_ANALOG(2)
#define GET_ANALOG_R(pad) cAPICPad_R_ANALOG(2)
#define GET_STICK_X(pad) cAPICPad_X_STICK(2)
#define GET_STICK_Y(pad) cAPICPad_Y_STICK(2)
#else
#define GET_BUTTON(pad) mDoCPd_c::getHold(pad)
#define GET_TRIGGER(pad) mDoCPd_c::getTrig(pad)
#define GET_ANALOG_L(pad) mDoCPd_c::getAnalogL(pad)
#define GET_ANALOG_R(pad) mDoCPd_c::getAnalogR(pad)
#define GET_STICK_X(pad) mDoCPd_c::getStickX(pad)
#define GET_STICK_Y(pad) mDoCPd_c::getStickY(pad)
#endif

class mDoMain_HIO_c : public mDoHIO_entry_c {
public:
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);
};

static void version_check() {
#if PLATFORM_GCN
    if (!strcmp("20Apr2004", "20Apr2004") && !strcmp("Patch2", "Patch2")) {
        return;
    }
#elif PLATFORM_WII
    if (!strcmp("07Sep2006", "07Sep2006") && !strcmp("Patch9", "Patch9")) {
        return;
    }
#endif

#if PLATFORM_GCN || PLATFORM_WII
    // "SDK version doesn't match. Stopping\n"
    OSReport_Error("SDKのバージョンが一致しません。停止します\n");
    do {
    } while (true);
#endif
}

char mDoMain::COPYDATE_STRING[18] = "??/??/?? ??:??:??";

#if VERSION == VERSION_WII_USA_R0
static HeapCheck RootHeapCheck = {
    "Root", NULL, 0, 0x7FFFFFFF, 0x1400000, 0x140, 0x10000, 0, 0,
};
static HeapCheck SystemHeapCheck = {
    "System", NULL, 0, 0x7FFFFFFF, 0x870000, 0x87, 0x10000, 0, 0,
};
static HeapCheck ZeldaHeapCheck = {
    "Zelda", NULL, 0, 0x7FFFFFFF, 0x7C0000, 0x7C, 0x10000, 0, 0,
};
static HeapCheck GameHeapCheck = {
    "Game", NULL, 0, 0x7FFFFFFF, 0x300000, 0x30, 0x10000, 0, 0,
};
static HeapCheck ArchiveHeapCheck = {
    "Archive", NULL, 0, 0x7FFFFFFF, 0x880000, 0x88, 0x10000, 0, 0,
};
static HeapCheck J2dHeapCheck = {
    "J2d", NULL, 0, 0x7FFFFFFF, 0x1000, 0x10, 0x100, 0, 0,
};
static HeapCheck CommandHeapCheck = {
    "Command", NULL, 0, 0x7FFFFFFF, 0x1000, 0x10, 0x100, 0, 0,
};
#else
static HeapCheck RootHeapCheck = HeapCheck(0, "Root", "ルート");
static HeapCheck SystemHeapCheck = HeapCheck(0, "System", "システム");
static HeapCheck ZeldaHeapCheck = HeapCheck(0, "Zelda", "ゼルダ");
static HeapCheck GameHeapCheck = HeapCheck(0, "Game", "ゲーム");
static HeapCheck ArchiveHeapCheck = HeapCheck(0, "Archive", "アーカイブ");
static HeapCheck J2dHeapCheck = HeapCheck(0, "J2d", "J2D");
static HeapCheck HostioHeapCheck = HeapCheck(0, "Hostio", "ホストIO");
static HeapCheck CommandHeapCheck = HeapCheck(0, "Command", "コマンド");
#endif

static HeapCheck* HeapCheckTable[] = {
    &RootHeapCheck,    &SystemHeapCheck, &ZeldaHeapCheck,  &GameHeapCheck,
    &ArchiveHeapCheck, &J2dHeapCheck,
#if VERSION != VERSION_WII_USA_R0
    &HostioHeapCheck,
#endif
    &CommandHeapCheck,
};

#if DEBUG
int mDoMain::argument = -1;
#endif

s8 mDoMain::developmentMode = -1;

#if DEBUG
u32 mDoMain::gameHeapSize = 0xFFFFFFFF;
u32 mDoMain::archiveHeapSize = 0xFFFFFFFF;
#endif

u32 mDoMain::memMargin = 0xFFFFFFFF;

#if DEBUG
int mDoMain::e3menu_no = -1;
#endif

u8 mHeapBriefType = 4;

#if DEBUG
static u8 memorycheck_check_frame;
#endif

static u8 fillcheck_check_frame;

OSTime mDoMain::sPowerOnTime;

OSTime mDoMain::sHungUpTime;

static u8 mDisplayHeapSize;

#if DEBUG
static u8 mReportDisable;
#endif

static u8 mSelectHeapBar;

#if DEBUG
static u8 mVisibleHeapBar;
static u8 mPrintFrameLine;
#endif

static u8 mCheckHeap;

#if DEBUG
mDoMain_HIO_c mDoMain_HIO;
#endif

static void printFrameLine() {
    OSCalendarTime calendar;
    OSTime time = OSGetTime();
    u32 retrace = VIGetRetraceCount();
    OSTicksToCalendarTime(time, &calendar);

    OS_REPORT("\x1b[44m-- %5d - %5d - %3d %d %04d/%02d/%02d %02d:%02d:%02d\'%03d\'\'%03d\n\x1b[m",
              g_Counter.mCounter0, retrace,
              calendar.yday, calendar.wday, calendar.year, calendar.mon, calendar.mday,
              calendar.hour, calendar.min, calendar.sec, calendar.msec, calendar.usec);
}

#if VERSION != VERSION_WII_USA_R0
inline HeapCheck::HeapCheck(JKRExpHeap* heap, const char* name, const char* jName) {
    mName = name;
    mJName = jName;
    setHeap(heap);
}
#endif

void HeapCheck::CheckHeap1() {
    s32 totalUsedSize = mHeap->getTotalUsedSize();
    s32 freeSize = mHeap->getFreeSize();

    if (mMaxTotalUsedSize < totalUsedSize)
        mMaxTotalUsedSize = totalUsedSize;

    if (mMaxTotalFreeSize > freeSize)
        mMaxTotalFreeSize = freeSize;
}

static void CheckHeap(u32 i_padNo) {
    mDoMch_HeapCheckAll();
    OSCheckActiveThreads();

    int saveRel =
        (GET_BUTTON(i_padNo) & ~PAD_TRIGGER_Z) == (PAD_TRIGGER_L + PAD_TRIGGER_R) &&
            GET_TRIGGER(i_padNo) & PAD_TRIGGER_Z;

    for (int i = 0; i < ARRAY_SIZE(HeapCheckTable); i++) {
        HeapCheckTable[i]->CheckHeap1();
        if (saveRel) {
            HeapCheckTable[i]->saveRelBase();
        }
    }
}

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

s32 HeapCheck::getUsedCount() const {
    return countUsed(mHeap);
}

#if VERSION == VERSION_WII_USA_R0
void HeapCheck::heapDisplay() {
#else
void HeapCheck::heapDisplay() const {
#endif
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

#if VERSION == VERSION_WII_USA_R0
u32 HeapCheck::getTargetHeapSize() {
    field_0x14 = field_0x18 * mTargetHeapSize;
    return field_0x14;
}
#endif

static void debugDisplay() {
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

        for (int i = 0; i < ARRAY_SIZE(HeapCheckTable); i++) {
            HeapCheck* heap_check = HeapCheckTable[i];
#if VERSION == VERSION_WII_USA_R0
#define expHeap heap_check->getHeap()
#else
            JKRExpHeap* expHeap = heap_check->getHeap();
#endif

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

#if defined(expHeap)
#undef expHeap
#endif

            JUTReport(475, (i * 44) + 150, " [%s]", heap_check->getName());
            JUTReport(475, (i * 44) + 164, "%10d", check1);
            JUTReport(475, (i * 44) + 178, "%10d", check2);
        }
    }
}

static void my_genCheckBox(JORMContext* mctx, const char* label, u8* pSrc, u8 mask) {
    mctx->genCheckBox(label, pSrc, mask);
}

#if DEBUG
void mDoMain_HIO_c::genMessage(JORMContext* mctx) {
    mctx->genSlider("コード破壊チェックフレーム", &memorycheck_check_frame, 0, 0xFF);
    mctx->genButton("コード破壊チェックcheck", 0);
    mctx->genButton("コード破壊チェックsave", 1);
    mctx->genButton("コード破壊チェックdiff", 2);
    mctx->genCheckBox("デバッグフィル", &mDoMch::mDebugFill, 0x1);
    mctx->genSlider("ヒープ破壊チェックフレーム", &fillcheck_check_frame, 0, 0xFF);
    mctx->genButton("ヒープ破壊チェック", 3);
    mctx->genButton("ヒープFree領域フィル", 4);
    mctx->genButton("浮動小数点例外を(再び)有効にする", 5);
    mctx->genCheckBox("◎無効演算", &mDoMch::FpscrEnableBits, 0x80);
    mctx->genCheckBox("○オーバー", &mDoMch::FpscrEnableBits, 0x40);
    mctx->genCheckBox("△アンダー", &mDoMch::FpscrEnableBits, 0x20);
    mctx->genCheckBox("○ゼロ除算", &mDoMch::FpscrEnableBits, 0x10);
    mctx->genCheckBox("▲不正確  ", &mDoMch::FpscrEnableBits, 0x8);

    mctx->genLabel("ソースファイル：m_Do_main.cpp", 0);
    mctx->genCheckBox("OSReport 表示しない", &mReportDisable, 0x1);
    mctx->genCheckBox("OSReport 優先度最高", &print_highPriority, 0x1);
    mctx->genCheckBox("OSReport スレッド表示", &print_threadID, 0x1);
    mctx->genCheckBox("OSReport CallerPC表示", &print_callerPC, 0x1);
    mctx->genSlider("レベル", &print_callerPCLevel, 3, 10);

    mctx->startComboBox("簡易ヒープ表示", &mHeapBriefType);
    mctx->genComboBoxItem("なし", 0);
    mctx->genComboBoxItem("合計空き・最大空き", 1);
    mctx->genComboBoxItem("最大使用量・ヒープサイズ元使用量", 2);
    mctx->genComboBoxItem("使用ブロック数・元使用量", 3);
    mctx->genComboBoxItem("相対 使用ブロック数・元使用量", 4);
    mctx->endComboBox();

    my_genCheckBox(mctx, "ヒープサイズ表示を行う", &mDisplayHeapSize, 1);
    mctx->genCheckBox("ヒープバーを表示する", &mVisibleHeapBar, 0x1);

    mctx->startComboBox("ヒープバーの種類", &mSelectHeapBar);
    mctx->genComboBoxItem("カレント", 0);
    for (int i = 0; i < ARRAY_SIZE(HeapCheckTable); i++) {
        mctx->genComboBoxItem(HeapCheckTable[i]->getJName(), i + 1);
    }
    mctx->endComboBox();

    mctx->genCheckBox("ヒープチェック", &mCheckHeap, 0x1);
    mctx->genCheckBox("フレームバー表示", &mPrintFrameLine, 0x1);

    mctx->startComboBox("GX警告レベル", &mDoMch::GXWarningLevel);
    mctx->genComboBoxItem("エラー＆警告なし", 0);
    mctx->genComboBoxItem("致命的なエラー", 1);
    mctx->genComboBoxItem("中警告と全エラー", 2);
    mctx->genComboBoxItem("すべての警告", 3);
    mctx->endComboBox();

    mctx->genButton("GX警告を１フレームだけ実行", 9);
    mctx->genButton("ダイナミックリンク状況をダンプ", 7);
    mctx->genButton("ダイナミックリンクカウンタをリセット", 8);
    mctx->genButton("ARAMヒープをダンプ", 10);
    mctx->genButton("ゲームリソースをダンプ", 11);
    mctx->genButton("RES_CONTROLをダンプ", 12);
    mctx->genButton("ルートヒープをダンプ", 13);
    mctx->genButton("システムヒープをダンプ", 14);
    mctx->genButton("ゼルダヒープをダンプ", 15);
    mctx->genButton("ゲームヒープをダンプ", 16);
    mctx->genButton("アーカイブヒープをダンプ", 17);
    mctx->genButton("J2Dヒープをダンプ", 18);
    mctx->genButton("ホストIOヒープをダンプ", 19);
    mctx->genButton("コマンドヒープをダンプ", 20);

    mctx->genCheckBox("ダイナミックリンク冗長表示", &DynamicModuleControlBase::verbose, 0x1);
    mctx->genCheckBox("ヒープコールバック冗長表示", &mDoMch::myHeapVerbose, 0x1);
    mctx->genCheckBox("ヒープコールバックチェック", &mDoMch::myHeapCallbackCheck, 0x1);
    mctx->genCheckBox("mDoDvdThd::verbose冗長表示", &mDoDvdThd::verbose, 0x1);
    mctx->genCheckBox("mDoDvdThd::DVDRead冗長表示", &mDoDvdThd::Report_DVDRead, 0x1);
    mctx->genCheckBox("mDoDvdThd::DVDログモード", &mDoDvdThd::DVDLogoMode, 0x1);
    mctx->genCheckBox("fopMsg::MemCheck ヒープチェック", &fopMsg::MemCheck, 0x1);
}

void mDoMain_HIO_c::listenPropertyEvent(const JORPropertyEvent* property) {
    JORMContext* mctx = attachJORMContext(8);
    JORReflexible::listenPropertyEvent(property);

    if ((u32)property->id >= 13 && (u32)property->id <= 20) {
        int sp14 = (u32)property->id - 13;
        HeapCheck* heapCheck = HeapCheckTable[sp14];
        JUTReportConsole_f("\n[%sHeap]\n", heapCheck->getName());
        heapCheck->getHeap()->dump_sort();
    } else {
        switch ((u32)property->id) {
        case 0:
            FixedMemoryCheck::checkAll();
            break;
        case 1:
            FixedMemoryCheck::saveAll();
            break;
        case 2:
            FixedMemoryCheck::diffAll();
            break;
        case 3:
            mDoMch_HeapCheckAll();
            break;
        case 4:
            mDoMch_HeapFreeFillAll();
            break;
        case 5: {
            u32 fpscr = PPCMffpscr();
            JUTException::setFPException(0);
            JUTException::setFPException(mDoMch::FpscrEnableBits);
            PPCMtfpscr(fpscr);
            break;
        }
        case 9:
            GXSetVerifyLevel(GX_WARN_ALL);
            mDoMch::GXWarningExecuteFrame = TRUE;
            break;
        case 7: {
            int RoomId = dComIfGp_roomControl_getStayNo();
            JUTReportConsole_f("\nRoomId = %d\n", RoomId);

            JUTReportConsole_f("\nDynamicModule\n");
            DynamicModuleControlBase::dump();
            break;
        }
        case 8:
            DynamicModuleControlBase::resetDoLinkCount();
            break;
        case 10: {
            JUTReportConsole_f("\nAramHeap\n");
            JKRAramHeap* aramHeap = JKRAram::getAramHeap();
            if (aramHeap != NULL) {
                aramHeap->dump();
            }
            break;
        }
        case 11:
            JUTReportConsole_f("\nGameResource\n");
            g_dComIfG_gameInfo.mResControl.dump();
            break;
        case 12:
            JUTReportConsole_f("\nResControl\n");
            dComIfG_dumpResControl();
            break;
        case 6:
        default:
            if ((u8*)property->id == &mDisplayHeapSize) {
                mctx->startUpdateNode(this);
                mctx->endUpdateNode();
            }

            if ((u8*)property->id == &mReportDisable) {
                if (mReportDisable == 0) {
                    OSReportEnable();
                } else {
                    OSReportDisable();
                }
            }

            if ((u8*)property->id == &mSelectHeapBar) {
                JKRHeap* heap = NULL;
                u32 select_heap = mSelectHeapBar - 1;
                if (select_heap < ARRAY_SIZE(HeapCheckTable)) {
                    heap = HeapCheckTable[select_heap]->getHeap();
                }

                JUTProcBar::getManager()->setWatchHeap(heap);
            }

            if ((u8*)property->id == &mVisibleHeapBar) {
                JUTProcBar::getManager()->setVisibleHeapBar(mVisibleHeapBar);
            }

            if ((u8*)property->id == &mDoMch::GXWarningLevel) {
                GXSetVerifyLevel((GXWarningLevel)mDoMch::GXWarningLevel);
            }

            if ((u8*)property->id == &mDoMch::mDebugFill) {
                JKRHeap::setDefaultDebugFill(mDoMch::mDebugFill);

                for (JSUTree<JKRHeap>* i = JKRGetRootHeap()->getHeapTree().getFirstChild(); i != NULL; i = i->getNextChild()) {
                    JKRHeap* heap = i->getObject();
                    heap->setDebugFill(mDoMch::mDebugFill);
                }
            }

            JKRSetDebugFillNotuse(mDoMch::mDebugFillNotUse);
            JKRSetDebugFillNew(mDoMch::mDebugFillNew);
            JKRSetDebugFillDelete(mDoMch::mDebugFillDelete);
        }
    }

    releaseJORMContext(mctx);
}
#endif

static bool Debug_console(u32 i_padNo) {
    JUTConsole* console = JFWSystem::getSystemConsole();
    if (console != NULL) {
        static f32 console_position_x = 20.0f;
        static f32 console_position_y = 30.0f;
        static f32 console_scroll = 0.0f;

        if (GET_TRIGGER(i_padNo) & PAD_TRIGGER_Z && !(GET_BUTTON(i_padNo) & ~PAD_TRIGGER_Z))
        {
            console->setVisible(console->isVisible() == false);
            JUTAssertion::setMessageCount(0);
        }

        if (console->isVisible()) {
            if ((GET_BUTTON(i_padNo) & PAD_TRIGGER_L && GET_BUTTON(i_padNo) & PAD_TRIGGER_R) ||
                (GET_ANALOG_L(i_padNo) > 0.0f && GET_ANALOG_R(i_padNo) > 0.0f))
            {
                f32 stick_x = GET_STICK_X(i_padNo);
                f32 stick_y = GET_STICK_Y(i_padNo);

                if (GET_BUTTON(i_padNo) & (PAD_BUTTON_Y | PAD_BUTTON_X) &&
                    GET_TRIGGER(i_padNo) & PAD_BUTTON_START)
                {
                    console->clear();
                }

                if (!(GET_BUTTON(i_padNo) & (PAD_BUTTON_Y | PAD_BUTTON_X))) {
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
                    if (GET_BUTTON(i_padNo) & PAD_BUTTON_X) {
                        console_position_x += stick_x;
                    }

                    if (GET_BUTTON(i_padNo) & PAD_BUTTON_Y) {
                        console_position_y -= stick_y;
                    }
                }

                if (GET_TRIGGER(i_padNo) & PAD_BUTTON_A) {
                    console->dumpToTerminal(0xFFFFFFFF);
                    console->setOutput(JUTConsole::OUTPUT_OSREPORT | JUTConsole::OUTPUT_CONSOLE);
                }

                JUTReport(30, 390, 1, "Press X+Y+START to CLEAR console.");
                JUTReport(30, 400, 1, "3DStick UP/Down to scroll");
                JUTReport(30, 410, 1, "Press A to output terminal from console.");
                JUTReport(30, 420, 1, "SCROLL：%3d %3d %3d Output=%1x", console->getLineOffset(),
                          console->getPositionX(), console->getPositionY(), console->getOutput());
            } else {
                if (GET_TRIGGER(i_padNo) & PAD_BUTTON_DOWN) {
                    g_HIO.mDisplayMeter ^= (u8)1;
                }

                if (GET_TRIGGER(i_padNo) & PAD_BUTTON_LEFT) {
                    JKRAramHeap* aram = JKRAram::getAramHeap();
                    if (aram != NULL) {
                        aram->dump();
                    }

                    DynamicModuleControlBase::dump();
                    g_dComIfG_gameInfo.mResControl.dump();
                }

                if (GET_TRIGGER(i_padNo) & PAD_BUTTON_RIGHT) {
#if PLATFORM_GCN
                    // hack to fix JKRHeap::dump_sort placement in .text
                    ((JKRExpHeap*)JKRGetSystemHeap())->dump_sort();
#else
                    JKRGetSystemHeap()->dump_sort();
#endif
                }

                if (GET_TRIGGER(i_padNo) & PAD_BUTTON_UP) {
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

#if VERSION == VERSION_SHIELD_DEBUG
#define COPYDATE_PATH "/str/RVL/Debug/COPYDATE"
#elif PLATFORM_WII
#define COPYDATE_PATH "/str/Rfinal/Release/COPYDATE"
#else
#define COPYDATE_PATH "/str/Final/Release/COPYDATE"
#endif

s32 LOAD_COPYDATE(void*) {
    DVDFileInfo ATTRIBUTE_ALIGN(32) fileInfo;
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

static void debug() {
    #if DEBUG
    if (mPrintFrameLine) {
        printFrameLine();
    }
    #endif

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
                if (mHeapBriefType < 5) {
                    mHeapBriefType++;
                } else {
                    mHeapBriefType = 1;
                }
            }

            debugDisplay();
        }

        #if DEBUG
        if (!dDebugPad.Active()) {
            Debug_console(PAD_3);
        }
        #else
        Debug_console(PAD_3);
        #endif

        #if DEBUG
        fapGm_HIO_c::startCpuTimer();

        if (fapGmHIO_getHostIO()) {
            JKRHeap* var_r30 = mDoExt_getHostIOHeap();
            JKRHeap* var_r29 = mDoExt_setCurrentHeap(var_r30);
            JOR_MESSAGELOOP();
            mDoExt_setCurrentHeap(var_r29);
        }

        fapGm_HIO_c::printCpuTimer("");
        fapGm_HIO_c::stopCpuTimer("ホストＩＯ");
        fapGm_HIO_c::printCpuTimer("\n↑↑↑↑↑↑↑↑↑↑　ＣＰＵ時間計測終了　↑↑↑↑↑↑↑↑↑↑\n");
        fapGm_HIO_c::offCpuTimer();
        #endif
    }
}

// linker generated symbols
extern u8 _f_text[];
extern u8 _e_text[];
extern u8 _f_ctors[];
extern u8 _e_ctors[];
extern u8 _f_dtors[];
extern u8 _e_dtors[];
extern u8 _f_rodata[];
extern u8 _e_rodata[];

#if PLATFORM_WII || PLATFORM_SHIELD
const int audioHeapSize = 0x169000;
#else
const int audioHeapSize = 0x14D800;
#endif

inline void HeapCheck::setHeap(JKRExpHeap* i_heap) {
    mHeap = i_heap;
#if VERSION != VERSION_WII_USA_R0
    if (i_heap != NULL) {
        mTargetHeapSize = i_heap->getHeapSize();
    }
#endif
}

void main01(void) {
    OS_REPORT("\x1B[m");

    // Setup heaps, setup exception manager, set RNG seed, setup DVDError Thread, setup Memory card Thread
    mDoMch_Create();

    #if DEBUG
    FixedMemoryCheck* local_20 = FixedMemoryCheck::easyCreate(_f_text, intptr_t(_e_text - _f_text));
    FixedMemoryCheck* local_24 = FixedMemoryCheck::easyCreate(_f_ctors, intptr_t(_e_ctors - _f_ctors));
    FixedMemoryCheck* local_28 = FixedMemoryCheck::easyCreate(_f_dtors, intptr_t(_e_dtors - _f_dtors));
    FixedMemoryCheck* local_2c = FixedMemoryCheck::easyCreate(_f_rodata, intptr_t(_e_rodata - _f_rodata));
    #endif

    // setup FrameBuffer and ZBuffer, init display lists
    mDoGph_Create();

#if PLATFORM_WII
    mReCPd::create();
#endif

    // Setup control pad
    mDoCPd_c::create();

    RootHeapCheck.setHeap((JKRExpHeap*)JKRGetRootHeap());
    SystemHeapCheck.setHeap((JKRExpHeap*)JKRGetSystemHeap());
    ZeldaHeapCheck.setHeap(mDoExt_getZeldaHeap());
    GameHeapCheck.setHeap(mDoExt_getGameHeap());
    ArchiveHeapCheck.setHeap(mDoExt_getArchiveHeap());
    J2dHeapCheck.setHeap(mDoExt_getJ2dHeap());
#if VERSION != VERSION_WII_USA_R0
    HostioHeapCheck.setHeap(mDoExt_getHostIOHeap());
#endif
    CommandHeapCheck.setHeap(mDoExt_getCommandHeap());

    #if DEBUG
    JKRHeap* var_r28 = mDoExt_getHostIOHeap();
    JKRHeap* sp10 = mDoExt_setCurrentHeap(var_r28);
    JOR_INIT();
    JOR_SETROOTNODE("root", &mDoHIO_root, 4, 3);
    mDoExt_setCurrentHeap(sp10);

    var_r28->dump_sort();
    s32 local_34 = var_r28->getTotalFreeSize();
    OSReport("\x1b[36mHOSTIOヒープ残り %u Bytes\n\x1b[m", local_34);
    #endif

    JUTConsole* console = JFWSystem::getSystemConsole();
    console->setOutput(mDoMain::developmentMode ? JUTConsole::OUTPUT_OSR_AND_CONSOLE :
                                                  JUTConsole::OUTPUT_NONE);
    console->setPosition(32, 42);

    mDoDvdThd_callback_c::create((mDoDvdThd_callback_func)LOAD_COPYDATE, NULL);
    fapGm_Create(); // init framework

#if PLATFORM_WII
    dCsr_mng_c::create();
#endif

    #if DEBUG
    mDoMain_HIO.entryHIO("メイン");
    g_regHIO.id = mDoHIO_createChild("レジスタ", &g_regHIO);
    g_presetHIO.field_0x4 = mDoHIO_createChild("状況ファイル", &g_presetHIO);
    #endif

    fopAcM_initManager();
    mDisplayHeapSize = 0;
    cDyl_InitAsync(); // init RELs

    g_mDoAud_audioHeap = JKRCreateSolidHeap(audioHeapSize, JKRGetCurrentHeap(), false);

    do {
        static u32 frame;
        frame++;

        #if DEBUG
        if (memorycheck_check_frame != 0 && frame % memorycheck_check_frame == 0) {
            FixedMemoryCheck::checkAll();
        }
        #endif

        if (fillcheck_check_frame != 0 && frame % fillcheck_check_frame == 0) {
            mDoMch_HeapCheckAll();
        }

#if PLATFORM_GCN || PLATFORM_SHIELD
        if (mDoDvdThd::SyncWidthSound) {
            mDoMemCd_UpDate();
        }
#endif

#if PLATFORM_WII
        mReCPd::read(); // read Wii controller input
#endif

        mDoCPd_c::read();   // read GCN controller input

        #if DEBUG
        if (mDoMch::GXWarningExecuteFrame) {
            GXSetVerifyLevel(GX_WARN_ALL);
        }
        #endif

        fapGm_Execute();    // handle game execution

        #if DEBUG
        if (mDoMch::GXWarningExecuteFrame) {
            mDoMch::GXWarningExecuteFrame = 0;
            GXSetVerifyLevel((GXWarningLevel)mDoMch::GXWarningLevel);
        }
        #endif

        #if DEBUG
        fapGm_HIO_c::startCpuTimer();
        #endif

        mDoAud_Execute();   // handle audio execution

        #if DEBUG
        fapGm_HIO_c::printCpuTimer("");
        fapGm_HIO_c::stopCpuTimer("オーディオ");
        #endif

        debug();            // run debugger
    } while (true);
}

#if DEBUG
JHIComPortManager<JHICmnMem>* JHIComPortManager<JHICmnMem>:: instance;

// DEBUG NONMATCHING
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
            fapGm_HIO_c::mParticle254Fix = 1;
            OSReport_Warning("パーティクル２５４固定にしました\n");
        } else if (strncmp(argv[i], "--menu=", sizeof("--menu=") - 1) == 0) {
            char* var_r27 = strchr(argv[i] + 7, ',');
            if (var_r27 != NULL) {
                *var_r27 = '\0';
                var_r27++;

                char* var_r26 = std::strchr(var_r27, ',');
                if (var_r26 != NULL) {
                    *var_r26 = '\0';
                    var_r26++;

                    char* spC = std::strchr(var_r26, ',');
                    if (spC != NULL) {
                        *spC = 0;
                        spC++;
                        sscanf(spC, "%d", &dScnMenu_c::cursolPoint);
                        dScnMenu_c::m_error_flags |= (u8)8;
                    }

                    sscanf(var_r26, "%d", &dScnMenu_c::cursolLayer);
                    dScnMenu_c::m_error_flags |= (u8)4;
                }

                sscanf(var_r27, "%d", &dScnMenu_c::cursolRoomNo);
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

#if PLATFORM_GCN
#define MAIN_THREAD_STACK_SIZE 0x8000
#else
#define MAIN_THREAD_STACK_SIZE 0xF000
#endif

#if PLATFORM_GCN
static u8 mainThreadStack[MAIN_THREAD_STACK_SIZE];
#endif

OSThread mainThread;

void main(int argc, const char* argv[]) {
    OSThread* current_thread = OSGetCurrentThread();
#if PLATFORM_GCN
    u8* stack = mainThreadStack;
#else
    u8 stack[MAIN_THREAD_STACK_SIZE] ATTRIBUTE_ALIGN(32);
    u8* stack_ptr = stack;
#endif
    mDoMain::sPowerOnTime = OSGetTime();
    OSReportInit();
    version_check();

    #if PLATFORM_WII || PLATFORM_SHIELD
    mDoRst::setResetData((mDoRstData*)OSAllocFromMEM1ArenaLo(0x18, 4));
    #else
    mDoRst::setResetData((mDoRstData*)OSAllocFromArenaLo(0x18, 4));
    #endif

    if (!mDoRst::getResetData()) {
        do {
        } while (true);
    }

    if (!((OSGetResetCode() & 0x80000000) ? 1 : 0)) {
        mDoRst::offReset();
        mDoRst::offResetPrepare();
        mDoRst::off3ButtonReset();
        mDoRst::set3ButtonResetPort(-1);
        mDoRst::setLogoScnFlag(0);
        mDoRst::setProgSeqFlag(0);
        mDoRst::setProgChgFlag(0);
        mDoRst::setWarningDispFlag(0);
#if VERSION != VERSION_WII_USA_R0
        mDoRst::offShutdown();
        mDoRst::offReturnToMenu();
#endif
    }

    #if PLATFORM_WII || PLATFORM_SHIELD
    SCInit();
    #endif

    dComIfG_ct();

    #if PLATFORM_WII || PLATFORM_SHIELD
    u32 status;
    do {
        status = SCCheckStatus();
    } while (status != 0);
    JUT_ASSERT(1785, status != 2);
    #endif

    #if DEBUG
    parse_args(argc, argv);
    #endif

    if (mDoMain::developmentMode < 0) {
        DVDDiskID* disk_id = DVDGetCurrentDiskID();

        if (disk_id->gameVersion > 0x90) {
            mDoMain::developmentMode = 1;
        } else if (disk_id->gameVersion > 0x80) {
            mDoMain::developmentMode = (OSGetConsoleType() & OS_CONSOLE_DEVELOPMENT) != 0;
        } else {
            mDoMain::developmentMode = 0;
        }
    }

    OS_REPORT("メインスレッドを作成します\n");
    OSCreateThread(&mainThread, (void*(*)(void*))main01, NULL, stack + MAIN_THREAD_STACK_SIZE,
                   MAIN_THREAD_STACK_SIZE, OSGetThreadPriority(current_thread), 0);
    OSResumeThread(&mainThread);
    OS_REPORT("メインスレッドを起動しました <%x>\n", &mainThread);
    OSSetThreadPriority(current_thread, 0x1F);
    OSSuspendThread(current_thread);
}

// hack to fix JKRHeap::dump_sort placement in .text
#if PLATFORM_GCN
static void dummy() {
    // probably fake, needed to pull in JKRHeap::dump_sort
    ((JKRHeap*)NULL)->dump_sort();
}
#endif

#if PLATFORM_GCN
template<>
Z2WolfHowlMgr* JASGlobalInstance<Z2WolfHowlMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2EnvSeMgr* JASGlobalInstance<Z2EnvSeMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2FxLineMgr* JASGlobalInstance<Z2FxLineMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2Audience* JASGlobalInstance<Z2Audience>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SoundObjMgr* JASGlobalInstance<Z2SoundObjMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SoundInfo* JASGlobalInstance<Z2SoundInfo>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAUSoundInfo* JASGlobalInstance<JAUSoundInfo>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAUSoundNameTable* JASGlobalInstance<JAUSoundNameTable>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAUSoundTable* JASGlobalInstance<JAUSoundTable>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAISoundInfo* JASGlobalInstance<JAISoundInfo>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SoundMgr* JASGlobalInstance<Z2SoundMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAIStreamMgr* JASGlobalInstance<JAIStreamMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAISeqMgr* JASGlobalInstance<JAISeqMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAISeMgr* JASGlobalInstance<JAISeMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SpeechMgr2* JASGlobalInstance<Z2SpeechMgr2>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SoundStarter* JASGlobalInstance<Z2SoundStarter>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JAISoundStarter* JASGlobalInstance<JAISoundStarter>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2StatusMgr* JASGlobalInstance<Z2StatusMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SceneMgr* JASGlobalInstance<Z2SceneMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SeqMgr* JASGlobalInstance<Z2SeqMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
Z2SeMgr* JASGlobalInstance<Z2SeMgr>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JASAudioThread* JASGlobalInstance<JASAudioThread>::sInstance JAS_GLOBAL_INSTANCE_INIT;

template<>
JASDefaultBankTable* JASGlobalInstance<JASDefaultBankTable>::sInstance JAS_GLOBAL_INSTANCE_INIT;

#ifndef __MWERKS__
template<>
JAUSectionHeap* JASGlobalInstance<JAUSectionHeap>::sInstance JAS_GLOBAL_INSTANCE_INIT;
#endif
#endif
