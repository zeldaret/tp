/**
 * c_node.cpp
 *
 */

#include "SSystem/SComponent/c_node.h"
#include <dolphin/types.h>

/* 802660D0-802660DC 000C+00 s=1 e=0 z=0  None .text      cNd_Join__FP10node_classP10node_class */
void cNd_Join(node_class* node_a, node_class* node_b) {
    node_a->mpNextNode = node_b;
    node_b->mpPrevNode = node_a;
}

/* 802660DC-8026610C 0030+00 s=0 e=2 z=0  None .text      cNd_LengthOf__FP10node_class */
int cNd_LengthOf(node_class* node) {
    int count = 0;
    while (node) {
        count++;
        node = NODE_GET_NEXT(node);
    }
    return count;
}

/* 8026610C-8026613C 0030+00 s=0 e=1 z=0  None .text      cNd_First__FP10node_class */
node_class* cNd_First(node_class* node) {
    node_class* ret = NULL;
    while (node) {
        ret = node;
        node = NODE_GET_PREV(node);
    }
    return ret;
}

/* 8026613C-8026616C 0030+00 s=1 e=1 z=0  None .text      cNd_Last__FP10node_class */
node_class* cNd_Last(node_class* node) {
    node_class* ret = NULL;
    while (node) {
        ret = node;
        node = NODE_GET_NEXT(node);
    }
    return ret;
}

/* 8026616C-802661BC 0050+00 s=0 e=1 z=0  None .text      cNd_Order__FP10node_classi */
node_class* cNd_Order(node_class* node, int idx) {
    node_class* ret = NULL;
    int i = 0;
    while (i < idx && node) {
        ret = node;
        i++;
        node = NODE_GET_NEXT(node);
    }

    return i < idx ? ret : NULL;
}

/* 802661BC-802661F0 0034+00 s=0 e=1 z=0  None .text      cNd_SingleCut__FP10node_class */
void cNd_SingleCut(node_class* node) {
    node_class* prev = node->mpPrevNode;
    node_class* next = node->mpNextNode;

    if (prev)
        prev->mpNextNode = node->mpNextNode;
    if (next)
        next->mpPrevNode = node->mpPrevNode;
    node->mpPrevNode = NULL;
    node->mpNextNode = NULL;
}

/* 802661F0-80266210 0020+00 s=1 e=0 z=0  None .text      cNd_Cut__FP10node_class */
void cNd_Cut(node_class* node) {
    if (node->mpPrevNode)
        node->mpPrevNode->mpNextNode = NULL;
    node->mpPrevNode = NULL;
}

/* 80266210-80266244 0034+00 s=1 e=1 z=0  None .text      cNd_Addition__FP10node_classP10node_class
 */
void cNd_Addition(node_class* node_a, node_class* node_b) {
    node_class* pLast = cNd_Last(node_a);
    cNd_Join(pLast, node_b);
}

/* 80266244-802662B0 006C+00 s=0 e=1 z=0  None .text      cNd_Insert__FP10node_classP10node_class */
void cNd_Insert(node_class* node_a, node_class* node_b) {
    if (node_a->mpPrevNode == NULL) {
        cNd_Addition(node_b, node_a);
    } else {
        node_class* prev = node_a->mpPrevNode;
        cNd_Cut(node_a);
        cNd_Addition(prev, node_b);
        cNd_Addition(node_b, node_a);
    }
}

/* 802662B0-802662D8 0028+00 s=1 e=2 z=0  None .text      cNd_SetObject__FP10node_classPv */
void cNd_SetObject(node_class* node, void* data) {
    while (node) {
        node->mpData = data;
        node = NODE_GET_NEXT(node);
    }
}

/* 802662D8-802662FC 0024+00 s=0 e=1 z=0  None .text      cNd_ClearObject__FP10node_class */
void cNd_ClearObject(node_class* node) {
    cNd_SetObject(node, NULL);
}

/* 802662FC-80266310 0014+00 s=0 e=1 z=0  None .text      cNd_ForcedClear__FP10node_class */
void cNd_ForcedClear(node_class* node) {
    node->mpPrevNode = NULL;
    node->mpNextNode = NULL;
    node->mpData = NULL;
}

/* 80266310-80266324 0014+00 s=0 e=2 z=0  None .text      cNd_Create__FP10node_classPv */
void cNd_Create(node_class* node, void* data) {
    node->mpPrevNode = NULL;
    node->mpNextNode = NULL;
    node->mpData = data;
}
