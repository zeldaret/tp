
#ifndef SCOMPONENT_C_LIST_ITER_H_
#define SCOMPONENT_C_LIST_ITER_H_

#include "SComponent/c_list.h"
#include "SComponent/c_node_iter.h"
#include "global.h"

int cLsIt_Method(node_list_class* pList, cNdIt_MethodFunc pMethod, void* pUserData);
void* cLsIt_Judge(node_list_class* pList, cNdIt_JudgeFunc pJudge, void* pUserData);

#endif
