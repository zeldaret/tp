#ifndef JKRDVDARAMRIPPER_H
#define JKRDVDARAMRIPPER_H

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JSupport/JSUFileStream.h"

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

    // TODO: fix type
    static u8 sDvdAramAsyncList[12];
    static u32 sSZSBufferSize;
};

#endif /* JKRDVDARAMRIPPER_H */
