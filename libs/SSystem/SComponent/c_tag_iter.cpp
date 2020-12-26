
#include "SComponent/c_tag_iter.h"
#include "global.h"

extern "C" {

int cTgIt_MethodCall(create_tag_class* pTag, method_filter* pMethodFilter) {
    return pMethodFilter->mpMethodFunc((node_class*)pTag->mpTagData, pMethodFilter->mpUserData);
}

void* cTgIt_JudgeFilter(create_tag_class* pTag, judge_filter* pJudgeFilter) {
    return pJudgeFilter->mpJudgeFunc((node_class*)pTag->mpTagData, pJudgeFilter->mpUserData);
}
};
