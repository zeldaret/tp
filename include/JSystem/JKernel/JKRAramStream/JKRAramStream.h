#ifndef __JKRARAMSTREAM_H__
#define __JKRARAMSTREAM_H__

#include "JSystem/JKernel/JKRThread/JKRThread.h"
#include "JSystem/JSupport/JSUFileInputStream/JSUFileInputStream.h"
#include "JSystem/JSupport/JSURandomInputStream/JSURandomInputStream.h"
#include "dolphin/types.h"

class JKRAramStreamCommand {
public:
    enum Type {
        UNKNOWN = 0,
        READ = 1,
        WRITE = 2,
    };

    JKRAramStreamCommand();

public:
    /* 0x00 */ Type mType;
    /* 0x04 */ u32 mAddress;
    /* 0x08 */ u32 mSize;
    /* 0x0C */ u32 field_0x0c;
    /* 0x10 */ JSUFileInputStream* mStream;
    /* 0x14 */ u32 mOffset;
    /* 0x18 */ u32* mReturnSize;
    /* 0x1C */ u8* mTransferBuffer;
    /* 0x20 */ u32 mTransferBufferSize;
    /* 0x24 */ JKRHeap* mHeap;
    /* 0x28 */ bool mAllocatedTransferBuffer;
    /* 0x29 */ u8 padding_0x29[3];
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ OSMessageQueue mMessageQueue;
    /* 0x50 */ OSMessage mMessage;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ u32 field_0x58;
};

class JKRAramStream : public JKRThread {
private:
    JKRAramStream(long);
    virtual ~JKRAramStream();

    /* vt[03] */ void* run(void); /* override */

public:
    static JKRAramStream* create(long);

    static s32 readFromAram(void);
    static s32 writeToAram(JKRAramStreamCommand*);
    static JKRAramStreamCommand* write_StreamToAram_Async(JSUFileInputStream*, u32, u32, u32, u32*);
    static JKRAramStreamCommand* sync(JKRAramStreamCommand*, BOOL);
    static void setTransBuffer(u8*, u32, JKRHeap*);

private:
    static JKRAramStream* sAramStreamObject;
    static OSMessage sMessageBuffer[4];
    static OSMessageQueue sMessageQueue;

    static u8* transBuffer;
    static u32 transSize;
    static JKRHeap* transHeap;
};

inline JKRAramStream* JKRCreateAramStreamManager(long priority) {
    return JKRAramStream::create(priority);
}

#endif
