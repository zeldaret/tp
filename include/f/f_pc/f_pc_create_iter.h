
#ifndef F_PC_CREATE_ITER_H
#define F_PC_CREATE_ITER_H

#include "SComponent/c_node_iter.h"

typedef struct node_method_data {
    cNdIt_MethodFunc mFunc;
    void* mpUserData;
} node_method_data;

typedef struct node_judge_data {
    cNdIt_JudgeFunc mFunc;
    void* mpUserData;
} node_judge_data;

typedef struct fpcCtIt_jilprm_c {
    u32 mUnk0;
    cNdIt_JudgeFunc mFunc;
    void* mpUserData;
} fpcCtIt_jilprm_c;


BEGIN_C_DECLARATIONS

s32 fpcCtIt_Method(cNdIt_MethodFunc pJudge, void *pUserData);
void * fpcCtIt_Judge(cNdIt_JudgeFunc pJudge, void *pUserData);
void *fpcCtIt_filter_JudgeInLayer(create_tag*,fpcCtIt_jilprm_c*);
void *fpcCtIt_JudgeInLayer(u32 pUnk0, cNdIt_JudgeFunc pFunc, void* pUserData);

END_C_DECLARATIONS

#endif
