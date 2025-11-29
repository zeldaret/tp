#ifndef JASTASKTHREAD_H
#define JASTASKTHREAD_H

#include "JSystem/JKernel/JKRThread.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASTaskThread : public JKRThread {
private:
    struct JASThreadCallStack {
        /* 0x00 */ void (*mRunFunc)(void*);
        /* 0x04 */ u32 field_0x4;
        /* 0x08 */ union {
            u8 buffer[0x400];
            void* pBuffer;
        }field_0x8;
    };
public:
    typedef JASMemChunkPool<1024, JASThreadingModel::ObjectLevelLockable> ThreadMemPool;

    /* 8028F6C4 */ JASTaskThread(int, int, u32);
    /* 8028F9EC */ void* allocCallStack(void (*)(void*), void*);
    /* 8028F850 */ void* allocCallStack(void (*)(void*), void const*, u32);
    /* 8028FC54 */ int sendCmdMsg(void (*)(void*), void*);
    /* 8028FB5C */ int sendCmdMsg(void (*)(void*), void const*, u32);
    /* 8028FE88 */ void pause(bool);

    /* 8028F724 */ virtual ~JASTaskThread();
    /* 8028FD4C */ virtual void* run();

    /* 0x7C */ OSThreadQueue mpThreadQueue;
    /* 0x84 */ bool field_0x84;
};

#endif /* JASTASKTHREAD_H */
