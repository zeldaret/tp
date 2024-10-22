/**
 * c_tag_iter.cpp
 *
 */

#include "SSystem/SComponent/c_tag_iter.h"
#include "SSystem/SComponent/c_tag.h"

/* 80266A7C-80266AB0 0034+00 s=0 e=4 z=0  None .text
 * cTgIt_MethodCall__FP16create_tag_classP13method_filter       */
int cTgIt_MethodCall(create_tag_class* tag, method_filter* filter) {
    return filter->mpMethodFunc((node_class*)tag->mpTagData, filter->mpUserData);
}

/* 80266AB0-80266AE4 0034+00 s=0 e=5 z=0  None .text
 * cTgIt_JudgeFilter__FP16create_tag_classP12judge_filter       */
void* cTgIt_JudgeFilter(create_tag_class* tag, judge_filter* filter) {
    return filter->mpJudgeFunc((node_class*)tag->mpTagData, filter->mpUserData);
}