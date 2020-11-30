
#include "global.h"
#include "SComponent/c_node_iter.h"

extern "C" {

#define NODE_GET_PREV(pNode) (pNode ? pNode->mpPrevNode : NULL)
#define NODE_GET_NEXT(pNode) (pNode ? pNode->mpNextNode : NULL)

int cNdIt_Method(node_class *pNode, cNdIt_MethodFunc pMethod, void *pUserData)
{
    int ret = 1;
    node_class *pNext = NODE_GET_NEXT(pNode);

    while (pNode) {
        int methodRet = pMethod(pNode, pUserData);
        if (!methodRet)
            ret = 0;
        pNode = pNext;
        pNext = NODE_GET_NEXT(pNext);
    }

    return ret;
}

void * cNdIt_Judge(node_class *pNode, cNdIt_JudgeFunc pJudge, void *pUserData)
{
    node_class *pNext = NODE_GET_NEXT(pNode);

    while (pNode) {
        void *pJudgeRet = pJudge(pNode, pUserData);
        if (pJudgeRet != NULL)
            return pJudgeRet;
        pNode = pNext;
        pNext = NODE_GET_NEXT(pNext);
    }

    return NULL;
}

};
