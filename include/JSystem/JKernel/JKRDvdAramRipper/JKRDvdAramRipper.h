#ifndef __JKRDVDARAMRIPPER_H__
#define __JKRDVDARAMRIPPER_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "JSystem/JSupport/JSUFileInputStream/JSUFileInputStream.h"

class JKRADCommand {
  public:
    JKRADCommand();
    ~JKRADCommand();
};

class JKRDvdFile;
class JKRDvdAramRipper {
  public:
    static void loadToAram(long, u32, JKRExpandSwitch, u32, u32, u32*);
    static void loadToAram(JKRDvdFile*, u32, JKRExpandSwitch, u32, u32, u32*);
    static void loadToAram_Async(JKRDvdFile*, u32, JKRExpandSwitch, void (*)(u32), u32, u32, u32*);
    static void callCommand_Async(JKRADCommand*);
    static void syncAram(JKRADCommand*, int);
};

void JKRDecompressFromDVDToAram(JKRDvdFile*, u32, u32, u32, u32, u32, u32*);
static void decompSZS_subroutine(u8*, u32);
static void firstSrcData(void);
static void nextSrcData(u8*);
void dmaBufferFlush(u32);

#endif
