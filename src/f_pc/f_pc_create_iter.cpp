/**
 * f_pc_create_iter.cpp
 * Framework - Process Create Iteration
 */

#include "f_pc/f_pc_create_iter.h"
#include "f_pc/f_pc_create_req.h"

/* 800209C8-80020A04 003C+00 s=0 e=1 z=0  None .text      fpcCtIt_Method__FPFPvPv_iPv */
s32 fpcCtIt_Method(fpcCtIt_MethodFunc pJudge, void* pUserData) {
    node_method_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Method(&g_fpcCtTg_Queue, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter);
}

/* 80020A04-80020A40 003C+00 s=1 e=2 z=0  None .text      fpcCtIt_Judge__FPFPvPv_PvPv */
void* fpcCtIt_Judge(fpcCtIt_JudgeFunc pJudge, void* pUserData) {
    node_judge_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Judge(&g_fpcCtTg_Queue, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
}

/* 80020A40-80020A94 0054+00 s=1 e=0 z=0  None .text
 * fpcCtIt_filter_JudgeInLayer__FP10create_tagP16fpcCtIt_jilprm_c */
void* fpcCtIt_filter_JudgeInLayer(create_tag* pCreateTag, fpcCtIt_jilprm_c* pIterData) {
    create_request* create_req = static_cast<create_request*>(pCreateTag->mBase.mpTagData);
    if (create_req->mpLayer->mLayerID == pIterData->mLayerID) {
        return pIterData->mFunc((node_class*)create_req->mpRes, pIterData->mpUserData);
    } else {
        return NULL;
    }
}

/* 80020A94-80020ACC 0038+00 s=0 e=1 z=0  None .text      fpcCtIt_JudgeInLayer__FUiPFPvPv_PvPv */
void* fpcCtIt_JudgeInLayer(unsigned int pLayerID, fpcCtIt_JudgeFunc pFunc, void* pUserData) {
    fpcCtIt_jilprm_c data;
    data.mLayerID = pLayerID;
    data.mFunc = pFunc;
    data.mpUserData = pUserData;
    return fpcCtIt_Judge((fpcCtIt_JudgeFunc)fpcCtIt_filter_JudgeInLayer, &data);
}
