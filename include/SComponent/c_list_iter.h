
#ifndef SCOMPONENT_C_LIST_ITER_H
#define SCOMPONENT_C_LIST_ITER_H

#include "SComponent/c_list.h"
#include "SComponent/c_node_iter.h"

extern "C" {

int cLsIt_Method(node_list_class *pList, cNdIt_MethodFunc pJudgeFunc, void *pUserData);
void * cLsIt_Judge(node_list_class *pList, cNdIt_JudgeFunc pJudgeFunc, void *pUserData);

};

#endif
