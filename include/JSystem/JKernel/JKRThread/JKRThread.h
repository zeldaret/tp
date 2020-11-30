#ifndef __JKRTHREAD_H__
#define __JKRTHREAD_H__

#include "dolphin/types.h"

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

struct OSThread;
class JKRThreadName_;
class JUTConsole;
class JKRHeap;
class JKRThread {
  public:
    JKRThread(unsigned long, int, int);
    JKRThread(JKRHeap*, unsigned long, int, int);
    JKRThread(OSThread*, int);
    ~JKRThread();

    void setCommon_mesgQueue(JKRHeap* heap, int message_count);
    void setCommon_heapSpecified(JKRHeap* heap, u32 stack_size, int param_3);

    void start(void* param_1);
    JKRThread* searchThread(OSThread* thread);

    u32 run();

  public:
    union {
        void** __vt;
        JKRDisposer __base;
    };
};

class JKRThreadSwitch {
  public:
    JKRThreadSwitch(JKRHeap*);
    ~JKRThreadSwitch();

    static JKRThreadSwitch* createManager(JKRHeap* heap);

    JKRThread * enter(JKRThread *param_1, int param_2);
    void callback(OSThread *param_1, OSThread *param_2);
    void draw(JKRThreadName_ *param_1, JUTConsole *param_2);
    void draw(JKRThreadName_ *param_1);


  public:
};

#endif
