
#ifndef F_PC_LINE_ITER_H_
#define F_PC_LINE_ITER_H_

typedef int (*fpcLnIt_QueueFunc)(void*, void*);

void fpcLnIt_Queue(fpcLnIt_QueueFunc pFunc);

#endif
