#include "m_Do/m_Do_main/m_Do_main.h"
#include "SComponent/c_API_controller_pad.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "dvd/dvd.h"
#include "f/f_op/f_op_actor_mng.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"
#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "m_Do/m_Do_machine/m_Do_machine.h"
#include "m_Do/m_Do_reset/m_Do_reset.h"

extern u8 lbl_80451A00;
extern u8 lbl_80451A04;
extern u8 lbl_80451A08;
extern u8 lbl_80451A0C;
extern u8 lbl_80451A10;
extern u8 lbl_80451A18;
// extern char lbl_803739A0[0x310];

extern char lbl_803739A0;
extern "C" {
int strcmp(const char*, const char*);
void cDyl_InitAsync(void);
void CheckHeap1__9HeapCheckFv(void);
void create__12JKRSolidHeapFUlP7JKRHeapb(void);
void create__8mDoCPd_cFv(void);
void dComIfG_inf_c_NS_ct(void);
void debug__Fv(void);
void dRes_control_c_NS_dump(void);
void dump__11JKRAramHeapFv(void);
void DynamicModuleControlBase_NS_dump(void);
void fapGm_Create(void);
void fapGm_Execute(void);
void fopAcM_initManager(void);
void getFreeSize__11JKRAramHeapFv(void);
void getFreeSize__7JKRHeapCFv(void);
void getTotalFreeSize__11JKRAramHeapFv(void);
void getTotalFreeSize__7JKRHeapCFv(void);
void getTotalUsedSize__10JKRExpHeapCFv(void);
void getUsedCount__9HeapCheckCFv(void);
void heapDisplay__9HeapCheckCFv(void);
void JUTAssertion_NS_setMessageCount(void);
void JUTConsole_NS_clear(void);
void JUTConsole_NS_dumpToTerminal(void);
void JUTConsole_NS_getLineOffset(void);
void JUTConsole_NS_scroll(void);
void JUTReport__FiiPCce(int, int, const char*, ...);
void JUTReport_X1_(void);
void mDoDvdThd_callback_c_NS_create(void);
void mDoMch_HeapCheckAll(void);
void mDoMemCd_Ctrl_c_NS_update(void);
void memcpy(void*, const void*, int);
void read__8mDoCPd_cFv(void);
void version_check__Fv(void);
}

void version_check(void) {
    if ((!strcmp("20Apr2004", "20Apr2004")) && (!strcmp("Patch2", "Patch2"))) {
        return;
    }

    OSReport_Error("SDKのバージョンが一致しません。停止します\n");
    do {
    } while (true);
}

void HeapCheck::CheckHeap1(void) {
    s32 totalUsedSize = heap->getTotalUsedSize();
    s32 freeSize = heap->getFreeSize();

    if (max_total_used_size < totalUsedSize) {
        max_total_used_size = totalUsedSize;
    }

    if (max_total_free_size > freeSize) {
        max_total_free_size = freeSize;
    }
}

#ifdef NONMATCHING
void CheckHeap(u32 controller_pad_no) {
    mDoMch_HeapCheckAll();
    OSCheckActiveThreads();

    bool unk = false;

    // if L + R + Z is pressed...
    if (((m_cpadInfo[controller_pad_no].mButtonFlags & ~0x10) == 0x60) &&
        m_cpadInfo[controller_pad_no].mPressedButtonFlags & 0x10) {
        unk = true;
    }

    for (int i = 0; i < 8; i++) {
        HeapCheckTable[i]->CheckHeap1();
        if (unk) {
            HeapCheck* currentHeap = HeapCheckTable[i];
            s32 used_count = currentHeap->getUsedCount();

            currentHeap->getUsedCountRef() = used_count;
            used_count = currentHeap->getHeap()->getTotalUsedSize();
            currentHeap->getTotalUsedSizeRef() = used_count;
        }
    }
}
#else
asm void CheckHeap(u32 param_1) {
    nofralloc
#include "m_Do/m_Do_main/asm/func_8000578C.s"
}
#endif

int countUsed(JKRExpHeap* heap) {
    OSDisableScheduler();
    int counter = 0;
    JKRExpHeap::CMemBlock* used_blocks_head = heap->getHeadUsedList();

    while (used_blocks_head) {
        used_blocks_head = used_blocks_head->getNextBlock();
        counter++;
    };

    OSEnableScheduler();
    return counter;
}

s32 HeapCheck::getUsedCount(void) const {
    return countUsed(heap);
}

void HeapCheck::heapDisplay(void) const {
    s32 heap_size1 = heap->getSize();
    s32 heap_size2 = heap_size1 - heap_size;

    s32 heap_total_used_size = heap->getTotalUsedSize();
    s32 heap_total_free_size = heap->getTotalFreeSize();
    s32 heap_free_size = heap->getFreeSize();

    JUTReport__FiiPCce(0x64, 0xd4, "[%sName]", names[0]);
    JUTReport__FiiPCce(0x64, 0xe3, "HeapSize         %8ld", heap_size1);
    JUTReport__FiiPCce(0x64, 0xf0, "TargetHeapSize   %8ld", heap_size);
    JUTReport__FiiPCce(0x64, 0xfd, "TotalFree        %8ld", heap_total_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x10a, "FreeSize         %8ld", heap_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x117, "TotalUsedSize    %8ld", heap_total_used_size);
    JUTReport__FiiPCce(0x64, 0x124, "TotalUsedRate        %3ld%%",
                       (int)(heap_total_used_size * 0x64) / (int)heap_size);
    JUTReport__FiiPCce(0x64, 0x131, "MaxTotalUsedSize %8ld", max_total_used_size);
    JUTReport__FiiPCce(0x64, 0x13e, "MaxTotalUsedRate     %3ld%%",
                       (max_total_used_size * 0x64) / (int)heap_size);
    JUTReport__FiiPCce(0x64, 0x14b, "MinFreeSize      %8ld", max_total_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x158, "MinFreeRate          %3ld%%",
                       ((max_total_free_size - heap_size2) * 0x64) / (int)heap_size);
    heap_size2 = countUsed(heap);
    JUTReport__FiiPCce(0x64, 0x165, "UsedCount             %3ld%", heap_size2);
}

const char* lbl_80373AEF = "";
const char* lbl_80373AF0 = "TotalFree";
const char* lbl_80373AFA = "MaxUsed  ";
const char* lbl_80373B04 = "Used     ";
const char* lbl_80373B0E = "RelUsed  ";
const char* lbl_80373B18 = "/ MaxFree";
const char* lbl_80373B22 = "/HeapSize";
const char* lbl_80373B2C = "Blk/Bytes";
const char* lbl_80373B36 = "ARAM Free";
const char* lbl_80373B40 = "%d";
const char* lbl_80373B43 = "%s";
const char* lbl_80373B46 = " [%s]";
const char* lbl_80373B4C = "%10d";
const char* lbl_80373B51 = "Press X+Y+START to CLEAR console.";
const char* lbl_80373B73 = "3DStick UP/Down to scroll";
const char* lbl_80373B8D = "Press A to output terminal from console.";
const char* lbl_80373BB6 = "SCROLL：%3d %3d %3d Output=%1x";
const char* lbl_80373BD5 = "Press L+R trigger to control console.";
const char* lbl_80373BFB = "Press [Z] trigger to close this window.";

asm void debugDisplay(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005AD8.s"
}

asm void Debug_console(u32) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005D4C.s"
}

#ifdef NONMATCHING
void LOAD_COPYDATE(void*) {
    DVDFileInfo file_info;

    s32 dvd_status = DVDOpen("/str/Final/Release/COPYDATE", &file_info);
    if (dvd_status) {
        char buffer[32];
        DVDReadPrio(&file_info, buffer, 32, 0, 2);
        memcpy(lbl_803A2EE0, buffer, 17);
        DVDClose(&file_info);
    }
}
#else
const char* lbl_80373C23 = "/str/Final/Release/COPYDATE";
asm void LOAD_COPYDATE(void*) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_8000614C.s"
}
#endif

const char* lbl_80373C3F = "Root";
const char* lbl_80373C44 = "ルート";
const char* lbl_80373C4B = "System";
const char* lbl_80373C52 = "システム";
const char* lbl_80373C5B = "Zelda";
const char* lbl_80373C61 = "ゼルダ";
const char* lbl_80373C68 = "Game";
const char* lbl_80373C6D = "ゲーム";
const char* lbl_80373C74 = "Archive";
const char* lbl_80373C7C = "アーカイブ";
const char* lbl_80373C87 = "J2d";
const char* lbl_80373C8B = "J2D";
const char* lbl_80373C8F = "Hostio";
const char* lbl_80373C96 = "ホストIO";
const char* lbl_80373C9F = "Command";
const char* lbl_80373CA7 = "コマンド";

void debug(void) {
    if (lbl_80450580[0]) {
        if (lbl_80450B1A[0]) {
            CheckHeap(2);
        }

        if (((m_gamePad[2]->buttons.mButtonFlags & ~0x10) == 0x20) &&
            (m_gamePad[2]->buttons.mPressedButtonFlags & 0x10)) {
            lbl_80450B18 ^= 0x1;
        }

        if (lbl_80450B18) {
            if (((m_gamePad[2]->buttons.mButtonFlags & ~0x10) == 0x40) &&
                (m_gamePad[2]->buttons.mPressedButtonFlags & 0x10)) {
                lbl_80450588[0] < 0x5 ? lbl_80450588[0]++ : lbl_80450588[0] = 0x1;
            }

            debugDisplay();
        }

        Debug_console(2);
    }
}
#ifdef NONMATCHING
void main01(void) {
    HeapCheck* heaps = lbl_803D32E0;
    mDoMch_Create();
    mDoGph_Create();
    create__8mDoCPd_cFv();
    mDoDVDThd_callback_c thread_callback;
    // JKRSolidHeap audio_heap;

    // Root Heap
    heaps[0].setHeap((JKRExpHeap*)JKRHeap::getRootHeap());
    if (JKRHeap::getRootHeap()) {
        heaps[0].setHeapSize(JKRHeap::getRootHeap()->getSize());
    }

    // System Heap
    heaps[1].setHeap((JKRExpHeap*)JKRHeap::getSystemHeap());
    if (JKRHeap::getSystemHeap()) {
        heaps[1].setHeapSize(JKRHeap::getSystemHeap()->getSize());
    }

    // Zelda Heap
    heaps[2].setHeap(mDoExt_getZeldaHeap());
    if (heaps[2].getHeap()) {
        heaps[2].setHeapSize(heaps[2].getHeap()->getSize());
    }

    // Game Heap
    heaps[3].setHeap(mDoExt_getGameHeap());
    if (heaps[3].getHeap()) {
        heaps[3].setHeapSize(heaps[3].getHeap()->getSize());
    }

    // Archive Heap
    heaps[4].setHeap(mDoExt_getArchiveHeap());
    if (heaps[4].getHeap()) {
        heaps[4].setHeapSize(heaps[4].getHeap()->getSize());
    }

    // J2D Heap
    heaps[5].setHeap(mDoExt_getJ2dHeap());
    if (heaps[5].getHeap()) {
        heaps[5].setHeapSize(heaps[5].getHeap()->getSize());
    }

    // HostIO Heap
    heaps[6].setHeap(mDoExt_getHostIOHeap());
    if (heaps[6].getHeap()) {
        heaps[6].setHeapSize(heaps[6].getHeap()->getSize());
    }

    // Command Heap
    heaps[7].setHeap(mDoExt_getCommandHeap());

    u8* systemConsole = lbl_804511B8;

    if (heaps[7].getHeap()) {
        heaps[7].setHeapSize(heaps[7].getHeap()->getSize());
    }

    int unk = 0;
    if (lbl_80450580) {
        unk = 3;
    }

    *(lbl_804511B8 + 0x58) = unk;
    *(systemConsole + 0x40) = 0x20;
    *(systemConsole + 0x44) = 0x2a;

    // lol
    thread_callback.create((void* (*)(void*))LOAD_COPYDATE, 0);
    fapGm_Create();
    fopAcM_initManager__Fv();
    lbl_80450B18 = 0;
    cDyl_InitAsync();

    // g_mDoAud_audioHeap

    lbl_80450BBC = JKRSolidHeap_NS_create(0x14d800, JKRHeap::getCurrentHeap(), false);

    // main loop
    do {
        // global frame counter?
        lbl_80450B34++;

        if (lbl_80450B00 && (lbl_80450B34 == ((lbl_80450B34 / lbl_80450B00) * lbl_80450B00))) {
            mDoMch_HeapCheckAll();
        }

        if (lbl_80450C80) {
            mDoMemCd_Ctrl_c_NS_update();
        }
        mDoCPd_c_NS_read();
        fapGm_Execute();
        mDoAud_Execute();
        debug();
    } while (true);
}
#else
asm void main01(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_8000628C.s"
}
#endif

#ifdef NONMATCHING
void main(void) {}
#else
asm void main(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80006454.s"
}
#endif