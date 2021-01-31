
#include "SComponent/c_node.h"
#include "global.h"

extern "C" {
#define NODE_GET_PREV(pNode) (pNode ? pNode->mpPrevNode : NULL)
#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)
void cNd_Join(node_class* pA, node_class* pB) {
    pA->mpNextNode = pB;
    pB->mpPrevNode = pA;
}

int cNd_LengthOf(node_class* pNode) {
    int count = 0;
    while (pNode) {
        count++;
        pNode = NODE_GET_NEXT(pNode);
    }
    return count;
}

node_class* cNd_First(node_class* pNode) {
    node_class* pRet = NULL;
    while (pNode) {
        pRet = pNode;
        pNode = NODE_GET_PREV(pNode);
    }
    return pRet;
}

node_class* cNd_Last(node_class* pNode) {
    node_class* pRet = NULL;
    while (pNode) {
        pRet = pNode;
        pNode = NODE_GET_NEXT(pNode);
    }
    return pRet;
}

node_class* cNd_Order(node_class* pNode, int idx) {
    node_class* pRet = NULL;
    int i = 0;
    while (i < idx && pNode) {
        pRet = pNode;
        i++;
        pNode = NODE_GET_NEXT(pNode);
    }
    if (i < idx)
        return pRet;
    return NULL;
}

void cNd_SingleCut(node_class* pNode) {
    node_class* pPrev = pNode->mpPrevNode;
    node_class* pNext = pNode->mpNextNode;

    if (pPrev)
        pPrev->mpNextNode = pNode->mpNextNode;
    if (pNext)
        pNext->mpPrevNode = pNode->mpPrevNode;
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
}

void cNd_Cut(node_class* pNode) {
    if (pNode->mpPrevNode)
        pNode->mpPrevNode->mpNextNode = NULL;
    pNode->mpPrevNode = NULL;
}

void cNd_Addition(node_class* pA, node_class* pB) {
    node_class* pLast = cNd_Last(pA);
    cNd_Join(pLast, pB);
}

void cNd_Insert(node_class* pA, node_class* pB) {
    node_class* pPrev = pA->mpPrevNode;
    if (pPrev == NULL) {
        cNd_Addition(pB, pA);
    } else {
        cNd_Cut(pA);
        cNd_Addition(pPrev, pB);
        cNd_Addition(pB, pA);
    }
}

void cNd_SetObject(node_class* pNode, void* pData) {
    while (pNode) {
        pNode->mpData = pData;
        pNode = NODE_GET_NEXT(pNode);
    }
}

void cNd_ClearObject(node_class* pNode) {
    cNd_SetObject(pNode, NULL);
}

void cNd_ForcedClear(node_class* pNode) {
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
    pNode->mpData = NULL;
}

void cNd_Create(node_class* pNode, void* pData) {
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
    pNode->mpData = pData;
}
};
