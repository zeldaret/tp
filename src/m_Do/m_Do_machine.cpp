/**
 * m_Do_machine.cpp
 * Exception Management
 */

#include "m_Do/m_Do_machine.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTDbPrint.h"
#include "JSystem/JUtility/JUTException.h"
#include "JSystem/JUtility/JUTVideo.h"
#include "JSystem/JKernel/JKRAramStream.h"
#include "JSystem/JKernel/JKRDvdAramRipper.h"
#include "JSystem/JKernel/JKRAram.h"
#include "SSystem/SComponent/c_malloc.h"
#include "SSystem/SComponent/c_math.h"
#include "SSystem/SComponent/c_API_controller_pad.h"
#include "base/PPCArch.h"
#include "m_Do/m_Do_DVDError.h"
#include "m_Do/m_Do_MemCard.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_machine_exception.h"
#include "m_Do/m_Do_main.h"

/* 80450BF0-80450BF4 0000F0 0004+00 1/1 0/0 0/0 .sbss            None */
static u8 mDebugFill;

/* 80450BF4-80450BF8 0000F4 0004+00 1/1 0/0 0/0 .sbss            solidHeapErrors */
static int solidHeapErrors;

/* 80450BF8-80450BFC 0000F8 0004+00 1/1 0/0 0/0 .sbss            gameHeapErrors */
static int gameHeapErrors;

/* 80450BFC-80450C00 0000FC 0004+00 1/1 0/0 0/0 .sbss            zeldaHeapErrors */
static int zeldaHeapErrors;

/* 80450C00-80450C04 000100 0004+00 1/1 0/0 0/0 .sbss            commandHeapErrors */
static int commandHeapErrors;

/* 80450C04-80450C08 000104 0004+00 1/1 0/0 0/0 .sbss            archiveHeapErrors */
static int archiveHeapErrors;

/* 80450C08-80450C0C 000108 0004+00 1/1 0/0 0/0 .sbss            unknownHeapErrors */
static int unknownHeapErrors;

/* 80450C0C-80450C10 00010C 0004+00 1/1 0/0 0/0 .sbss            heapErrors */
static u32 heapErrors;

/* 8000B1EC-8000B3EC 005B2C 0200+00 2/2 0/0 0/0 .text            myGetHeapTypeByString__FP7JKRHeap
 */
static const char* myGetHeapTypeByString(JKRHeap* p_heap) {
    static char tmpString[5];

    if (p_heap == JKRHeap::getSystemHeap()) {
        return "SystemHeap";
    }

    if (p_heap == mDoExt_getZeldaHeap()) {
        return "ZeldaHeap";
    }

    if (p_heap == mDoExt_getGameHeap()) {
        return "GameHeap";
    }

    if (p_heap == mDoExt_getArchiveHeap()) {
        return "ArchiveHeap";
    }

    if (p_heap == mDoExt_getCommandHeap()) {
        return "CommandHeap";
    }

    if (p_heap == mDoExt_getDbPrintHeap()) {
        return "DbPrintHeap";
    }

    if (p_heap == mDoExt_getJ2dHeap()) {
        return "J2dHeap";
    }

    u32 heapType = p_heap->getHeapType();
    switch (heapType) {
    case 'ASTH':
        return "ASTH";
    case 'EXPH':
        return "EXPH";
    case 'SLID':
        return "SLID";
    case 'STDH':
        return "STDH";
    case 'UNIT':
        return "UNIT";
    case 0:
        return "(Null)";
    default:
        u32 tmpType = heapType;
        char* typeStr = (char*)&tmpType;

        tmpString[0] = typeStr[0];
        tmpString[1] = typeStr[1];
        tmpString[2] = typeStr[2];
        tmpString[3] = typeStr[3];
        tmpString[4] = 0;
        return tmpString;
    }
}

/* 8000B3EC-8000B5C8 005D2C 01DC+00 1/1 0/0 0/0 .text            myMemoryErrorRoutine__FPvUli */
static void myMemoryErrorRoutine(void* p_heap, u32 size, int alignment) {
    JKRHeap* heap = (JKRHeap*)p_heap;

    BOOL notSolidHeap = true;
    if (heap->getHeapType() == 'SLID') {
        notSolidHeap = false;
    }

    if (notSolidHeap) {
        // "Error: Can't allocate memory %d(0x%x)Bytes, %d Byte Alignment from %08x\n"
        OSReport_Error(
            "エラー: メモリを確保できません %d(0x%x)バイト、 %d バイトアライメント from %08x\n",
            size, size, alignment, p_heap);
    }

    u32 heapType = heap->getHeapType();
    u8* tmpString = (u8*)&heapType;
    if (notSolidHeap) {
        OSReport_Error(
            "FreeSize=%08x TotalFreeSize=%08x HeapType=%08x(%c%c%c%c) HeapSize=%08x %s\n",
            heap->getFreeSize(), heap->getTotalFreeSize(), heapType, tmpString[0], tmpString[1],
            tmpString[2], tmpString[3], heap->getHeapSize(), myGetHeapTypeByString(heap));
    }

    if (heapErrors == 0) {
        heap->dump_sort();
    }
    heapErrors++;

    if (p_heap == zeldaHeap) {
        zeldaHeapErrors++;
    } else if (p_heap == gameHeap) {
        gameHeapErrors++;
    } else if (p_heap == commandHeap) {
        commandHeapErrors++;
    } else if (p_heap == archiveHeap) {
        archiveHeapErrors++;
    } else if (heap->getHeapType() == 'SLID') {
        solidHeapErrors++;
    } else {
        unknownHeapErrors++;
    }
}

/* 8000B5C8-8000B668 005F08 00A0+00 1/1 0/0 0/0 .text            myHeapCheckRecursive__FP7JKRHeap */
void myHeapCheckRecursive(JKRHeap* p_heap) {
    if (!p_heap->check()) {
        const char* type = myGetHeapTypeByString(p_heap);
        OSReport_Error("error in %08x(%s)\n", p_heap, type);
    }

    JSUTree<JKRHeap>* heapTree = &p_heap->getHeapTree();
    for (JSUTree<JKRHeap>* i = heapTree->getFirstChild(); i != NULL; i = i->getNextChild()) {
        myHeapCheckRecursive(i->getObject());
    }
}

/* 8000B668-8000B68C 005FA8 0024+00 0/0 2/2 0/0 .text            mDoMch_HeapCheckAll__Fv */
void mDoMch_HeapCheckAll() {
    myHeapCheckRecursive(JKRHeap::sRootHeap);
}

/* 8000B68C-8000B73C 005FCC 00B0+00 1/1 0/0 0/0 .text            developKeyCheck__FUlUl */
static int developKeyCheck(u32 btnTrig, u32 btnHold) {
    static u8 key_link;
    static u8 key_ganon;
    static u8 key_zelda;

    if (btnHold == (CButton::L | CButton::R | CButton::Z | CButton::DPAD_DOWN) &&
        btnTrig == CButton::DPAD_DOWN) {
        if (key_link == 3 && key_ganon == 6 && key_zelda == 5) {
            mDoMain::developmentMode = 1;
        } else {
            key_link = 0;
            key_ganon = 0;
            key_zelda = 0;
        }
    }

    if (btnHold == (CButton::L | CButton::DPAD_RIGHT) && btnTrig == CButton::L) {
        key_link++;
    }

    if (btnHold == (CButton::R | CButton::DPAD_UP) && btnTrig == CButton::R) {
        key_ganon++;
    }

    if (btnHold == (CButton::Z | CButton::DPAD_LEFT) && btnTrig == CButton::Z) {
        key_zelda++;
    }

    return mDoMain::developmentMode;
}

/* 8000B73C-8000B768 00607C 002C+00 1/1 0/0 0/0 .text            mDoMch_IsProgressiveMode__Fv */
BOOL mDoMch_IsProgressiveMode() {
    return OSGetProgressiveMode() == true;
}

/* 8000B768-8000B798 0060A8 0030+00 2/2 0/0 0/0 .text            exceptionReadPad__FPUlPUl */
bool exceptionReadPad(u32* p_btnTrig, u32* p_btnHold) {
    return JUTException::getManager()->readPad(p_btnTrig, p_btnHold);
}

/* 8000B798-8000B7C8 0060D8 0030+00 1/1 0/0 0/0 .text            exceptionRestart__Fv */
void exceptionRestart() {
    mDoRst_reset(0, 0, 0);
    OSResetSystem(0, 0, 0);
    do {
    } while (true);
}

/* 8000B7C8-8000B95C 006108 0194+00 1/1 0/0 0/0 .text myExceptionCallback__FUsP9OSContextUlUl */
void myExceptionCallback(u16, OSContext*, u32, u32) {
    u32 btnHold;
    u32 btnTrig;

    mDoMain::sHungUpTime = OSGetTime();
    OSReportEnable();
    cAPICPad_recalibrate();
    // "Vibration stopping & resetting to default\n"
    OSReport("振動停止＆原点復帰\n");

    JUTException* manager = JUTException::getManager();

    if (manager == NULL) {
        // "Exception Manager doesn't exist\n"
        OSReport("例外マネージャがありません\n");
        PPCHalt();
    } else {
        manager->setTraceSuppress(0x80);
        if (mDoMain::developmentMode == 0) {
            JUTGamePad pad(JUTGamePad::EPort1);
            manager->setGamePad(&pad);

            if (manager != NULL) {
                OSEnableInterrupts();
                // "Accepting Key input\n"
                OSReport("キー入力を受け付けています\n");
                while (mDoMain::developmentMode == 0) {
                    exceptionReadPad(&btnTrig, &btnHold);
                    developKeyCheck(btnTrig, btnHold);
                    JUTException::waitTime(30);
                    if (JUTGamePad::C3ButtonReset::sResetOccurred) {
                        exceptionRestart();
                    }
                }
                // "JUTAssertion is visible\n"
                OSReport("JUTAssertionを可視化しました\n");
                JUTAssertion::setVisible(true);
                JUTDbPrint::getManager()->setVisible(true);
                JFWSystem::getSystemConsole()->setOutput(JUTConsole::OUTPUT_OSREPORT |
                                                         JUTConsole::OUTPUT_CONSOLE);
            } else {
                PPCHalt();
            }
        } else {
            // "Wait for 3 seconds\n"
            OSReport("3秒間停止\n");
            JUTException::waitTime(3000);
        }
    }
    DVDChangeDir("/map/Final/Release");
    JUTVideo::destroyManager();
    GXSetDrawDoneCallback(NULL);
    VISetBlack(0);
    VIFlush();
}

/* 8000B95C-8000BCF4 00629C 0398+00 1/1 0/0 0/0 .text fault_callback_scroll__FUsP9OSContextUlUl */
static void fault_callback_scroll(u16, OSContext* p_context, u32, u32) {
    JUTException* manager = JUTException::getManager();
    JUTConsole* exConsole = manager->getConsole();

    u32 srr0 = p_context->srr0 & -4;
    if (srr0 >= 0x8000000C && srr0 < 0x82FFFFFF) {
        exConsole->print_f("(SRR0-3):%08X %08X %08X %08X\n", *(u32*)(srr0 - 0xC),
                           *(u32*)(srr0 - 0x8), *(u32*)(srr0 - 0x4), *(u32*)srr0);
    }

    JUTGamePad pad(JUTGamePad::EPort1);
    manager->setGamePad(&pad);

    BOOL padDisabled = manager->isEnablePad() == false;
    if (!padDisabled) {
        exConsole->print("PUSH START BUTTON TO ADDITIONAL INFOMATION\n");
        exConsole->print("--------------------------------------\n");
        JUTConsoleManager::getManager()->drawDirect(true);
        OSEnableInterrupts();
        int holdUpCount = 0;
        int holdDownCount = 0;

        while (true) {
            u32 btnHold, btnTrig;
            exceptionReadPad(&btnTrig, &btnHold);

            if (JUTGamePad::C3ButtonReset::sResetOccurred) {
                OSResetSystem(1, 0, 0);
            }

            bool waitRetrace = false;
            if (btnTrig == CButton::START) {
                exception_addition(exConsole);
                waitRetrace = true;
            }

            if (btnTrig == CButton::Z) {
                JUTConsole* sysConsole = JFWSystem::getSystemConsole();
                if (JUTConsoleManager::getManager()->getDirectConsole() != sysConsole) {
                    exConsole = sysConsole;
                    exConsole->setFontSize(8.0f, 6.0f);
                    exConsole->setPosition(8, 32);
                    exConsole->setHeight(23);
                    exConsole->setVisible(true);
                    exConsole->setOutput(JUTConsole::OUTPUT_CONSOLE | JUTConsole::OUTPUT_OSREPORT);
                } else {
                    exConsole = JUTException::getConsole();
                }
                JUTConsoleManager::getManager()->setDirectConsole(exConsole);
                waitRetrace = true;
            }

            if (btnTrig == CButton::A) {
                exConsole->scrollToLastLine();
                waitRetrace = true;
            }

            if (btnTrig == CButton::B) {
                exConsole->scrollToFirstLine();
                waitRetrace = true;
            }

            if (btnHold == CButton::DPAD_UP) {
                exConsole->scroll(holdUpCount < 3 ? -1 : (holdUpCount < 5 ? -2 : (holdUpCount < 7 ? -4 : -8)));
                waitRetrace = true;
                holdDownCount = 0;
                holdUpCount++;
            } else if (btnHold == CButton::DPAD_DOWN) {
                exConsole->scroll(holdDownCount < 3 ? 1 : (holdDownCount < 5 ? 2 : (holdDownCount < 7 ? 4 : 8)));
                waitRetrace = true;
                holdUpCount = 0;
                holdDownCount++;
            } else {
                holdUpCount = 0;
                holdDownCount = 0;
            }

            if (waitRetrace == true) {
                u32 count = VIGetRetraceCount();
                do {
                } while (count == VIGetRetraceCount());
                JUTConsoleManager::getManager()->drawDirect(true);
            }

            JUTException::waitTime(30);
        }
    }

    exception_addition(exConsole);
    JUTConsoleManager::getManager()->drawDirect(true);

    do {
        exConsole->scrollToFirstLine();
        JUTConsoleManager::getManager()->drawDirect(true);
        JUTException::waitTime(2000);

        do {
            for (u32 i = exConsole->getHeight(); i != 0; i--) {
                exConsole->scroll(1);
                JUTConsoleManager::getManager()->drawDirect(true);

                if ((exConsole->getUsedLine() - exConsole->getHeight()) + 1 <=
                    exConsole->getLineOffset()) {
                    break;
                }
                JUTException::waitTime(20);
            }

            JUTException::waitTime(3000);
             if ((exConsole->getUsedLine() - exConsole->getHeight()) + 1 <=
                exConsole->getLineOffset()) {
                break;
            }
        } while (true);
    } while (true);
}

static void dummy_string() {
    DEAD_STRING("\x1B[32m%-24s = size=%d KB\n\x1B[m");
}

/* 8000BCF4-8000BCF8 006634 0004+00 1/1 0/0 0/0 .text            my_PrintHeap__FPCcUl */
static void my_PrintHeap(char const* heapName, u32 heapSize) {
    /* empty function */
}

/* 8000BCF8-8000BD44 006638 004C+00 1/1 0/0 0/0 .text            my_SysPrintHeap__FPCcPvUl */
void my_SysPrintHeap(char const* message, void* start, u32 size) {
    OSReport_System("\x1b[32m%-24s = %08x-%08x size=%d KB\n\x1b[m", message, start,
                    (u32)start + size, size / 1024);
}

/* 803A2F60-803A2F9C 000080 003C+00 1/0 0/0 0/0 .data            g_ntscZeldaIntDf */
extern GXRenderModeObj g_ntscZeldaIntDf = {
    VI_TVMODE_NTSC_INT,
    608,
    448,
    448,
    27,
    16,
    666,
    448,
    VI_XFBMODE_DF,
    0,
    0,
    {{6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6}},
    {8, 8, 10, 12, 10, 8, 8},
};

/* 803A2F9C-803A2FD8 0000BC 003C+00 1/1 1/1 0/0 .data            g_ntscZeldaProg */
extern GXRenderModeObj g_ntscZeldaProg = {
    VI_TVMODE_NTSC_PROG,
    608,
    448,
    448,
    27,
    16,
    666,
    448,
    VI_XFBMODE_SF,
    0,
    0,
    {{6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6},
     {6, 6}},
    {0, 0, 21, 22, 21, 0, 0},
};

/* 804505A0-804505A8 -00001 0004+04 1/1 3/3 0/0 .sdata           mRenderModeObj__15mDoMch_render_c
 */
GXRenderModeObj* mDoMch_render_c::mRenderModeObj = &g_ntscZeldaIntDf;

/* 8000BD44-8000C0CC 006684 0388+00 0/0 2/1 0/0 .text            mDoMch_Create__Fv */
// NONMATCHING - small regalloc
int mDoMch_Create() {
    if (mDoMain::developmentMode == 0 || !(OSGetConsoleType() & 0x10000000)) {
        OSReportDisable();
    }

    JKRHeap::setDefaultDebugFill(mDebugFill);
    JFWSystem::setMaxStdHeap(1);

    u32 arenaHi = (u32)OSGetArenaHi();
    u32 arenaLo = (u32)OSGetArenaLo();
    if (arenaHi > 0x81800000 && arenaHi - 0x1800000 > arenaLo) {
        OSSetArenaHi((void*)(arenaHi - 0x1800000));
    }

    u32 arenaSize = ((u32)OSGetArenaHi() - (u32)OSGetArenaLo()) - 0xF0;
    my_PrintHeap("アリーナ", arenaSize);

    if (mDoMain::memMargin != -1) {
        arenaSize += mDoMain::memMargin;
    }

    JFWSystem::setSysHeapSize(arenaSize - 0xDACD30);
    my_PrintHeap("システムヒープ", arenaSize - 0xDACD30);

    JFWSystem::setFifoBufSize(0xA0000);
    JFWSystem::setAramAudioBufSize(0xA00000);
    JFWSystem::setAramGraphBufSize(-1);

    if (!(OSGetResetCode() >> 0x1F)) {
        if (VIGetDTVStatus() == 0) {
            OSSetProgressiveMode(0);
        }
    } else if (mDoRst::getProgSeqFlag() != 0) {
        if (VIGetDTVStatus() != 0 && mDoMch_IsProgressiveMode()) {
            mDoMch_render_c::setProgressiveMode();
        }
    }

    JFWSystem::setRenderMode(mDoMch_render_c::getRenderModeObj());
    JFWSystem::firstInit();
    JUTDbPrint::start(NULL, mDoExt_createDbPrintHeap(0x1800, JKRHeap::getRootHeap()));
    mDoExt_createAssertHeap(JKRHeap::getRootHeap());
    JFWSystem::init();

    if (mDoMain::developmentMode == 0) {
        JUTAssertion::setVisible(false);
        JUTDbPrint::getManager()->setVisible(false);
    }

    JKRHeap::setErrorHandler(myMemoryErrorRoutine);
    JKRHeap::getRootHeap()->setErrorFlag(true);
    JFWSystem::getSystemHeap()->setErrorFlag(true);

    JKRHeap* rootHeap = JKRGetRootHeap();
    // Command Heap size: 4 KB
    my_SysPrintHeap("コマンドヒープ", mDoExt_createCommandHeap(0x1000, rootHeap), 0x1000);

    // Archive Heap size: 9085 KB
    my_SysPrintHeap("アーカイブヒープ", mDoExt_createArchiveHeap(0x8DF400, rootHeap), 0x8DF400);

    // J2D Heap size: 500 KB
    my_SysPrintHeap("Ｊ２Ｄ用ヒープ", mDoExt_createJ2dHeap(0x7D000, rootHeap), 0x7D000);

    // Game Heap size: 4408 KB
    my_SysPrintHeap("ゲームヒープ", mDoExt_createGameHeap(0x44E000, rootHeap), 0x44E000);

    JKRHeap* sysHeap = JKRGetSystemHeap();
    u32 zeldaHeapSize = sysHeap->getFreeSize() - 0x10000;
    JKRHeap* zeldaHeap = mDoExt_createZeldaHeap(zeldaHeapSize, sysHeap);
    my_SysPrintHeap("ゼルダヒープ", zeldaHeap, zeldaHeapSize);
    zeldaHeap->becomeCurrentHeap();

    JKRAramStream::setTransBuffer(NULL, 0x2000, JKRGetSystemHeap());
    JKRThreadSwitch::createManager(NULL);
    JKRThread* thread = new JKRThread(OSGetCurrentThread(), 0);

    JUTConsole* sysConsole = JFWSystem::getSystemConsole();
    sysConsole->setOutput(JUTConsole::OUTPUT_CONSOLE | JUTConsole::OUTPUT_OSREPORT);
    sysConsole->setPosition(16, 42);

    JUTException::appendMapFile("/map/Final/Release/frameworkF.map");
    JUTException::setPreUserCallback(myExceptionCallback);
    JUTException::setPostUserCallback(fault_callback_scroll);

    cMl::init(mDoExt_getZeldaHeap());
    cM_initRnd(100, 100, 100);
    JKRDvdRipper::setSZSBufferSize(0x4000);
    JKRDvdAramRipper::setSZSBufferSize(0x4000);
    JKRAram::setSZSBufferSize(0x2000);
    mDoDvdThd::create(OSGetThreadPriority(OSGetCurrentThread()) - 2);
    mDoDvdErr_ThdInit();
    mDoMemCd_ThdInit();
    return 1;
}
