#ifndef JKRDVDARAMRIPPER_H
#define JKRDVDARAMRIPPER_H

#include "JSystem/JKernel/JKRDvdRipper.h"
#include "dolphin/types.h"

class JKRAramBlock;
class JKRAramStreamCommand;

class JKRADCommand {
public:
    JKRADCommand();
    ~JKRADCommand();

    /* 0x00 */ JSULink<JKRADCommand> mLink;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ JKRDvdFile* mDvdFile;
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ JKRAramBlock* mBlock;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ void (*field_0x38)(u32);
    /* 0x3C */ u32 field_0x3c;
    /* 0x40 */ u32 field_0x40;
    /* 0x44 */ u32* field_0x44;
    /* 0x48 */ int field_0x48;
    /* 0x4C */ u8 field_0x4c;
    /* 0x50 */ JKRAramStreamCommand* mStreamCommand;
};

class JKRDvdFile;
class JKRDvdAramRipper {
public:
    static JKRAramBlock* loadToAram(long, u32, JKRExpandSwitch, u32, u32, u32*);
    static JKRAramBlock* loadToAram(JKRDvdFile*, u32, JKRExpandSwitch, u32, u32, u32*);
    static JKRADCommand* loadToAram_Async(JKRDvdFile*, u32, JKRExpandSwitch, void (*)(u32), u32, u32, u32*);
    static JKRADCommand* callCommand_Async(JKRADCommand*);
    static bool syncAram(JKRADCommand*, int);

    // TODO: fix type
    static u8 sDvdAramAsyncList[12];
    static u32 sSZSBufferSize;
};

#endif /* JKRDVDARAMRIPPER_H */
