
#ifndef F_PC_CREATE_ITER_H_
#define F_PC_CREATE_ITER_H_

#include "dolphin/types.h"

typedef struct create_tag create_tag;

typedef int (*fpcCtIt_MethodFunc)(void*, void*);
typedef void* (*fpcCtIt_JudgeFunc)(void*, void*);

typedef struct node_method_data {
    fpcCtIt_MethodFunc mFunc;
    void* mpUserData;
} node_method_data;

typedef struct node_judge_data {
    fpcCtIt_JudgeFunc mFunc;
    void* mpUserData;
} node_judge_data;

typedef struct fpcCtIt_jilprm_c {
    u32 mLayerID;
    fpcCtIt_JudgeFunc mFunc;
    void* mpUserData;
} fpcCtIt_jilprm_c;

s32 fpcCtIt_Method(fpcCtIt_MethodFunc pJudge, void* pUserData);
void* fpcCtIt_Judge(fpcCtIt_JudgeFunc pJudge, void* pUserData);
void* fpcCtIt_filter_JudgeInLayer(create_tag*, fpcCtIt_jilprm_c*);
void* fpcCtIt_JudgeInLayer(unsigned int pUnk0, fpcCtIt_JudgeFunc pFunc, void* pUserData);

#endif
