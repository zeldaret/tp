
#include "SComponent/c_tree_iter.h"
#include "SComponent/c_list_iter.h"
#include "global.h"

int cTrIt_Method(node_lists_tree_class* pTree, cNdIt_MethodFunc pMethod, void* pUserData) {
    node_list_class* pList = pTree->mpLists;
    int i = pTree->mNumLists;
    int ret = 1;
    while (i-- > 0) {
        int sub = cLsIt_Method(pList++, pMethod, pUserData);
        if (sub == 0)
            ret = 0;
    }
    return ret;
}

void* cTrIt_Judge(node_lists_tree_class* pTree, cNdIt_JudgeFunc pJudge, void* pUserData) {
    node_list_class* pList = pTree->mpLists;
    int i = pTree->mNumLists;
    while (i-- > 0) {
        void* pJudgeRet = cLsIt_Judge(pList++, pJudge, pUserData);
        if (pJudgeRet != NULL)
            return pJudgeRet;
    }
    return NULL;
}
