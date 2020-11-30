#ifndef __JKRTHREAD_VTABLE_H__
#define __JKRTHREAD_VTABLE_H__

#include "dolphin/types.h"

class JKRThread;
struct _VTABLE_JKRThread {
    void (*func0)(JKRThread*);
    void (*_ct)(JKRThread*);
    void (*_dt)(JKRThread*, int);
    void* (*run)(JKRThread*);
    void (*func4)(JKRThread*);
};

#endif