#ifndef __JKRARAMSTREAM_H__
#define __JKRARAMSTREAM_H__

#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JSupport/JSUFileInputStream/JSUFileInputStream.h"
#include "JSystem/JSupport/JSURandomInputStream/JSURandomInputStream.h"
#include "dolphin/types.h"

class JKRAramStreamCommand {
public:
    JKRAramStreamCommand();

public:
    u32 field_0x00;
    u32 field_0x04;
    u32 field_0x08;
    u32 field_0x0c;
    JSUFileInputStream* field_0x10;
    u32 field_0x14;
    u32* field_0x18;
    u32 field_0x1c;
    u32 field_0x20;
    u32 field_0x24;
    bool field_0x28;
    u8 padding_0x29[3];
    u32 field_0x2c;
    OSMessageQueue mQueue;
    OSMessage mMessage;
    u32 field_0x54;
    u32 field_0x58;
};

class JKRAramStream : public JKRThread {
private:
    JKRAramStream(long);
    virtual ~JKRAramStream();

    /* vt[03] */ void* run(void); /* override */

public:
    static void create(long);

    static void readFromAram(void);
    static void writeToAram(JKRAramStreamCommand*);
    static void write_StreamToAram_Async(JSUFileInputStream*, u32, u32, u32, u32*);
    static void sync(JKRAramStreamCommand*, int);
    static void setTransBuffer(u8*, u32, JKRHeap*);
};

#endif
