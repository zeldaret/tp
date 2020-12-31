#include "f/f_pc/f_pc_fstcreate_req.h"
#include "dolphin/types.h"

// f_pc_fstcreate_req::submethod$2214
extern create_request_method_class lbl_803A3AE0;

extern "C" {

BOOL fpcLd_Use(s16 procName);
s32 fpcLd_IsLoaded(s16 procName);
void fpcLd_Free(s16 procName);
s32 fpcLd_Load(s16 procName);

s32 fpcFCtRq_Do(fast_create_request* pFstCreateReq) {
    if (pFstCreateReq->mpFastCreateFunc != NULL &&
        pFstCreateReq->mpFastCreateFunc(pFstCreateReq->mBase.mpRes,
                                        pFstCreateReq->mpFastCreateData) == 0) {
        return 3;
    } else {
        return 4;
    }
}

s32 fpcFCtRq_Delete(fast_create_request* ppFstCreateReq) {
    return 1;
}

base_process_class* fpcFCtRq_Request(layer_class* pLayer, s16 pProcTypeID,
                                     fstCreateFunc pFastCreateFunc, void* pFastCreateData,
                                     void* pData) {
    if (!fpcLd_Use(pProcTypeID)) {
        return NULL;
    } else {
        fast_create_request* request =
            (fast_create_request*)fpcCtRq_Create(pLayer, 0x50, &lbl_803A3AE0);
        if (request != NULL) {
            base_process_class* proc;
            fpcLy_SetCurrentLayer(pLayer);
            proc = fpcBs_Create(pProcTypeID, fpcBs_MakeOfId(), pData);
            if (proc != NULL) {
                proc->mpCtRq = (struct create_request*)request;
                request->mBase.mpRes = proc;
                request->mBase.mBsPcId = proc->mBsPcId;
                if (fpcBs_SubCreate(proc) == 2) {
                    request->mpFastCreateFunc = pFastCreateFunc;
                    request->mpFastCreateData = pFastCreateData;
                    return proc;
                }
            }
            fpcCtRq_Cancel(&request->mBase);
        }
        return NULL;
    }
}
}