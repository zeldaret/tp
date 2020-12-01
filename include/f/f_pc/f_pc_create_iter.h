
#ifndef F_PC_CREATE_ITER_H
#define F_PC_CREATE_ITER_H

#include "SComponent/c_node_iter.h"

extern "C" {

int fpcCtIt_Method(cNdIt_MethodFunc pJudge, void *pUserData);
void * fpcCtIt_Judge(cNdIt_JudgeFunc pJudge, void *pUserData);

};

#endif
