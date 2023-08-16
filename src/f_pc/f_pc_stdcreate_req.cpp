/**
 * f_pc_stdcreate_req.cpp
 * Framework - Process Standard Create Request
 */

#include "f_pc/f_pc_stdcreate_req.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_load.h"
#include "f_pc/f_pc_node.h"

/* 80023B70-80023BC4 0054+00 s=1 e=0 z=5  None .text
 * fpcSCtRq_phase_Load__FP29standard_create_request_class       */
s32 fpcSCtRq_phase_Load(standard_create_request_class* i_SCtReq) {
    switch (fpcLd_Load(i_SCtReq->mLoadID)) {
    case 0:
        return cPhs_INIT_e;
    case 4:
        return 2;
    case 5:
    default:
        return cPhs_ERROR_e;
    }
}

/* 80023BC4-80023C2C 0068+00 s=1 e=0 z=9  None .text
 * fpcSCtRq_phase_CreateProcess__FP29standard_create_request_class */
s32 fpcSCtRq_phase_CreateProcess(standard_create_request_class* i_SCtReq) {
    fpcLy_SetCurrentLayer(i_SCtReq->mBase.mpLayer);
    i_SCtReq->mBase.mpRes =
        fpcBs_Create(i_SCtReq->mLoadID, i_SCtReq->mBase.mBsPcId, i_SCtReq->unk_0x54);
    if (i_SCtReq->mBase.mpRes == NULL) {
        fpcLd_Free(i_SCtReq->mLoadID);
        return cPhs_ERROR_e;
    } else {
        i_SCtReq->mBase.mpRes->mpCtRq = (struct create_request*)i_SCtReq;
        return 2;
    }
}

/* 80023C2C-80023C64 0038+00 s=1 e=0 z=3  None .text
 * fpcSCtRq_phase_SubCreateProcess__FP29standard_create_request_class */
s32 fpcSCtRq_phase_SubCreateProcess(standard_create_request_class* i_SCtReq) {
    fpcLy_SetCurrentLayer(i_SCtReq->mBase.mpLayer);
    return fpcBs_SubCreate(i_SCtReq->mBase.mpRes);
}

/* 80023C64-80023CBC 0058+00 s=1 e=0 z=14  None .text
 * fpcSCtRq_phase_IsComplete__FP29standard_create_request_class */
s32 fpcSCtRq_phase_IsComplete(standard_create_request_class* i_SCtReq) {
    process_node_class* procNode = (process_node_class*)i_SCtReq->mBase.mpRes;
    if (fpcBs_Is_JustOfType(g_fpcNd_type, procNode->mBase.mSubType) == 1) {
        if (fpcLy_IsCreatingMesg(&procNode->mLayer) == 1) {
            return cPhs_INIT_e;
        }
    }
    return 2;
}

/* 80023CBC-80023D0C 0050+00 s=1 e=0 z=5  None .text
 * fpcSCtRq_phase_PostMethod__FP29standard_create_request_class */
s32 fpcSCtRq_phase_PostMethod(standard_create_request_class* i_SCtReq) {
    if (i_SCtReq->unk_0x58 != NULL &&
        i_SCtReq->unk_0x58(i_SCtReq->mBase.mpRes, i_SCtReq->unk_0x5C) == 0)
    {
        return cPhs_INIT_e;
    } else {
        return 2;
    }
}

/* 80023D0C-80023D14 0008+00 s=1 e=0 z=0  None .text
 * fpcSCtRq_phase_Done__FP29standard_create_request_class       */
s32 fpcSCtRq_phase_Done(standard_create_request_class* i_SCtReq) {
    return 2;
}

/* 80023D14-80023D84 0070+00 s=1 e=0 z=2  None .text
 * fpcSCtRq_Handler__FP29standard_create_request_class          */
s32 fpcSCtRq_Handler(standard_create_request_class* i_SCtReq) {
    s32 phase_state = cPhs_Do(&i_SCtReq->unk_0x48, i_SCtReq);

    switch (phase_state) {
    case cPhs_NEXT_e:
        return fpcSCtRq_Handler(i_SCtReq);
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case cPhs_LOADING_e:
    case cPhs_ERROR_e:
    default:
        return phase_state;
    }
}

/* 80023D84-80023D8C 0008+00 s=1 e=0 z=0  None .text
 * fpcSCtRq_Delete__FP29standard_create_request_class           */
s32 fpcSCtRq_Delete(standard_create_request_class* i_SCtReq) {
    return 1;
}

/* 80023D8C-80023D94 0008+00 s=1 e=0 z=1  None .text
 * fpcSCtRq_Cancel__FP29standard_create_request_class           */
s32 fpcSCtRq_Cancel(standard_create_request_class* i_SCtReq) {
    return 1;
}

/* 80023D94-80023E28 0094+00 s=0 e=12 z=1  None .text
 * fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv               */
s32 fpcSCtRq_Request(layer_class* i_layer, s16 i_procName, stdCreateFunc i_createFunc,
                     void* param_4, void* param_5) {
    static create_request_method_class submethod = {
        (cPhs__Handler)fpcSCtRq_Handler,
        (process_method_func)fpcSCtRq_Cancel,
        (process_method_func)fpcSCtRq_Delete,
    };

    static cPhs__Handler method[7] = {
        (cPhs__Handler)fpcSCtRq_phase_Load,
        (cPhs__Handler)fpcSCtRq_phase_CreateProcess,
        (cPhs__Handler)fpcSCtRq_phase_SubCreateProcess,
        (cPhs__Handler)fpcSCtRq_phase_IsComplete,
        (cPhs__Handler)fpcSCtRq_phase_PostMethod,
        (cPhs__Handler)fpcSCtRq_phase_Done,
        NULL,
    };

    if (i_procName >= 0x7FFF) {
        return -1;
    } else {
        standard_create_request_class* request =
            (standard_create_request_class*)fpcCtRq_Create(i_layer, 0x60, &submethod);
        if (request == NULL) {
            return -1;
        } else {
            cPhs_Set(&request->unk_0x48, method);
            request->mLoadID = i_procName;
            request->unk_0x58 = i_createFunc;
            request->unk_0x5C = param_4;
            request->unk_0x54 = param_5;
            return request->mBase.mBsPcId;
        }
    }
}
