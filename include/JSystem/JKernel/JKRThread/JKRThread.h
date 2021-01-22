#ifndef JKRTHREAD_H_
#define JKRTHREAD_H_

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
#include "dolphin/types.h"
#include "global.h"

class JKRThreadName_;
class JUTConsole;
class JKRHeap;
class JKRThread : JKRDisposer {
public:
    JKRThread(u32 stack_size, int message_count, int param_3);
    JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4);
    JKRThread(OSThread* thread, int message_count);
    virtual ~JKRThread();

    /* vt[03] */ virtual void* run();

    void setCommon_mesgQueue(JKRHeap* heap, int message_count);
    void setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3);

    OSThread* getThreadRecord() const { return mThreadRecord; }
    void* getStack() const { return mStackMemory; }
    u8 getLoadInfo() const { return field_0x60; }
    JKRHeap* getCurrentHeap() const { return mCurrentHeap; }
    JKRHeap* getCurrentHeapError() const { return mCurrentHeapError; }

protected:
    void resume() { OSResumeThread(mThreadRecord); }
    void sendMessage(OSMessage message) {
        OSSendMessage(&mMessageQueue, message, OS_MESSAGE_NON_BLOCKING);
    }
    void sendMessageBlock(OSMessage message) {
        OSSendMessage(&mMessageQueue, message, OS_MESSAGE_BLOCKING);
    }
    OSMessage waitMessage() {
        OSMessage message;
        OSReceiveMessage(&mMessageQueue, &message, OS_MESSAGE_NON_BLOCKING);
        return message;
    }
    OSMessage waitMessageBlock() {
        OSMessage message;
        OSReceiveMessage(&mMessageQueue, &message, OS_MESSAGE_BLOCKING);
        return message;
    }
    void jamMessageBlock(OSMessage message) {
        OSJamMessage(&mMessageQueue, message, OS_MESSAGE_BLOCKING);
    }

private:
    /* 0x00 */  // vtable
    /* 0x04 */  // JKRDisposer
    /* 0x18 */ JSULink<JKRThread> mThreadListLink;
    /* 0x28 */ JKRHeap* mHeap;
    /* 0x2C */ OSThread* mThreadRecord;
    /* 0x30 */ OSMessageQueue mMessageQueue;
    /* 0x50 */ OSMessage* mMessages;
    /* 0x54 */ s32 mMessageCount;
    /* 0x58 */ void* mStackMemory;
    /* 0x5C */ u32 mStackSize;
    /* 0x60 */ u8 field_0x60;
    /* 0x61 */ u8 padding_0x61[3];
    /* 0x64 */ u32 mCost;
    /* 0x68 */ u32 mSwitchCount;
    /* 0x6C */ u32 field_0x6c;
    /* 0x70 */ u32 field_0x70;
    /* 0x74 */ JKRHeap* mCurrentHeap;
    /* 0x78 */ JKRHeap* mCurrentHeapError;

public:
    static void* start(void* param_1);
    static JKRThread* searchThread(OSThread* thread);
    static JSUList<JKRThread>& getList() { return sThreadList; }

    static JSUList<JKRThread> sThreadList;
};

class JKRThreadSwitch {
public:
    JKRThreadSwitch(JKRHeap*);
    virtual ~JKRThreadSwitch();

    static JKRThreadSwitch* createManager(JKRHeap* heap);

    JKRThread* enter(JKRThread* param_1, int param_2);
    static void callback(OSThread* param_1, OSThread* param_2);
    void draw(JKRThreadName_* param_1, JUTConsole* param_2);
    void draw(JKRThreadName_* param_1);

public:
    JKRHeap* heap;
    u8 field_0x8[4];
    u32 field_0xC[2];
    u8 field_0x14[4];
    u32 field_0x18;
    u32 field_0x1C;
    u32 field_0x20;
    u32 field_0x24;
};

#endif
