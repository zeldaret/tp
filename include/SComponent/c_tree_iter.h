
#ifndef SCOMPONENT_C_TREE_ITER_H
#define SCOMPONENT_C_TREE_ITER_H

#include "SComponent/c_node_iter.h"
#include "SComponent/c_tree.h"
#include "global.h"

BEGIN_C_DECLARATIONS

int cTrIt_Method(node_lists_tree_class* pTree, cNdIt_MethodFunc pJudgeFunc, void* pUserData);
void* cTrIt_Judge(node_lists_tree_class* pTree, cNdIt_JudgeFunc pJudgeFunc, void* pUserData);

END_C_DECLARATIONS

#endif
