#ifndef F_OP_ACTOR_ITER_H_
#define F_OP_ACTOR_ITER_H_

#include "global.h"

typedef int (*fopAcIt_ExecutorFunc)(void*, void*);
typedef void* (*fopAcIt_JudgeFunc)(void*, void*);

extern "C" {
void fopAcIt_Judge__FPFPvPv_PvPv(void);
void fopAcIt_Executor__FPFPvPv_iPv(void);
}

int fopAcIt_Executor(fopAcIt_ExecutorFunc, void*);
void* fopAcIt_Judge(fopAcIt_JudgeFunc, void*);

#endif