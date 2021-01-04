#ifndef __JKRARAMHEAP_H__
#define __JKRARAMHEAP_H__

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "dolphin/types.h"
#include "global.h"

class JKRAramHeap : public JKRDisposer {
public:
    enum EAllocMode {
        HEAD = 0,
        TAIL = 1,

        __EALLOCMODE_FORCE_ENUM_S32 = INT32_MAX,
        __EALLOCMODE_FORCE_ENUM_SIGNED = -1,
    };

public:
    JKRAramHeap(u32, u32);
    virtual ~JKRAramHeap();

    JKRAramBlock* alloc(u32, EAllocMode);
    JKRAramBlock* allocFromHead(u32);
    JKRAramBlock* allocFromTail(u32);
    u32 getFreeSize(void);
    u32 getTotalFreeSize(void);
    // u32 getUsedSize(void);
    void dump(void);

    u8 getCurrentGroupID() const { return mGroupId; }

    JKRHeap* getMgrHeap() const { return mHeap; }

private:
    void lock() { OSLockMutex(&mMutex); }

    void unlock() { OSUnlockMutex(&mMutex); }

public:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRDisposer
    /* 0x18 */ OSMutex mMutex;
    /* 0x30 */ JKRHeap* mHeap;
    /* 0x34 */ u32 mHeadAddress;
    /* 0x38 */ u32 mTailAddress;
    /* 0x3C */ u32 mSize;
    /* 0x40 */ u8 mGroupId;
    /* 0x41 */ u8 padding_0x41[3];
};

#endif
