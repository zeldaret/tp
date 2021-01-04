#include "m_Do/m_Do_main/m_Do_main.h"
#include "SComponent/c_API_controller_pad.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "dvd/dvd.h"
#include "global.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"
#include "m_Do/m_Do_graphic/m_Do_graphic.h"
#include "m_Do/m_Do_machine/m_Do_machine.h"
#include "m_Do/m_Do_reset/m_Do_reset.h"

void version_check(void) {
    if ((!strcmp((char*)lbl_803739A0, (char*)lbl_803739A0)) &&
        (!strcmp(((char*)lbl_803739A0 + 0xA), ((char*)lbl_803739A0 + 0xA)))) {
        return;
    }

    OSReport_Error((char*)lbl_803739A0 + 0x11);
    do {
    } while (true);
}

void HeapCheck::CheckHeap1(void) {
    s32 totalUsedSize = this->heap->getTotalUsedSize();
    s32 freeSize = this->heap->getFreeSize();

    if (this->max_total_used_size < totalUsedSize) {
        this->max_total_used_size = totalUsedSize;
    }

    if (this->max_total_free_size > freeSize) {
        this->max_total_free_size = freeSize;
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
    return countUsed(this->heap);
}

void HeapCheck::heapDisplay(void) const {
    s32 heap_size1 = this->heap->getSize();
    s32 heap_size2 = heap_size1 - this->heap_size;

    s32 heap_total_used_size = this->heap->getTotalUsedSize();
    s32 heap_total_free_size = this->heap->getTotalFreeSize();
    s32 heap_free_size = this->heap->getFreeSize();

    JUTReport__FiiPCce(0x64, 0xd4, lbl_803739A0 + 0x3C, this->names[0]);
    JUTReport__FiiPCce(0x64, 0xe3, lbl_803739A0 + 0x45, heap_size1);
    JUTReport__FiiPCce(0x64, 0xf0, lbl_803739A0 + 0x5B, this->heap_size);
    JUTReport__FiiPCce(0x64, 0xfd, lbl_803739A0 + 0x71, heap_total_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x10a, lbl_803739A0 + 0x87, heap_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x117, lbl_803739A0 + 0x9D, heap_total_used_size);
    JUTReport__FiiPCce(0x64, 0x124, lbl_803739A0 + 0xB3,
                       (int)(heap_total_used_size * 0x64) / (int)this->heap_size);
    JUTReport__FiiPCce(0x64, 0x131, lbl_803739A0 + 0xCF, this->max_total_used_size);
    JUTReport__FiiPCce(0x64, 0x13e, lbl_803739A0 + 0xE5,
                       (this->max_total_used_size * 0x64) / (int)this->heap_size);
    JUTReport__FiiPCce(0x64, 0x14b, lbl_803739A0 + 0x101, this->max_total_free_size - heap_size2);
    JUTReport__FiiPCce(0x64, 0x158, lbl_803739A0 + 0x117,
                       ((this->max_total_free_size - heap_size2) * 0x64) / (int)this->heap_size);
    heap_size2 = countUsed(this->heap);
    JUTReport__FiiPCce(0x64, 0x165, lbl_803739A0 + 0x133, heap_size2);
}

asm void debugDisplay(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005AD8.s"
}

asm void Debug_console(u32) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80005D4C.s"
}

#ifdef NONMATCHING

extern void memcpy(void*, void*, int);

void LOAD_COPYDATE(void*) {
    s32 dvd_status;
    char buffer[32];
    DVDFileInfo file_info;

    dvd_status = DVDOpen((const char*)lbl_803739A0[0x283], &file_info);

    if (dvd_status) {
        DVDReadPrio(&file_info, buffer, 32, 0, 2);
        memcpy(lbl_803A2EE0, buffer, 17);
        DVDClose(&file_info);
    }
    return;
}
#else
asm void LOAD_COPYDATE(void*) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_8000614C.s"
}
#endif

void debug(void) {
    if (lbl_80450580[0]) {
        if (lbl_80450B1A[0]) {
            CheckHeap(2);
        }

        if (((m_gamePad[2]->buttons.button_flags & ~0x10) == 0x20) &&
            (m_gamePad[2]->buttons.field_0x4 & 0x10)) {
            lbl_80450B18 ^= 0x1;
        }

        if (lbl_80450B18) {
            if (((m_gamePad[2]->buttons.button_flags & ~0x10) == 0x40) &&
                (m_gamePad[2]->buttons.field_0x4 & 0x10)) {
                lbl_80450588[0] < 0x5 ? lbl_80450588[0]++ : lbl_80450588[0] = 0x1;
            }

            debugDisplay();
        }

        Debug_console(2);
    }
}
#ifdef NONMATCHING
void main01(void) {
    mDoCPd_c controller;

    mDoMch_Create();
    mDoGph_Create();

    controller.create();

    // Root Heap
    HeapCheckTable[0]->setHeap(lbl_80451378);
    if (lbl_80451378) {
        HeapCheckTable[0]->setHeapSize(lbl_80451378->getSize());
    }

    // System Heap
    HeapCheckTable[1]->setHeap(lbl_80451370);
    if (lbl_80451370) {
        HeapCheckTable[1]->setHeapSize(lbl_80451370->getSize());
    }

    // Zelda Heap
    HeapCheckTable[2]->setHeap(mDoExt_getZeldaHeap());
    if (HeapCheckTable[2]->getHeap()) {
        HeapCheckTable[2]->setHeapSize(HeapCheckTable[2]->getHeap()->getSize());
    }

    HeapCheckTable[3]->setHeap(mDoExt_getGameHeap());
    if (HeapCheckTable[3]->getHeap()) {
        HeapCheckTable[3]->setHeapSize(HeapCheckTable[3]->getHeap()->getSize());
    }

    HeapCheckTable[4]->setHeap(mDoExt_getArchiveHeap());
    if (HeapCheckTable[4]->getHeap()) {
        HeapCheckTable[4]->setHeapSize(HeapCheckTable[4]->getHeap()->getSize());
    }

    HeapCheckTable[5]->setHeap(mDoExt_getJ2dHeap());
    if (HeapCheckTable[5]->getHeap()) {
        HeapCheckTable[5]->setHeapSize(HeapCheckTable[5]->getHeap()->getSize());
    }

    HeapCheckTable[6]->setHeap(mDoExt_getHostIOHeap());
    if (HeapCheckTable[6]->getHeap()) {
        HeapCheckTable[6]->setHeapSize(HeapCheckTable[6]->getHeap()->getSize());
    }

    HeapCheckTable[7]->setHeap(mDoExt_getCommandHeap());
    if (HeapCheckTable[7]->getHeap()) {
        HeapCheckTable[7]->setHeapSize(HeapCheckTable[7]->getHeap()->getSize());
    }
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