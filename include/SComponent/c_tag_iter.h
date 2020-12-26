
#ifndef SCOMPONENT_C_TAG_ITER_H
#define SCOMPONENT_C_TAG_ITER_H

#include "SComponent/c_node_iter.h"
#include "SComponent/c_tag.h"
#include "global.h"

typedef struct method_filter {
    cNdIt_MethodFunc mpMethodFunc;
    void* mpUserData;
} method_filter;

typedef struct judge_filter {
    cNdIt_JudgeFunc mpJudgeFunc;
    void* mpUserData;
} judge_filter;

BEGIN_C_DECLARATIONS

int cTgIt_MethodCall(create_tag_class* pTag, method_filter* pMethodFilter);
void* cTgIt_JudgeFilter(create_tag_class* pTag, judge_filter* pJudgeFilter);

END_C_DECLARATIONS

#endif
