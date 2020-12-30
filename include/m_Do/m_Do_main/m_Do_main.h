#include "dolphin/types.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"

class HeapCheck {
    public:
     void CheckHeap1(void);
     s32 getUsedCount(void) const;
     void heapDisplay(void) const;
     

    private:
     char* names[2];
     JKRExpHeap* heap;
     s32 max_total_used_size;
     s32 max_total_free_size;
     u8 unk20[8]; // 8 bytes
     u32 heap_size;
     u32 used_count;
     u32 total_used_size;
};