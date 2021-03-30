#ifndef C_LIST_ITER_H
#define C_LIST_ITER_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_node_iter.h"

int cLsIt_Method(node_list_class* pList, cNdIt_MethodFunc pMethod, void* pUserData);
void* cLsIt_Judge(node_list_class* pList, cNdIt_JudgeFunc pJudge, void* pUserData);

#endif /* C_LIST_ITER_H */
