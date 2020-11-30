
#include "global.h"
#include "SComponent/c_node.h"

extern "C" {

#define NODE_GET_PREV(pNode) (pNode ? pNode->mpPrevNode : NULL)
#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)

void cNd_Join(node_class *pA, node_class *pB)
{
    pA->mpNextNode = pB;
    pB->mpPrevNode = pA;
}

int cNd_LengthOf(node_class *pNode)
{
    int count = 0;
    while (pNode) {
        count++;
        pNode = NODE_GET_NEXT(pNode);
    }
    return count;
}

node_class * cNd_First(node_class *pNode)
{
    node_class *pRet = NULL;
    while (pNode) {
        pRet = pNode;
        pNode = NODE_GET_PREV(pNode);
    }
    return pRet;
}

node_class * cNd_Last(node_class *pNode)
{
    node_class *pRet = NULL;
    while (pNode) {
        pRet = pNode;
        pNode = NODE_GET_NEXT(pNode);
    }
    return pRet;
}

#if NON_MATCHING
node_class * cNd_Order(node_class *pNode, int idx)
{
    // regalloc differences
    int i = 0;
    node_class *pRet = NULL;
    while (i < idx && pNode) {
        i++;
        pRet = pNode;
        pNode = NODE_GET_NEXT(pNode);
    }
    if (i < idx)
        return pNode;
    return NULL;
}
#else
asm node_class * cNd_Order(node_class *pNode, int idx)
{
    nofralloc
    /* 8026616C 002630AC  38 00 00 00 */	li r0, 0
    /* 80266170 002630B0  38 A0 00 00 */	li r5, 0
    /* 80266174 002630B4  48 00 00 20 */	b lbl_80266194
    lbl_80266178:
    /* 80266178 002630B8  7C 60 1B 78 */	mr r0, r3
    /* 8026617C 002630BC  28 03 00 00 */	cmplwi r3, 0
    /* 80266180 002630C0  38 A5 00 01 */	addi r5, r5, 1
    /* 80266184 002630C4  41 82 00 0C */	beq lbl_80266190
    /* 80266188 002630C8  80 63 00 08 */	lwz r3, 8(r3)
    /* 8026618C 002630CC  48 00 00 08 */	b lbl_80266194
    lbl_80266190:
    /* 80266190 002630D0  38 60 00 00 */	li r3, 0
    lbl_80266194:
    /* 80266194 002630D4  7C 05 20 00 */	cmpw r5, r4
    /* 80266198 002630D8  40 80 00 0C */	bge lbl_802661A4
    /* 8026619C 002630DC  28 03 00 00 */	cmplwi r3, 0
    /* 802661A0 002630E0  40 82 FF D8 */	bne lbl_80266178
    lbl_802661A4:
    /* 802661A4 002630E4  7C 05 20 00 */	cmpw r5, r4
    /* 802661A8 002630E8  40 80 00 0C */	bge lbl_802661B4
    /* 802661AC 002630EC  7C 03 03 78 */	mr r3, r0
    /* 802661B0 002630F0  4E 80 00 20 */	blr 
    lbl_802661B4:
    /* 802661B4 002630F4  38 60 00 00 */	li r3, 0
    /* 802661B8 002630F8  4E 80 00 20 */	blr 
}
#endif

void cNd_SingleCut(node_class *pNode)
{
    node_class *pPrev = pNode->mpPrevNode;
    node_class *pNext = pNode->mpNextNode;

    if (pPrev)
        pPrev->mpNextNode = pNode->mpNextNode;
    if (pNext)
        pNext->mpPrevNode = pNode->mpPrevNode;
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
}

void cNd_Cut(node_class *pNode)
{
    if (pNode->mpPrevNode)
        pNode->mpPrevNode->mpNextNode = NULL;
    pNode->mpPrevNode = NULL;
}

void cNd_Addition(node_class *pA, node_class *pB)
{
    node_class *pLast = cNd_Last(pA);
    cNd_Join(pLast, pB);
}

void cNd_Insert(node_class *pA, node_class *pB)
{
    node_class *pPrev = pA->mpPrevNode;
    if (pPrev == NULL) {
        cNd_Addition(pB, pA);
    } else {
        cNd_Cut(pA);
        cNd_Addition(pPrev, pB);
        cNd_Addition(pB, pA);
    }
}

void cNd_SetObject(node_class *pNode, void *pData)
{
    while (pNode) {
        pNode->mpData = pData;
        pNode = NODE_GET_NEXT(pNode);
    }
}

void cNd_ClearObject(node_class *pNode)
{
    cNd_SetObject(pNode, NULL);
}

void cNd_ForcedClear(node_class *pNode)
{
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
    pNode->mpData = NULL;
}

void cNd_Create(node_class *pNode, void *pData)
{
    pNode->mpPrevNode = NULL;
    pNode->mpNextNode = NULL;
    pNode->mpData = pData;
}

};
