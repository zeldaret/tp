#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dolphin/types.h"

class HeapCheck {
public:
    void CheckHeap1(void);
    s32 getUsedCount(void) const;
    void heapDisplay(void) const;
    u32& getUsedCountRef() { return used_count; }
    u32& getTotalUsedSizeRef() { return total_used_size; }
    JKRExpHeap* getHeap() { return heap; }

private:
    char* names[2];
    JKRExpHeap* heap;
    s32 max_total_used_size;
    s32 max_total_free_size;
    u8 unk20[8];  // 8 bytes
    u32 heap_size;
    u32 used_count;
    u32 total_used_size;
};

extern HeapCheck* HeapCheckTable[8];