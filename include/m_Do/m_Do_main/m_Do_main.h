#ifndef __M_DO_MAIN_H_
#define __M_DO_MAIN_H_
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "JSystem/JUtility/JUTConsole/JUTConsole.h"
#include "dolphin/types.h"

class HeapCheck {
public:
    void CheckHeap1(void);
    s32 getUsedCount(void) const;
    void heapDisplay(void) const;
    u32& getUsedCountRef() { return used_count; }
    u32& getTotalUsedSizeRef() { return total_used_size; }
    JKRExpHeap* getHeap() { return heap; }
    void setHeap(JKRExpHeap* i_heap) { heap = i_heap; }
    void setHeapSize(u32 i_size) { heap_size = i_size; }
    s32 getMaxTotalUsedSize() { return max_total_used_size; }
    s32 getMaxTotalFreeSize() { return max_total_free_size; }
    char** getNames() { return names; }

private:
    /* 0x00 */ char* names[2];
    /* 0x08 */ JKRExpHeap* heap;
    /* 0x0C */ s32 max_total_used_size;
    /* 0x10 */ s32 max_total_free_size;
    /* 0x14 */ u8 unk20[8];
    /* 0x1C */ u32 heap_size;
    /* 0x20 */ u32 used_count;
    /* 0x24 */ u32 total_used_size;
};

extern HeapCheck* HeapCheckTable[8];
extern HeapCheck lbl_803D32E0[8];  // RootHeapCheck
// extern HeapCheck lbl_803D3308; // SystemHeapCheck
// extern HeapCheck lbl_803D3330; // ZeldaHeapCheck
// extern HeapCheck lbl_803D3358; // GameHeapCheck
// extern HeapCheck lbl_803D3380; // ArchiveHeapCheck
// extern HeapCheck lbl_803D33A8; // J2dHeapCheck
// extern HeapCheck lbl_803D33D0; // HostioHeapCheck
// extern HeapCheck lbl_803D33F8; // CommandHeapCheck
extern u8 lbl_80450B1A[2];
extern u8 lbl_80450B18;
extern u8 lbl_80450588;
extern JUTConsole* lbl_804511B8;
extern u8 lbl_80451210[4];
extern JKRSolidHeap* lbl_80450BBC;
#endif