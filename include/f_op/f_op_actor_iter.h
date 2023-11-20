#ifndef F_OP_ACTOR_ITER_H_
#define F_OP_ACTOR_ITER_H_


typedef int (*fopAcIt_ExecutorFunc)(void* actor, void* data);
typedef void* (*fopAcIt_JudgeFunc)(void* actor, void* data);

int fopAcIt_Executor(fopAcIt_ExecutorFunc executeFunc, void* data);
void* fopAcIt_Judge(fopAcIt_JudgeFunc judgeFunc, void* data);

#endif