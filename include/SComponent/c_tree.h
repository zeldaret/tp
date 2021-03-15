
#ifndef SCOMPONENT_C_TREE_H_
#define SCOMPONENT_C_TREE_H_

#include "SComponent/c_list.h"
#include "SComponent/c_node.h"

typedef struct node_lists_tree_class {
    node_list_class* mpLists;
    int mNumLists;
} node_lists_tree_class;

int cTr_SingleCut(node_class* pNode);
int cTr_Addition(node_lists_tree_class* pTree, int listIdx, node_class* pNode);
int cTr_Insert(node_lists_tree_class* pTree, int listIdx, node_class* pNode, int idx);
void cTr_Create(node_lists_tree_class* pTree, node_list_class* pLists, int numLists);

#endif
