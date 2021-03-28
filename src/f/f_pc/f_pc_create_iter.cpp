#include "f/f_pc/f_pc_create_iter.h"
#include "f/f_pc/f_pc_create_req.h"

// g_fpcCtTg_Queue
extern node_list_class lbl_803A3990;

s32 fpcCtIt_Method(fpcCtIt_MethodFunc pJudge, void* pUserData) {
    node_method_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Method(&lbl_803A3990, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter);
}

void* fpcCtIt_Judge(fpcCtIt_JudgeFunc pJudge, void* pUserData) {
    node_judge_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Judge(&lbl_803A3990, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
}

void* fpcCtIt_filter_JudgeInLayer(create_tag* pCreateTag, fpcCtIt_jilprm_c* pIterData) {
    create_request* create_req = static_cast<create_request*>(pCreateTag->mBase.mpTagData);
    if (create_req->mpLayer->mLayerID == pIterData->mLayerID) {
        return pIterData->mFunc((node_class*)create_req->mpRes, pIterData->mpUserData);
    } else {
        return NULL;
    }
}

void* fpcCtIt_JudgeInLayer(unsigned int pLayerID, fpcCtIt_JudgeFunc pFunc, void* pUserData) {
    fpcCtIt_jilprm_c data;
    data.mLayerID = pLayerID;
    data.mFunc = pFunc;
    data.mpUserData = pUserData;
    return fpcCtIt_Judge((fpcCtIt_JudgeFunc)fpcCtIt_filter_JudgeInLayer, &data);
}