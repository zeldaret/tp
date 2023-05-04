#ifndef C_TAG_ITER_H
#define C_TAG_ITER_H

#include "SSystem/SComponent/c_node_iter.h"
#include "dolphin/types.h"

typedef struct create_tag_class create_tag_class;

typedef struct method_filter {
    cNdIt_MethodFunc mpMethodFunc;
    void* mpUserData;
} method_filter;

typedef struct judge_filter {
    cNdIt_JudgeFunc mpJudgeFunc;
    void* mpUserData;
} judge_filter;

int cTgIt_MethodCall(create_tag_class* pTag, method_filter* pMethodFilter);
void* cTgIt_JudgeFilter(create_tag_class* pTag, judge_filter* pJudgeFilter);

#endif /* C_TAG_ITER_H */
