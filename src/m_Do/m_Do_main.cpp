#include "m_Do/m_Do_main/m_Do_main.h"
#include "JSystem/JKernel/JKRAram/JKRAram.h"
#include "JSystem/JKernel/JKRAramHeap/JKRAramHeap.h"
#include "JSystem/JUtility/JUTAssert/JUTAssert.h"
#include "JSystem/JUtility/JUTGamePad/JUTGamePad.h"
#include "JSystem/JUtility/JUTReport/JUTReport.h"
#include "SComponent/c_API_controller_pad.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "dvd/dvd.h"
#include "f/f_ap_game/f_ap_game.h"
#include "f/f_op/f_op_actor_mng.h"
#include "global.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"
#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "m_Do/m_Do_machine/m_Do_machine.h"
#include "m_Do/m_Do_reset/m_Do_reset.h"
#include "msl_c/string.h"

extern "C" {
void cDyl_InitAsync(void);
void CheckHeap1__9HeapCheckFv(void);
void create__12JKRSolidHeapFUlP7JKRHeapb(void);
void create__8mDoCPd_cFv(void);
void dComIfG_inf_c_NS_ct(void);
void debug__Fv(void);
void dump__14dRes_control_cFv(void);
void dump__11JKRAramHeapFv(void);
void dump__24DynamicModuleControlBaseFv(void);
void fopAcM_initManager(void);
void getFreeSize__11JKRAramHeapFv(void);
void getFreeSize__7JKRHeapCFv(void);
void getTotalFreeSize__11JKRAramHeapFv(void);
void getTotalFreeSize__7JKRHeapCFv(void);
void getTotalUsedSize__10JKRExpHeapCFv(void);
void getUsedCount__9HeapCheckCFv(void);
void heapDisplay__9HeapCheckCFv(void);
void JUTReport__FiiPCce(int, int, const char*, ...);
void JUTReport__FiiiPCce(void);
void mDoDvdThd_callback_c_NS_create(void);
void mDoMch_HeapCheckAll(void);
void mDoMemCd_Ctrl_c_NS_update(void);
void read__8mDoCPd_cFv(void);
void version_check__Fv(void);
void main01__Fv(void);
void ct__13dComIfG_inf_cFv(void);
int getLineOffset__10JUTConsoleCFv(void);
void dumpToTerminal__10JUTConsoleFUi(void);
void scroll__10JUTConsoleFi(void);
void clear__10JUTConsoleFv(void);
void setMessageCount__12JUTAssertionFi(void);
}

extern float lbl_80451A00;
extern float lbl_80451A04;
extern float lbl_80451A08;
extern u8 lbl_80451A0C;
extern u8 lbl_80451A10;
extern u8 lbl_80451A18;
extern u8 lbl_803D0000;
extern float lbl_80450B2C;
extern float lbl_80450B1C;
extern JKRExpHeap* sSystemHeap__7JKRHeap;
extern JKRExpHeap* lbl_80450C2C;
extern JKRExpHeap* lbl_80450C28;
extern JKRExpHeap* lbl_80450C34;
extern s8 lbl_80450B20;
extern s8 lbl_80450B28;
extern float lbl_80450B24;
extern s8 lbl_80450B30;
extern char lbl_803739A0[0x310];
extern char* lbl_803A2F14[5];
extern char* lbl_803A2F28[5];
extern u8 lbl_803A2EF4;
extern char lbl_803A2EE0[16];
extern u8 lbl_80450B19;
extern s8 lbl_80450580;
extern u8 LOAD_COPYDATE__FPv;
extern JUTGamePad* m_gamePad[4];
extern JKRHeap* sRootHeap__7JKRHeap;     // JKRHeap::sRootHeap
extern JKRHeap* sCurrentHeap__7JKRHeap;  // JKRHeap::sCurrentHeap
extern u8 lbl_803EAF40[];
extern u8 lbl_80450B34;
extern u8 lbl_80450B00;
extern u8 lbl_80450C80;
extern u32 lbl_803D3420[8192];
extern u32 lbl_80450B0C;
extern u32 lbl_80450B08;
extern OSThread lbl_803DB420;

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

    JUTReport(0x64, 0xd4, "[%sName]", names[0]);
    JUTReport(0x64, 0xe3, "HeapSize         %8ld", heap_size1);
    JUTReport(0x64, 0xf0, "TargetHeapSize   %8ld", heap_size);
    JUTReport(0x64, 0xfd, "TotalFree        %8ld", heap_total_free_size - heap_size2);
    JUTReport(0x64, 0x10a, "FreeSize         %8ld", heap_free_size - heap_size2);
    JUTReport(0x64, 0x117, "TotalUsedSize    %8ld", heap_total_used_size);
    JUTReport(0x64, 0x124, "TotalUsedRate        %3ld%%",
              (int)(heap_total_used_size * 0x64) / (int)heap_size);
    JUTReport(0x64, 0x131, "MaxTotalUsedSize %8ld", max_total_used_size);
    JUTReport(0x64, 0x13e, "MaxTotalUsedRate     %3ld%%",
              (max_total_used_size * 0x64) / (int)heap_size);
    JUTReport(0x64, 0x14b, "MinFreeSize      %8ld", max_total_free_size - heap_size2);
    JUTReport(0x64, 0x158, "MinFreeRate          %3ld%%",
              ((max_total_free_size - heap_size2) * 0x64) / (int)heap_size);
    heap_size2 = countUsed(heap);
    JUTReport(0x64, 0x165, "UsedCount             %3ld%", heap_size2);
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

#ifdef NONMATCHING
void debugDisplay(void) {
    int tmp1;
    int tmp2;
    HeapCheck** hct = (HeapCheck**)lbl_803A2EE0;

    if (lbl_80450B19 >= 1 && lbl_80450B19 <= 6) {
        hct[lbl_80450B19 - 1]->heapDisplay();
    }

    if (lbl_80450588 == 5) {
        JKRAramHeap* heap = sAramObject__7JKRAram->getAramHeap();
        if (heap) {
            JUTReport(0x1db, 100, lbl_803739A0 + 0x196);
            JUTReport(0x1db, 0x72, lbl_803739A0 + 0x1A0, heap->getFreeSize());
            JUTReport(0x1db, 0x80, lbl_803739A0 + 0x150);
            JUTReport(0x1db, 0x8e, lbl_803739A0 + 0x1A0, heap->getTotalFreeSize());
        }

    } else {
        if (lbl_80450588) {
            JUTReport(0x1db, 100, lbl_803739A0 + 0x1A3, lbl_803A2F14[lbl_80450588]);
            JUTReport(0x1db, 0x72, lbl_803739A0 + 0x1A3, lbl_803A2F28[lbl_80450588]);

            int k = 0;
            for (int i = 0; i < 8; i++, k += 0x2c) {
                // heap check table stuff
                HeapCheck* heap_check;
                heap_check = HeapCheckTable[i];

                switch (lbl_80450588) {
                case 3: {
                    tmp1 = heap_check->getUsedCount();
                    tmp2 = heap_check->getHeap()->getTotalUsedSize();
                    break;
                }
                case 1: {
                    tmp1 = heap_check->getHeap()->getTotalFreeSize();
                    tmp2 = heap_check->getHeap()->getFreeSize();
                    break;
                }
                case 2: {
                    tmp1 = heap_check->getMaxTotalUsedSize();
                    tmp2 = heap_check->getHeap()->getSize();
                    break;
                }
                case 4: {
                    tmp1 = heap_check->getUsedCount() - heap_check->getUsedCountRef();
                    tmp2 = heap_check->getHeap()->getTotalUsedSize() -
                           heap_check->getTotalUsedSizeRef();
                    break;
                }

                    JUTReport(0x1db, k + 0x96, lbl_80373B46, heap_check->getNames()[0]);
                    JUTReport(0x1db, k + 0xA4, lbl_80373B4C, tmp1);
                    JUTReport(0x1db, k + 0xB2, lbl_80373B4C, tmp2);
                }
            }
        }
    }
}
#else
asm void debugDisplay(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005AD8.s"
}
#endif

#ifdef NONMATCHING
void Debug_console(u32 controller_pad_no) {
    float tmp2;
    float tmp3;
    int tmp6;

    // systemConsole
    if (lbl_804511B8) {
        if (!lbl_80450B20) {
            lbl_80450B1C = lbl_80451A00;
            lbl_80450B20 = 1;
        }

        if (!lbl_80450B28) {
            lbl_80450B24 = lbl_80451A04;
            lbl_80450B28 = 1;
        }
        if (!lbl_80450B30) {
            lbl_80450B2C = lbl_80451A08;
            lbl_80450B30 = 1;
        }

        u32 tmp5 = m_cpadInfo[controller_pad_no].mPressedButtonFlags;

        if ((m_cpadInfo[controller_pad_no].mPressedButtonFlags & 0x10) &&
            !(m_cpadInfo[controller_pad_no].mButtonFlags & ~0x10)) {
            lbl_804511B8->field_0x68 = !lbl_804511B8->field_0x68;
            JUTAssertion::setMessageCount(0);
        }

        if (lbl_804511B8->field_0x68) {
            u32 tmp = m_cpadInfo[controller_pad_no].mButtonFlags;

            // if R and L are pressed
            if ((tmp & CButton::R && tmp & CButton::L) ||
                ((lbl_80451A08 > m_cpadInfo[controller_pad_no].mTriggerLeft) &&
                 (lbl_80451A08 > m_cpadInfo[controller_pad_no].mTriggerRight))) {
                tmp2 = m_cpadInfo[controller_pad_no].mMainStickPosX;
                tmp3 = m_cpadInfo[controller_pad_no].mMainStickPosY;

                // if x buttons are pressed, clear the console
                if (tmp & (CButton::Y | CButton::START) && tmp5 & CButton::START) {
                    lbl_804511B8->clear();
                }

                u32 tmp = m_cpadInfo[controller_pad_no].mButtonFlags;

                if (!(tmp & (CButton::Y | CButton::START))) {
                    // subtract console scroll value from stick Y
                    float tmp4 = lbl_80450B2C;
                    lbl_80450B2C = tmp4 - tmp3;
                    if (lbl_80450B2C <= lbl_80451A0C) {
                        lbl_80451A10 <= lbl_80450B2C ? tmp = 0 : tmp = lbl_80451A0C;
                    } else {
                        tmp = (tmp4 - tmp3);
                    }

                    if (tmp) {
                        lbl_80450B2C -= (tmp ^ 0x80000000) - 4503601774854144.00000000;
                        lbl_804511B8->scroll(tmp);
                    }
                } else {
                    if (tmp & CButton::X) {
                        lbl_80450B2C += tmp2;
                    }

                    if (tmp & CButton::Y) {
                        lbl_80450B2C -= tmp3;
                    }
                }

                if (tmp5 & CButton::A) {
                    lbl_804511B8->dumpToTerminal(0xFFFFFFFF);
                    lbl_804511B8->field_0x58 = 3;
                }

                JUTReport(0x1E, 0x186, 1, lbl_80373B51);
                JUTReport(0x1E, 400, 1, lbl_80373B73);
                JUTReport(0x1E, 0x19A, 1, lbl_80373B8D);
                tmp6 = lbl_804511B8->getLineOffset();
                JUTReport(0x1E, 0x1A4, 1, lbl_80373BB6, tmp6, lbl_804511B8->field_0x40,
                          lbl_804511B8->field_0x44, lbl_804511B8->field_0x58);
            }
        } else {
            if (tmp5 & 4) {
                g_HIO.field_0x15 ^= 1;
            }

            if (tmp5 & 1) {
                if (sAramObject__7JKRAram->getAramHeap()) {
                    sAramObject__7JKRAram->getAramHeap()->dump();
                }

                dump__24DynamicModuleControlBaseFv();
                dump__14dRes_control_cFv();
            }

            if (tmp5 & 2) {
                sSystemHeap__7JKRHeap->dump_sort();
            }

            if (tmp5 & 8) {
                lbl_80450C2C->dump_sort();
                lbl_80450C28->dump_sort();
                lbl_80450C34->dump_sort();
            }
            JUTReport(0x1E, 0x1B8, 1, lbl_80373BD5);
            JUTReport(0x1E, 0x1C2, 1, lbl_80373BFB);
        }
        lbl_804511B8->field_0x40 = lbl_80450B1C;
        lbl_804511B8->field_0x44 = lbl_80450B24;
        tmp6 = 1;
    }
}
#else
asm void Debug_console(u32) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005D4C.s"
}
#endif

#ifdef NONMATCHING
s32 LOAD_COPYDATE(void*) {
    s32 status;
    u8 buffer[32];
    u8 fileInfo[80];
    // DVDFileInfo fileInfo;

    status = DVDOpen("/str/Final/Release/COPYDATE", (DVDFileInfo*)&fileInfo);

    if (status) {
        DVDReadPrio((DVDFileInfo*)fileInfo, &buffer, 32, 0, 2);
        memcpy(lbl_803A2EE0, buffer, 17);
        status = DVDClose((DVDFileInfo*)fileInfo);
    }
    return status;
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
    if (lbl_80450580) {
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
                lbl_80450588 < 0x5 ? lbl_80450588++ : lbl_80450588 = 0x1;
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

    // mDoDVDThd_callback_c thread_callback;
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

    JUTConsole* systemConsole = lbl_804511B8;

    if (heaps[7].getHeap()) {
        heaps[7].setHeapSize(heaps[7].getHeap()->getSize());
    }

    u32 unk = 0;
    if (lbl_80450580) {
        unk = 3;
    }

    systemConsole->field_0x58 = unk;
    systemConsole->field_0x40 = 0x20;
    systemConsole->field_0x44 = 0x2A;

    // lol
    mDoDVDThd_callback_c::create(LOAD_COPYDATE, 0);
    fapGm_Create();
    fopAcM_initManager();
    lbl_80450B18 = 0;
    cDyl_InitAsync();

    // g_mDoAud_audioHeap

    lbl_80450BBC = JKRSolidHeap::create(0x14d800, JKRHeap::getCurrentHeap(), false);

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
void main(void) {
    s32 current_thread_priority;
    u32 test;
    u32 resetCode;

    OSThread* current_thread = OSGetCurrentThread();
    test = lbl_803D3420[0];
    OSTime current_time = OSGetTime();
    lbl_80450B0C = (current_time >> 0x20);
    lbl_80450B08 = test;

    OSReportInit__Fv();
    version_check__Fv();
    m_Do_Reset_NS_mDoRst_NS_mResetData = (ResetData*)OSAllocFromArenaLo(0x18, 4);
    if (!m_Do_Reset_NS_mDoRst_NS_mResetData) {
        do {
        } while (true);
    }

    resetCode = OSGetResetCode();
    if (!resetCode) {
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x0 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x4 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x4 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x8 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->pad_index = -1;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x12 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x13 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x14 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x15 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x10 = 0;
        m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x11 = 0;
    }

    g_dComIfG_gameInfo.ct();

    if (lbl_80450580 < 0) {
        DVDDiskID* disk_id = DVDGetCurrentDiskID();
        if (disk_id->game_version > 0x90) {
            lbl_80450580 = 0;
        } else {
            if (disk_id->game_version > 0x80) {
                resetCode = OSGetConsoleType();
                lbl_80450580 = (resetCode >> 0x1C) & 1;
            }
            lbl_80450580 = 1;
        }
    }

    current_thread_priority = OSGetThreadPriority(current_thread);
    OSCreateThread(&lbl_803DB420, main01__Fv, 0, &lbl_803DB420, 0x8000, current_thread_priority, 0);
    OSResumeThread(&lbl_803DB420);
    OSSetThreadPriority(current_thread, 0x1F);
    OSSuspendThread(current_thread);
}
#else
asm void main(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80006454.s"
}
#endif