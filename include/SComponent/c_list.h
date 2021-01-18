
#ifndef SCOMPONENT_C_LIST_H_
#define SCOMPONENT_C_LIST_H_

#include "SComponent/c_node.h"

typedef struct node_list_class {
    node_class* mpHead;
    node_class* mpTail;
    int mSize;
} node_list_class;

extern "C" {

void cLs_Init(node_list_class* pList);
int cLs_SingleCut(node_class* pNode);
int cLs_Addition(node_list_class* pList, node_class* pNode);
int cLs_Insert(node_list_class* pList, int idx, node_class* pNode);
node_class* cLs_GetFirst(node_list_class* pList);
void cLs_Create(node_list_class* pList);
};

#endif
