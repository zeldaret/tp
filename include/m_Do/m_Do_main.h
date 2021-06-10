#ifndef M_DO_M_DO_MAIN_H
#define M_DO_M_DO_MAIN_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "dolphin/types.h"

class HeapCheck {
public:
    void CheckHeap1(void);
    s32 getUsedCount(void) const;
    void heapDisplay(void) const;
    u32& getUsedCountRef() { return mUsedCount; }
    u32& getTotalUsedSizeRef() { return mTotalUsedSize; }
    JKRExpHeap* getHeap() { return mHeap; }
    void setHeap(JKRExpHeap* i_heap) { mHeap = i_heap; }
    void setHeapSize(u32 i_size) { mTargetHeapSize = i_size; }
    s32 getMaxTotalUsedSize() { return mMaxTotalUsedSize; }
    s32 getMaxTotalFreeSize() { return mMaxTotalFreeSize; }

private:
    /* 0x00 */ char* mName;
    /* 0x04 */ char* mJName;
    /* 0x08 */ JKRExpHeap* mHeap;
    /* 0x0C */ s32 mMaxTotalUsedSize;
    /* 0x10 */ s32 mMaxTotalFreeSize;
    /* 0x14 */ u8 unk20[8];
    /* 0x1C */ u32 mTargetHeapSize;
    /* 0x20 */ u32 mUsedCount;
    /* 0x24 */ u32 mTotalUsedSize;
};

struct mDoMain {
    static u8 COPYDATE_STRING[18 + 2 /* padding */];
    static u32 memMargin;
    static u8 sPowerOnTime[4];  // should be OSTime
    static u8 sHungUpTime[4];   // should be OSTime
};

#endif /* M_DO_M_DO_MAIN_H */
