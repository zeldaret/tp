/**
 * c_tree_iter.cpp
 *
 */

#include "SSystem/SComponent/c_tree_iter.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tree.h"
#include "dolphin/types.h"

/* 80266540-802665B4 0074+00 s=0 e=2 z=0  None .text
 * cTrIt_Method__FP21node_lists_tree_classPFP10node_classPv_iPv */
int cTrIt_Method(node_lists_tree_class* tree, cNdIt_MethodFunc method, void* data) {
    node_list_class* list = tree->mpLists;
    int i = tree->mNumLists;
    int ret = 1;
    while (i-- > 0) {
        int sub = cLsIt_Method(list++, method, data);
        if (sub == 0)
            ret = 0;
    }
    return ret;
}

/* 802665B4-80266624 0070+00 s=0 e=2 z=0  None .text
 * cTrIt_Judge__FP21node_lists_tree_classPFP10node_classPv_PvPv */
void* cTrIt_Judge(node_lists_tree_class* tree, cNdIt_JudgeFunc judge, void* data) {
    node_list_class* list = tree->mpLists;
    int i = tree->mNumLists;
    while (i-- > 0) {
        void* pJudgeRet = cLsIt_Judge(list++, judge, data);
        if (pJudgeRet != NULL)
            return pJudgeRet;
    }
    return NULL;
}
