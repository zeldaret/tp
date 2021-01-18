#ifndef JKRDVDRIPPER_H_
#define JKRDVDRIPPER_H_

#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "dolphin/types.h"

enum JKRExpandSwitch {
    EXPAND_SWITCH_UNKNOWN0 = 0,
    EXPAND_SWITCH_UNKNOWN1 = 1,
    EXPAND_SWITCH_UNKNOWN2 = 2,
};

class JKRHeap;
class JKRDvdFile;
class JKRDvdRipper {
public:
    enum EAllocDirection {
        UNKNOWN_EALLOC_DIRECTION = 0,
        ALLOC_DIRECTION_FORWARD = 1,
        ALLOC_DIRECTION_BACKWARD = 2,
    };

    static void* loadToMainRAM(char const*, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection,
                               u32, JKRCompression*, u32*);
    static void* loadToMainRAM(long, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection, u32,
                               JKRCompression*, u32*);
    static void* loadToMainRAM(JKRDvdFile*, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection,
                               u32, JKRCompression*, u32*);

    void isErrorRetry(void);
};

void JKRDecompressFromDVD(JKRDvdFile*, void*, u32, u32, u32, u32, u32*);

inline void* JKRDvdToMainRam(s32 entryNum, u8* dst, JKRExpandSwitch expandSwitch, u32 dstLength,
                             JKRHeap* heap, JKRDvdRipper::EAllocDirection allocDirection,
                             u32 offset, JKRCompression* compression, u32* returnSize) {
    return JKRDvdRipper::loadToMainRAM(entryNum, dst, expandSwitch, dstLength, heap, allocDirection,
                                       offset, compression, returnSize);
}

#endif
