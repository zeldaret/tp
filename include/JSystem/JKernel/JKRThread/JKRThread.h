#ifndef __JKRTHREAD_H__
#define __JKRTHREAD_H__

#include "dolphin/types.h"

#include "JSystem/JKernel/JKRDisposer/JKRDisposer.h"

struct OSThread;
class JKRHeap;
class JKRThread {
  public:
    JKRThread(unsigned long, int, int);
    JKRThread(JKRHeap*, unsigned long, int, int);
    JKRThread(OSThread*, int);
    ~JKRThread();

    void setCommon_mesgQueue(JKRHeap *heap,int message_count);
    void setCommon_heapSpecified(JKRHeap *heap,u32 stack_size,int param_3);

    void start(void *param_1);
    int searchThread(OSThread *thread);

  public:

        union {
        void** __vt;
        JKRDisposer __base;
    };
};

#endif
