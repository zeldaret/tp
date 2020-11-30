#ifndef __JKRTHREAD_H__
#define __JKRTHREAD_H__

#include "dolphin/types.h"

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

struct OSThread;

struct OSMessageQueue {
    u8 unkn[0x20];
};

class JKRThreadName_;
class JUTConsole;
class JKRHeap;
class JKRThread {
  public:
    JKRThread(u32 stack_size, int message_count, int param_3);
    JKRThread(JKRHeap* heap, u32 stack_size, int message_count, int param_4);
    JKRThread(OSThread* thread, int message_count);
    ~JKRThread();

    void setCommon_mesgQueue(JKRHeap* heap, int message_count);
    void setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3);

    void start(void* param_1);
    JKRThread* searchThread(OSThread* thread);

    u32 run();

  public:
    union {
        JKRDisposer __base;
        void** __vt;
    };

    JSUPtrLink thread_list_link;
    JKRHeap* heap;
    OSThread* os_thread;
    OSMessageQueue queue;
    void** messages;
    int message_count;
    void* stack_ptr;
    u32 stack_size;
    u8 field_0x60[4];
    u32 cost;
    u32 switch_count;
    u32 field_0x6c;
    u32 field_0x70;
    JKRHeap* field_0x74;
    JKRHeap* field_0x78;
};

class JKRThreadSwitch {
  public:
    JKRThreadSwitch(JKRHeap*);
    ~JKRThreadSwitch();

    static JKRThreadSwitch* createManager(JKRHeap* heap);

    JKRThread* enter(JKRThread* param_1, int param_2);
    static void callback(OSThread* param_1, OSThread* param_2);
    void draw(JKRThreadName_* param_1, JUTConsole* param_2);
    void draw(JKRThreadName_* param_1);

  public:
    void** __vt;
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
