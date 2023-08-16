#ifndef C_TREE_ITER_H
#define C_TREE_ITER_H

#include "SSystem/SComponent/c_node_iter.h"

typedef struct node_lists_tree_class node_lists_tree_class;

int cTrIt_Method(node_lists_tree_class* pTree, cNdIt_MethodFunc pJudgeFunc, void* pUserData);
void* cTrIt_Judge(node_lists_tree_class* pTree, cNdIt_JudgeFunc pJudgeFunc, void* pUserData);

#endif /* C_TREE_ITER_H */
