
#ifndef F_PC_CREATE_ITER_H
#define F_PC_CREATE_ITER_H

#include "SComponent/c_node_iter.h"

struct node_method_data {
    cNdIt_MethodFunc mFunc;
    void* mpUserData;
};

struct node_judge_data {
    cNdIt_JudgeFunc mFunc;
    void* mpUserData;
};

struct fpcCtIt_jilprm_c {
    u32 mUnk0;
    cNdIt_JudgeFunc mFunc;
    void* mpUserData;
};


extern "C" {

int fpcCtIt_Method(cNdIt_MethodFunc pJudge, void *pUserData);
void * fpcCtIt_Judge(cNdIt_JudgeFunc pJudge, void *pUserData);
void *fpcCtIt_filter_JudgeInLayer(create_tag*,fpcCtIt_jilprm_c*);
void *fpcCtIt_JudgeInLayer(u32 pUnk0, cNdIt_JudgeFunc pFunc, void* pUserData);

};

#endif
