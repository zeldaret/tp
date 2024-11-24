/**
 * f_pc_create_iter.cpp
 * Framework - Process Create Iteration
 */

#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "f_pc/f_pc_create_iter.h"
#include "f_pc/f_pc_create_req.h"
#include "f_pc/f_pc_layer.h"

/* 800209C8-80020A04 003C+00 s=0 e=1 z=0  None .text      fpcCtIt_Method__FPFPvPv_iPv */
int fpcCtIt_Method(fpcCtIt_MethodFunc i_method, void* i_data) {
    node_method_data iter;
    iter.method = i_method;
    iter.data = i_data;
    return cLsIt_Method(&g_fpcCtTg_Queue, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter);
}

/* 80020A04-80020A40 003C+00 s=1 e=2 z=0  None .text      fpcCtIt_Judge__FPFPvPv_PvPv */
void* fpcCtIt_Judge(fpcCtIt_JudgeFunc i_judge, void* i_data) {
    node_judge_data iter;
    iter.method = i_judge;
    iter.data = i_data;
    return cLsIt_Judge(&g_fpcCtTg_Queue, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
}

/* 80020A40-80020A94 0054+00 s=1 e=0 z=0  None .text
 * fpcCtIt_filter_JudgeInLayer__FP10create_tagP16fpcCtIt_jilprm_c */
void* fpcCtIt_filter_JudgeInLayer(create_tag* i_createTag, fpcCtIt_jilprm_c* i_iterData) {
    create_request* create_req = (create_request*)i_createTag->base.mpTagData;

    if (create_req->layer->layer_id == i_iterData->layer_id) {
        return i_iterData->method((node_class*)create_req->process, i_iterData->data);
    } else {
        return NULL;
    }
}

/* 80020A94-80020ACC 0038+00 s=0 e=1 z=0  None .text      fpcCtIt_JudgeInLayer__FUiPFPvPv_PvPv */
void* fpcCtIt_JudgeInLayer(fpc_ProcID i_layerID, fpcCtIt_JudgeFunc i_method, void* i_data) {
    fpcCtIt_jilprm_c data;
    data.layer_id = i_layerID;
    data.method = i_method;
    data.data = i_data;
    return fpcCtIt_Judge((fpcCtIt_JudgeFunc)fpcCtIt_filter_JudgeInLayer, &data);
}
