#ifndef JASTASKTHREAD_H
#define JASTASKTHREAD_H

#include "JSystem/JKernel/JKRThread.h"
#include "dolphin/types.h"

class JASTaskThread : public JKRThread {
public:
    /* 8028F6C4 */ JASTaskThread(int, int, u32);
    /* 8028F9EC */ void allocCallStack(void (*)(void*), void*);
    /* 8028F850 */ void allocCallStack(void (*)(void*), void const*, u32);
    /* 8028FC54 */ void sendCmdMsg(void (*)(void*), void*);
    /* 8028FB5C */ int sendCmdMsg(void (*)(void*), void const*, u32);
    /* 8028FE88 */ void pause(bool);

    /* 8028F724 */ virtual ~JASTaskThread();
    /* 8028FD4C */ virtual void run();

    /* 0x7C */ OSThreadQueue* mpThreadQueue;
    /* 0x84 */ bool field_0x84;
    /* 0x88 */ u32 field_0x88;
};

#endif /* JASTASKTHREAD_H */
