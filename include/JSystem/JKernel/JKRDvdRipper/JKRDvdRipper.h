#ifndef __JKRDVDRIPPER_H__
#define __JKRDVDRIPPER_H__

#include "JSystem/JKernel/JKRDecomp/JKRDecomp.h"
#include "dolphin/types.h"

enum JKRExpandSwitch {
    EXPAND_SWITCH_UNKNOWN0 = 0,
    EXPAND_SWITCH_UNKNOWN1 = 1,
    EXPAND_SWITCH_UNKNOWN2 = 2,
    __FORCE_EXPAND_SWITCH_32BIT = UINT32_MAX,
};

class JKRHeap;
class JKRDvdFile;
class JKRDvdRipper {
public:
    enum EAllocDirection {
        UNKNOWN_EALLOC_DIRECTION = 0,
        FORWARD = 1,
        BACKWARD = 2,

        __FORCE_EALLOC_DIRECTION_32BIT = UINT32_MAX,
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
static void decompSZS_subroutine(u8*, u8*);
static void firstSrcData(void);
static void nextSrcData(u8*);

#endif
