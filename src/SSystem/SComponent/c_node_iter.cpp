/**
 * c_node_iter.cpp
 *
 */

#include "SSystem/SComponent/c_node_iter.h"
#include "SSystem/SComponent/c_node.h"
#include "dolphin/types.h"

/* 80266324-802663B4 0090+00 s=0 e=1 z=0  None .text
 * cNdIt_Method__FP10node_classPFP10node_classPv_iPv            */
int cNdIt_Method(node_class* node, cNdIt_MethodFunc method, void* data) {
    int ret = 1;
    node_class* pNext = NODE_GET_NEXT(node);

    while (node) {
        int methodRet = method(node, data);
        if (!methodRet)
            ret = 0;
        node = pNext;
        pNext = NODE_GET_NEXT(pNext);
    }

    return ret;
}

/* 802663B4-80266440 008C+00 s=0 e=1 z=0  None .text
 * cNdIt_Judge__FP10node_classPFP10node_classPv_PvPv            */
void* cNdIt_Judge(node_class* node, cNdIt_JudgeFunc judge, void* data) {
    node_class* pNext = NODE_GET_NEXT(node);

    while (node) {
        void* ret = judge(node, data);
        if (ret != NULL)
            return ret;
        node = pNext;
        pNext = NODE_GET_NEXT(pNext);
    }

    return NULL;
}