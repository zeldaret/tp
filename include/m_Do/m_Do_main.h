#ifndef M_DO_M_DO_MAIN_H
#define M_DO_M_DO_MAIN_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include <os.h>

class JKRExpHeap;

extern OSThread mainThread;

s32 LOAD_COPYDATE(void*);

extern OSThread mainThread;
const int HeapCheckTableNum = 8;

class HeapCheck {
public:
#if VERSION != VERSION_WII_USA_R0
    HeapCheck(JKRExpHeap* heap, const char* name, const char* jName);
#endif

    void CheckHeap1(void);
    s32 getUsedCount(void) const;
#if VERSION == VERSION_WII_USA_R0
    void heapDisplay(void);
#else
    void heapDisplay(void) const;
#endif

    u32& getUsedCountRef() { return mUsedCount; }
    u32& getTotalUsedSizeRef() { return mTotalUsedSize; }
    JKRExpHeap* getHeap() { return mHeap; }
#if VERSION != VERSION_WII_USA_R0
    void setHeapSize(u32 i_size) { mTargetHeapSize = i_size; }
#endif
    s32 getMaxTotalUsedSize() const { return mMaxTotalUsedSize; }
    s32 getMaxTotalFreeSize() { return mMaxTotalFreeSize; }
    const char* getName() const { return mName; }
#if VERSION != VERSION_WII_USA_R0
    const char* getJName() const { return mJName; }
#endif
    void saveRelBase() {
        mUsedCount = getUsedCount();
        mTotalUsedSize = mHeap->getTotalUsedSize();
    }

    void setHeap(JKRExpHeap* i_heap);

#if VERSION == VERSION_WII_USA_R0
    u32 getTargetHeapSize();
#else
    u32 getTargetHeapSize() const {
        return mTargetHeapSize;
    }
#endif

    u32 getRelUsedCount() const { return getUsedCount() - mUsedCount; }
    u32 getRelTotalUsedSize() const { return mHeap->getTotalUsedSize() - mTotalUsedSize; }

public:
    /* 0x00 */ const char* mName;
#if VERSION != VERSION_WII_USA_R0
    /* 0x04 */ const char* mJName;
#endif
    /* 0x08 */ JKRExpHeap* mHeap;
    /* 0x0C */ s32 mMaxTotalUsedSize;
    /* 0x10 */ s32 mMaxTotalFreeSize;
    /* 0x14 */ s32 field_0x14;
    /* 0x18 */ s32 field_0x18;
    /* 0x1C */ u32 mTargetHeapSize;
    /* 0x20 */ u32 mUsedCount;
    /* 0x24 */ u32 mTotalUsedSize;
};

struct mDoMain {
    static int argument;
    static int e3menu_no;
    static u32 archiveHeapSize;
    static u32 gameHeapSize;

    static char COPYDATE_STRING[18];
    static u32 memMargin;
    static OSTime sPowerOnTime;
    static OSTime sHungUpTime;
    static s8 developmentMode;
};

#endif /* M_DO_M_DO_MAIN_H */
