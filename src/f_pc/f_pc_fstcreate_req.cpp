/**
 * f_pc_fstcreate_req.cpp
 * Framework - Process Fast Create Request
 */

#include "f_pc/f_pc_fstcreate_req.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_load.h"

/* 80023A48-80023A98 0050+00 s=1 e=3 z=52  None .text      fpcFCtRq_Do__FP19fast_create_request */
s32 fpcFCtRq_Do(fast_create_request* i_createReq) {
    if (i_createReq->mpFastCreateFunc != NULL &&
        i_createReq->mpFastCreateFunc(i_createReq->mBase.mpRes, i_createReq->mpFastCreateData) == 0)
    {
        return 3;
    } else {
        return 4;
    }
}

/* 80023A98-80023AA0 0008+00 s=1 e=0 z=0  None .text      fpcFCtRq_Delete__FP19fast_create_request
 */
s32 fpcFCtRq_Delete(fast_create_request* i_createReq) {
    return 1;
}

/* 80023AA0-80023B70 00D0+00 s=0 e=3 z=43  None .text
 * fpcFCtRq_Request__FP11layer_classsPFPvPv_iPvPv               */
base_process_class* fpcFCtRq_Request(layer_class* i_layer, s16 i_procTypeID,
                                     fstCreateFunc i_createFunc, void* i_createData, void* pData) {
    static create_request_method_class submethod = {(cPhs__Handler)fpcFCtRq_Do, NULL,
                                                    (process_method_func)fpcFCtRq_Delete};

    if (!fpcLd_Use(i_procTypeID)) {
        return NULL;
    } else {
        fast_create_request* request =
            (fast_create_request*)fpcCtRq_Create(i_layer, 0x50, &submethod);
        if (request != NULL) {
            base_process_class* proc;
            fpcLy_SetCurrentLayer(i_layer);
            proc = fpcBs_Create(i_procTypeID, fpcBs_MakeOfId(), pData);
            if (proc != NULL) {
                proc->mpCtRq = (struct create_request*)request;
                request->mBase.mpRes = proc;
                request->mBase.mBsPcId = proc->mBsPcId;
                if (fpcBs_SubCreate(proc) == 2) {
                    request->mpFastCreateFunc = i_createFunc;
                    request->mpFastCreateData = i_createData;
                    return proc;
                }
            }
            fpcCtRq_Cancel(&request->mBase);
        }
        return NULL;
    }
}
