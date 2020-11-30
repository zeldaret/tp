
#include "global.h"
#include "SComponent/c_list_iter.h"

extern "C" {

int cLsIt_Method(node_list_class *pList, cNdIt_MethodFunc pMethod, void *pUserData)
{
    if (pList->mSize > 0)
        return cNdIt_Method(pList->mpHead, pMethod, pUserData);
    else
        return 1;
}

void * cLsIt_Judge(node_list_class *pList, cNdIt_JudgeFunc pJudge, void *pUserData)
{
    if (pList->mSize > 0)
        return cNdIt_Judge(pList->mpHead, pJudge, pUserData);
    else
        return NULL;
}

};
