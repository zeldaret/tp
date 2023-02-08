#ifndef C_TREE_ITER_H
#define C_TREE_ITER_H

#include "SSystem/SComponent/c_node_iter.h"
#include "SSystem/SComponent/c_tree.h"
#include "dolphin/types.h"

int cTrIt_Method(node_lists_tree_class* pTree, cNdIt_MethodFunc pJudgeFunc, void* pUserData);
void* cTrIt_Judge(node_lists_tree_class* pTree, cNdIt_JudgeFunc pJudgeFunc, void* pUserData);

#endif /* C_TREE_ITER_H */
