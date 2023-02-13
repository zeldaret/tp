/**
 * m_Do_machine_exception.cpp
 * Exception Print Functions
 */

#include "m_Do/m_Do_machine_exception.h"
#include "JSystem/JFramework/JFWSystem.h"
#include "JSystem/JKernel/JKRAram.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "Runtime.PPCEABI.H/__va_arg.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_main.h"
#include "DynamicLink.h"

static JUTConsole* sConsole;

void print_f(char const* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    JUTConsole_print_f_va_(sConsole, fmt, args);
    va_end(args);
}

void print(char const* string) {
    sConsole->print(string);
}

const char* stringBase_80374460 = "--------------------------------------\n";

void dispHeapInfo() {
    JKRExpHeap* zelda = zeldaHeap;
    JKRExpHeap* game = gameHeap;
    JKRExpHeap* archive = archiveHeap;

    u32 zeldaFree = zelda->getFreeSize();
    u32 gameFree = game->getFreeSize();
    u32 archiveFree = archive->getFreeSize();
    u32 zeldaTotal = zelda->getTotalFreeSize();
    u32 gameTotal = game->getTotalFreeSize();
    u32 archiveTotal = archive->getTotalFreeSize();

    print("-- Heap Free / TotalFree (KB) --\n");
    print_f("  Zelda %5d / %5d\n", zeldaFree / 1024, zeldaTotal / 1024);
    print_f("   Game %5d / %5d\n", gameFree / 1024, gameTotal / 1024);
    print_f("Archive %5d / %5d\n", archiveFree / 1024, archiveTotal / 1024);
    print("--------------------------------\n");

    if (JKRAram::getAramHeap()) {
        JKRAram::getAramHeap()->dump();
    }
    DynamicModuleControlBase::dump();
    g_dComIfG_gameInfo.mResControl.dump();

    zelda->dump_sort();
    game->dump_sort();
    archive->dump_sort();
}

void dispGameInfo() {
    print_f("Start StageName:RoomNo [%s:%d]\n", dComIfGp_getStartStageName(),
            dComIfGp_getStartStageRoomNo());
}

void dispDateInfo() {
    print("------------- Date Infomation ---------\n");
    print(" FINAL VERSION\n");
    print("COMPILE USER: FINAL\n");
    print_f("COPYDATE   : %17s\n", mDoMain::COPYDATE_STRING);

    OSCalendarTime time;
    OSTicksToCalendarTime(mDoMain::sPowerOnTime, &time);
    print_f("PowerOnTime: %04d/%2d/%2d %2d:%2d:%2d`%03d\"%03d\n", time.year, time.month,
            time.day_of_month, time.hours, time.minutes, time.seconds, time.milliseconds,
            time.microseconds);

    OSTicksToCalendarTime(mDoMain::sHungUpTime, &time);
    print_f("HungUpTime : %04d/%2d/%2d %2d:%2d:%2d`%03d\"%03d\n", time.year, time.month,
            time.day_of_month, time.hours, time.minutes, time.seconds, time.milliseconds,
            time.microseconds);

    OSTicksToCalendarTime(mDoMain::sHungUpTime - mDoMain::sPowerOnTime, &time);
    print_f("PlayTime   : %4d days, %2d:%2d:%2d`%03d\"%03d\n", time.year_day, time.hours,
            time.minutes, time.seconds, time.milliseconds, time.microseconds);
    print("---------------------------------------\n");
}

void dispConsoleToTerminal() {
    JFWSystem::getSystemConsole()->dumpToTerminal(0xFFFFFFFF);
}

void exception_addition(JUTConsole* pConsole) {
    sConsole = pConsole;
    dispHeapInfo();
    dispDateInfo();
    dispConsoleToTerminal();
    dispGameInfo();
}
