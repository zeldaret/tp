#include "dolphin/types.h"

#include "SComponent/c_phase.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_iter.h"
#include "f/f_pc/f_pc_create_req.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"

extern "C" {

BOOL fpcCtRq_isCreatingByID(create_tag* pTag, s32* pId) {
    create_request* pReq = (create_request*)(pTag->mBase.mpTagData);
    return checkEqual(*pId, pReq->mBsPcId);
}

BOOL fpcCtRq_IsCreatingByID(u32 id) {
    return fpcCtIt_Judge((cNdIt_JudgeFunc)fpcCtRq_isCreatingByID, &id) != NULL ? 1 : 0;
}

void fpcCtRq_CreateQTo(create_request* pReq) {
    fpcCtTg_CreateQTo(&pReq->mBase.mBase);
    fpcLy_CreatedMesg(pReq->mpLayer);
    fpcLy_CancelQTo(&pReq->mMtdTg);
}

void fpcCtRq_ToCreateQ(create_request* pReq) {
    fpcLy_CreatingMesg(pReq->mpLayer);
    fpcLy_ToCancelQ(pReq->mpLayer, &pReq->mMtdTg);
    fpcCtTg_ToCreateQ(&pReq->mBase.mBase);
}

extern void cMl_NS_free(void* pPtr);

BOOL fpcCtRq_Delete(create_request* pReq) {
    fpcCtRq_CreateQTo(pReq);
    if (pReq->mpCtRqMtd != NULL && fpcMtd_Method(pReq->mpCtRqMtd->mpDelete, pReq) == 0) {
        return 0;
    } else {
        if (pReq->mpRes) {
            pReq->mpRes->mpCtRq = NULL;
        }
        cMl_NS_free(pReq);
        return 1;
    }
}

BOOL fpcCtRq_Cancel(create_request* pReq) {
    base_process_class* pProc;
    if (pReq != NULL && !pReq->mbIsCancelling) {
        pReq->mbIsCancelling = TRUE;
        pProc = pReq->mpRes;

        if (pProc != NULL && !fpcDt_Delete(pProc))
            return FALSE;

        if (pReq->mpCtRqMtd != NULL && !fpcMtd_Method(pReq->mpCtRqMtd->mpCancel, pReq))
            return FALSE;

        return fpcCtRq_Delete(pReq);
    } else {
        return TRUE;
    }
}

s32 fpcCtRq_IsDoing(create_request* pReq) {
    if (pReq != NULL)
        return pReq->mbIsCreating;
    else
        return FALSE;
}

BOOL fpcCtRq_Do(create_request* pReq) {
    s32 ret = cPhs_COMPLEATE_e;

    if (pReq->mpCtRqMtd != NULL) {
        cPhs__Handler pHandler = pReq->mpCtRqMtd->mpHandler;
        if (pHandler != NULL) {
            pReq->mbIsCreating = TRUE;
            ret = pHandler(pReq);
            pReq->mbIsCreating = FALSE;
        }
    }

    switch (ret) {
    case cPhs_COMPLEATE_e: {
        s32 success = fpcEx_ToExecuteQ(pReq->mpRes);
        if (success == 0)
            return fpcCtRq_Cancel(pReq);
        else
            return fpcCtRq_Delete(pReq);
    }
    case 3:
    case cPhs_ERROR_e:
        return fpcCtRq_Cancel(pReq);
    }

    return 1;
}

void fpcCtRq_Handler(void) {
    fpcCtIt_Method((cNdIt_MethodFunc)fpcCtRq_Do, NULL);
}

extern void* cMl_NS_memalignB(s32, u32);

create_request* fpcCtRq_Create(layer_class* pLayer, u32 size, create_request_method_class* pMthd) {
    create_request* pReq = (create_request*)cMl_NS_memalignB(-4, size);

    if (pReq != NULL) {
        fpcCtTg_Init(&pReq->mBase, pReq);
        fpcMtdTg_Init(&pReq->mMtdTg, (process_method_tag_func)fpcCtRq_Cancel, pReq);
        pReq->mpLayer = pLayer;
        pReq->mpCtRqMtd = pMthd;
        pReq->mBsPcId = fpcBs_MakeOfId();
        pReq->mpRes = NULL;
        pReq->mbIsCancelling = FALSE;
        fpcCtRq_ToCreateQ(pReq);
    }

    return pReq;
}

}