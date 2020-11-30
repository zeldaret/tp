#ifndef __JKRDISPOSER_VTABLE_H__
#define __JKRDISPOSER_VTABLE_H__

#include "dolphin/types.h"

class JKRDisposer;
struct _VTABLE_JKRDisposer {
    void (*func0)(JKRDisposer*);
    void (*_ct)(JKRDisposer*);
    void (*_dt)(JKRDisposer*, int);
    void (*func4)(JKRDisposer*);
};

#endif