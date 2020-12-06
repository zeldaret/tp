#ifndef __JKRARAM_H__
#define __JKRARAM_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRThread/JKRThread.h"

// JKRExpandSwitch
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"

class JKRHeap;
class JKRAramBlock;
class JKRAram : public JKRThread {
  public:
    JKRAram(u32, u32, long);
    virtual ~JKRAram();

    static void create(u32, u32, long, long, long);

    /* vt[03] */ void* run(void); /* override */

    void checkOkAddress(u8*, u32, JKRAramBlock*, u32);
    void changeGroupIdIfNeed(u8*, int);
    void mainRamToAram(u8*, u32, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
    void aramToMainRam(u32, u8*, u32, JKRExpandSwitch, u32, JKRHeap*, int, u32*);
};

void JKRDecompressFromAramToMainRam(u32, void*, u32, u32, u32, u32*);
static void decompSZS_subroutine(u8*, u8*);
static void firstSrcData(void);
static void nextSrcData(u8*);

#endif
