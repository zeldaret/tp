#ifndef F_OP_ACTOR_ITER_H_
#define F_OP_ACTOR_ITER_H_


typedef int (*fopAcIt_ExecutorFunc)(void*, void*);
typedef void* (*fopAcIt_JudgeFunc)(void*, void*);

int fopAcIt_Executor(fopAcIt_ExecutorFunc, void*);
void* fopAcIt_Judge(fopAcIt_JudgeFunc, void*);

#endif