#ifndef __JKRTHREAD_H__
#define __JKRTHREAD_H__

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"
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

    void setCommon_mesgQueue(JKRHeap* heap, int message_count);
    void setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3);

    OSThread* getThreadRecord() {
      return this->mOSThread;
    }

    static void* start(void* param_1);
    static JKRThread* searchThread(OSThread* thread);
    static JSUList<JKRThread>* getList() {
      return &lbl_8043428C;
    }

    /* vt[03] */ virtual void* run();

  public:
    JSULink<JKRThread> mThreadListLink;
    JKRHeap* mHeap;
    OSThread* mOSThread;
    OSMessageQueue mQueue;
    OSMessage* mMessages;
    int mMessageCount;
    void* mStackPtr;
    u32 mStackSize;
    u8 field_0x60;
    u8 padding_0x61[3];
    u32 mCost;
    u32 mSwitchCount;
    u32 field_0x6c;
    u32 field_0x70;
    JKRHeap* field_0x74;
    JKRHeap* field_0x78;
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
