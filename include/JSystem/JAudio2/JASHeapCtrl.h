#ifndef JASHEAPCTRL_H
#define JASHEAPCTRL_H

#include "dolphin/types.h"

struct JASGenericMemPool {
    /* 80290848 */ JASGenericMemPool();
    /* 80290860 */ ~JASGenericMemPool();
    /* 802908C8 */ void newMemPool(u32, int);
    /* 80290948 */ void alloc(u32);
    /* 80290994 */ void free(void*, u32);
};

#endif /* JASHEAPCTRL_H */
