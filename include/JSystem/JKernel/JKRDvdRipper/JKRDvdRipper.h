#ifndef __JKRDVDRIPPER_H__
#define __JKRDVDRIPPER_H__

#include "dolphin/types.h"

enum JKRExpandSwitch {

};

class JKRHeap;
class JKRDvdFile;
class JKRDvdRipper {
public:
    enum EAllocDirection {

    };

    void loadToMainRAM(char const*, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection, u32, int*,
                       u32*);
    void loadToMainRAM(long, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection, u32, int*, u32*);
    void loadToMainRAM(JKRDvdFile*, u8*, JKRExpandSwitch, u32, JKRHeap*, EAllocDirection, u32, int*,
                       u32*);

    void isErrorRetry(void);
};

void JKRDecompressFromDVD(JKRDvdFile*, void*, u32, u32, u32, u32, u32*);
static void decompSZS_subroutine(u8*, u8*);
static void firstSrcData(void);
static void nextSrcData(u8*);

#endif
