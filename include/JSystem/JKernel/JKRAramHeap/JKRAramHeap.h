#ifndef __JKRARAMHEAP_H__
#define __JKRARAMHEAP_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "global.h"

class JKRAramHeap : public JKRDisposer {
  public:
    enum EAllocMode {
        HEAD = 0,
        TAIL = 1,
    };

  public:
    JKRAramHeap(u32, u32);
    virtual ~JKRAramHeap(void);

    void alloc(u32, EAllocMode);
    void allocFromHead(u32);
    void allocFromTail(u32);
    void getFreeSize(void);
    void getTotalFreeSize(void);
    void dump(void);

    u8 getCurrentGroupID() {
        return this->mGroupId;
    }

    JKRHeap* getMgrHeap() {
        return this->mHeap;
    }

    void lock() {
        OSLockMutex(this->mMutex);
    }

    void unlock() {
        OSUnlockMutex(this->mMutex);
    }

  public:
    u8 mMutex[24]; // OSMutex
    JKRHeap* mHeap;
    u32 field_0x34;
    u32 field_0x38;
    u32 field_0x3c;
    u8 mGroupId;
    u8 padding_0x41[3];
};

#endif
