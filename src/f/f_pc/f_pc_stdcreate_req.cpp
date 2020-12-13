#include "global.h"
#include "f/f_pc/f_pc_stdcreate_req.h"
// #include "f/f_pc/f_pc_load.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_node.h"

extern "C" {

// f_pc_node::g_fpcNd_type
extern s32 lbl_80450D40;
// f_pc_stdcreate_req::submethod$2261
extern create_request_method_class lbl_803A3AF0;
// f_pc_stdcreate_req::method$2262
extern cPhs__Handler lbl_803A3AFC[7];

extern s32 fpcLd_Load(s16);
extern s32 fpcLd_Free(s16);

s32 fpcSCtRq_phase_Load(standard_create_request_class* pStdCreateReq) {
    switch(fpcLd_Load(pStdCreateReq->mLoadID)) {
        case 0:
            return 0;
        case 4:
            return 2;
        case 5:
        default:
            return 5;
    }
}

s32 fpcSCtRq_phase_CreateProcess(standard_create_request_class* pStdCreateReq) {
    fpcLy_SetCurrentLayer(pStdCreateReq->mpLayer);
    pStdCreateReq->mpRes = fpcBs_Create(pStdCreateReq->mLoadID, pStdCreateReq->mBsPcId, pStdCreateReq->unk_0x54);
    if (pStdCreateReq->mpRes == NULL) {
        fpcLd_Free(pStdCreateReq->mLoadID);
        return 5;
    } else {
        pStdCreateReq->mpRes->mpCtRq = pStdCreateReq;
        return 2;
    }
}

s32 fpcSCtRq_phase_SubCreateProcess(standard_create_request_class* pStdCreateReq) {
    fpcLy_SetCurrentLayer(pStdCreateReq->mpLayer);
    return fpcBs_SubCreate(pStdCreateReq->mpRes);
}

s32 fpcSCtRq_phase_IsComplete(standard_create_request_class* pStdCreateReq) {
    process_node_class* procNode = (process_node_class *) pStdCreateReq->mpRes;
    if (fpcBs_Is_JustOfType(lbl_80450D40, procNode->mSubType) == 1) {
        if (fpcLy_IsCreatingMesg(&procNode->mLayer) == 1) {
            return 0;
        }
    }
    return 2;
}

s32 fpcSCtRq_phase_PostMethod(standard_create_request_class* pStdCreateReq) {
    if(pStdCreateReq->unk_0x58 != NULL && pStdCreateReq->unk_0x58(pStdCreateReq->mpRes, pStdCreateReq->unk_0x5C) == 0) {
        return 0;
    } else {
        return 2;
    }
}

s32 fpcSCtRq_phase_Done(standard_create_request_class*) {
    return 2;
}

s32 fpcSCtRq_Handler(standard_create_request_class* pStdCreateReq) {
    s32 result = cPhs_Do(&pStdCreateReq->unk_0x48, pStdCreateReq);
    switch (result) {
        case 2:
            return fpcSCtRq_Handler(pStdCreateReq);
        case 4:
            return 4;
        case 1:
        case 5:
        default:
            return result;
    }
}

s32 fpcSCtRq_Delete(standard_create_request_class*) {
    return 1;
}

s32 fpcSCtRq_Cancel(standard_create_request_class*) {
    return 1;
}

s32 fpcSCtRq_Request(layer_class* param_1, s16 param_2, stdCreateFunc param_3, void* param_4, void* param_5) {
    if (param_2 >= 0x7FFF) {
        return -1;
    } else {
        standard_create_request_class* request = (standard_create_request_class*) fpcCtRq_Create(param_1, 0x60, &lbl_803A3AF0);
        if (request == NULL) {
            return -1;
        } else {
            cPhs_Set(&request->unk_0x48, lbl_803A3AFC);
            request->mLoadID = param_2;
            request->unk_0x58 = param_3;
            request->unk_0x5C = param_4;
            request->unk_0x54 = param_5;
            return request->mBsPcId;
        }
    }
}

}