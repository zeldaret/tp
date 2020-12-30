#include "m_Do/m_Do_main/m_Do_main.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "dvd/dvd.h"
#include "global.h"
#include "m_Do/m_Do_reset/m_Do_reset.h"
#include "m_Do/m_Do_controller_pad/m_Do_controller_pad.h"

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
extern u8 lbl_803A2EF4[0x4c];
extern u8 lbl_803DD2E8[0x100];

void CheckHeap(u32 param_1) {
    HeapCheck* currentHeap;
    s32 unk;

    mDoMch_HeapCheckAll();
    OSCheckActiveThreads();

    unk = 0;

    if ((((lbl_803DD2E8 + 0x30)[param_1 * 0x10] & 0xffffffef) == 0x60) &&
        (((lbl_803DD2E8 + 0x30)[param_1 * 0x10] & 0x10) != 0)) {
        unk = 1;
    }

    for (int i = 0; i < 8; i++) {
        ((HeapCheck*)lbl_803A2EF4[i])->CheckHeap1();

        if (unk) {
            currentHeap = (HeapCheck*)lbl_803A2EF4[i * 4];
            s32 current_used_count = currentHeap->getUsedCount();
            currentHeap->used_count = current_used_count;
            s32 current_total_used_size = currentHeap->heap->getTotalUsedSize();
            currentHeap->total_used_size = current_total_used_size;
        }
    }
}
#else
asm void CheckHeap(u32 param_1) {
    nofralloc
#include "m_Do/m_Do_main/asm/func_8000578C.s"
}
#endif

asm int countUsed(JKRExpHeap* heap){nofralloc
#include "m_Do/m_Do_main/asm/func_80005848.s"
}

s32 HeapCheck::getUsedCount(void) const {
    return countUsed(this->heap);
}

// 1 instruction off
#ifdef NONMATCHING
void HeapCheck::heapDisplay(void) const {
    u32 heap_size1 = heap->heap_size;
    s32 heap_size2 = this->heap->heap_size - this->heap_size;

    s32 heap_total_used_size = this->heap->getTotalUsedSize();
    s32 heap_total_free_size = ((JKRHeap*)this->heap)->getTotalFreeSize();
    s32 heap_free_size = ((JKRHeap*)this->heap)->getFreeSize();

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
#else
asm void HeapCheck::heapDisplay(void) const {
    nofralloc
#include "m_Do\m_Do_main\asm\func_800058C4.s"
}
#endif

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
    s32 dvd_status;
    char buffer[32];
    DVDFileInfo file_info;

    dvd_status = DVDOpen(lbl_803739a0 + 0x283, &file_info);

    if (dvd_status) {
        DVDReadPrio(&file_info, buffer, 32, 0, 2);
        memcpy(memcpy_string, buffer, 17);
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

#ifdef NONMATCHING
void debug(void) {
    if (DAT_80450580) {
        if (DAT_80450b1a) {
            CheckHeap(0x2);
        }

        if (((m_gamePad.buttons.button_flags & 0xffffffef) == 0x20) &&
            (m_gamePad.buttons.field_0x4 & 0x10)) {
            // if (1) {
            DAT_80450b18 = DAT_80450b18 ^ 0x1;
        }

        if (DAT_80450b18) {
            if (((m_gamePad.buttons.button_flags & 0xffffffef) == 0x40) &&
                (m_gamePad.buttons.field_0x4 & 0x10)) {
                if (DAT_80450588 < 0x5) {
                    DAT_80450588 = DAT_80450588 + 0x1;
                } else {
                    DAT_80450588 = 0x1;
                }
            }

            debugDisplay();
        }

        Debug_console(0x2);
    }
}
#else
asm void debug(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_800061C8.s"
}
#endif

asm void main01(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_8000628C.s"
}

asm void main(void) {
    nofralloc
#include "m_Do\m_Do_main\asm\func_80006454.s"
}