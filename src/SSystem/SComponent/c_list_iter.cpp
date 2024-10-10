/**
 * c_list_iter.cpp
 *
 */

#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_list.h"
#include "dolphin/types.h"

/* 80266060-80266098 0038+00 s=0 e=5 z=0  None .text
 * cLsIt_Method__FP15node_list_classPFP10node_classPv_iPv       */
int cLsIt_Method(node_list_class* list, cNdIt_MethodFunc method, void* data) {
    if (list->mSize > 0)
        return cNdIt_Method(list->mpHead, method, data);
    else
        return 1;
}

/* 80266098-802660D0 0038+00 s=0 e=4 z=0  None .text
 * cLsIt_Judge__FP15node_list_classPFP10node_classPv_PvPv       */
void* cLsIt_Judge(node_list_class* list, cNdIt_JudgeFunc judge, void* data) {
    if (list->mSize > 0)
        return cNdIt_Judge(list->mpHead, judge, data);
    else
        return NULL;
}