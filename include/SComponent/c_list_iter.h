
#ifndef SCOMPONENT_C_LIST_ITER_H
#define SCOMPONENT_C_LIST_ITER_H

#include "compatibility_c_cpp.h"
#include "SComponent/c_list.h"
#include "SComponent/c_node_iter.h"

BEGIN_C_DECLARATIONS

int cLsIt_Method(node_list_class *pList, cNdIt_MethodFunc pMethod, void *pUserData);
void * cLsIt_Judge(node_list_class *pList, cNdIt_JudgeFunc pJudge, void *pUserData);

END_C_DECLARATIONS

#endif
