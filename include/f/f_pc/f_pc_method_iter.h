
#ifndef F_PC_METHOD_ITER_H_
#define F_PC_METHOD_ITER_H_

#include "SComponent/c_list_iter.h"
#include "global.h"

typedef int (*fpcMtdIt_MethodFunc)(void*);

void fpcMtdIt_Method(node_list_class* pList, fpcMtdIt_MethodFunc pMethod);

#endif
