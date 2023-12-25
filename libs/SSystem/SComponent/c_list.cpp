/**
 * c_list.cpp
 *
 */

#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_node.h"
#include "dolphin/types.h"

/* 80265E64-80265E78 0014+00 s=1 e=0 z=0  None .text      cLs_Init__FP15node_list_class */
void cLs_Init(node_list_class* list) {
    list->mpHead = NULL;
    list->mpTail = NULL;
    list->mSize = 0;
}

/* 80265E78-80265EFC 0084+00 s=1 e=4 z=0  None .text      cLs_SingleCut__FP10node_class */
int cLs_SingleCut(node_class* node) {
    node_list_class* list = (node_list_class*)node->mpData;
    if (node == list->mpHead)
        list->mpHead = node->mpNextNode;
    if (node == list->mpTail)
        list->mpTail = node->mpPrevNode;
    cNd_SingleCut(node);
    cNd_ClearObject(node);
    int newSize = list->mSize - 1;
    list->mSize = newSize;
    return newSize > 0;
}

/* 80265EFC-80265F70 0074+00 s=1 e=4 z=0  None .text
 * cLs_Addition__FP15node_list_classP10node_class               */
int cLs_Addition(node_list_class* list, node_class* node) {
    if (list->mpTail == NULL) {
        list->mpHead = node;
    } else {
        cNd_Addition(list->mpTail, node);
    }

    list->mpTail = cNd_Last(node);
    cNd_SetObject(node, list);
    list->mSize = cNd_LengthOf(list->mpHead);
    return list->mSize;
}

/* 80265F70-80265FF8 0088+00 s=0 e=1 z=0  None .text cLs_Insert__FP15node_list_classiP10node_class
 */
int cLs_Insert(node_list_class* list, int idx, node_class* node) {
    node_class* pExisting = cNd_Order(list->mpHead, idx);
    if (pExisting == NULL) {
        return cLs_Addition(list, node);
    } else {
        cNd_SetObject(node, list);
        cNd_Insert(pExisting, node);
        list->mpHead = cNd_First(node);
        list->mSize = cNd_LengthOf(list->mpHead);
        return list->mSize;
    }
}

/* 80265FF8-80266040 0048+00 s=0 e=1 z=0  None .text      cLs_GetFirst__FP15node_list_class */
node_class* cLs_GetFirst(node_list_class* list) {
    if (list->mSize != 0) {
        node_class* pHead = list->mpHead;
        cLs_SingleCut(pHead);
        return pHead;
    } else {
        return NULL;
    }
}

/* 80266040-80266060 0020+00 s=0 e=4 z=0  None .text      cLs_Create__FP15node_list_class */
void cLs_Create(node_list_class* list) {
    cLs_Init(list);
}
