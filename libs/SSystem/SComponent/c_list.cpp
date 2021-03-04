
#include "SComponent/c_list.h"
#include "global.h"

void cLs_Init(node_list_class* pList) {
    pList->mpHead = NULL;
    pList->mpTail = NULL;
    pList->mSize = 0;
}

int cLs_SingleCut(node_class* pNode) {
    node_list_class* pList = (node_list_class*)pNode->mpData;
    if (pNode == pList->mpHead)
        pList->mpHead = pNode->mpNextNode;
    if (pNode == pList->mpTail)
        pList->mpTail = pNode->mpPrevNode;
    cNd_SingleCut(pNode);
    cNd_ClearObject(pNode);
    int newSize = pList->mSize - 1;
    pList->mSize = newSize;
    return newSize > 0;
}

int cLs_Addition(node_list_class* pList, node_class* pNode) {
    if (pList->mpTail == NULL) {
        pList->mpHead = pNode;
    } else {
        cNd_Addition(pList->mpTail, pNode);
    }

    pList->mpTail = cNd_Last(pNode);
    cNd_SetObject(pNode, pList);
    pList->mSize = cNd_LengthOf(pList->mpHead);
    return pList->mSize;
}

int cLs_Insert(node_list_class* pList, int idx, node_class* pNode) {
    node_class* pExisting = cNd_Order(pList->mpHead, idx);
    if (pExisting == NULL) {
        return cLs_Addition(pList, pNode);
    } else {
        cNd_SetObject(pNode, pList);
        cNd_Insert(pExisting, pNode);
        pList->mpHead = cNd_First(pNode);
        pList->mSize = cNd_LengthOf(pList->mpHead);
        return pList->mSize;
    }
}

node_class* cLs_GetFirst(node_list_class* pList) {
    if (pList->mSize != 0) {
        node_class* pHead = pList->mpHead;
        cLs_SingleCut(pHead);
        return pHead;
    } else {
        return NULL;
    }
}

void cLs_Create(node_list_class* pList) {
    cLs_Init(pList);
}
