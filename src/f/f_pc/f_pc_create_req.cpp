
#include "f/f_pc/f_pc_create_req.h"

#include "SComponent/c_phase.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_create_iter.h"
#include "f/f_pc/f_pc_deletor.h"
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"

extern "C" {

bool fpcCtRq_isCreatingByID(create_tag* pTag, int* pId) {
    create_request* pReq = (create_request*)(pTag->mpTagData);
    return pReq->mBsPcId == *pId;
}

bool fpcCtRq_IsCreatingByID(unsigned int id) {
    return fpcCtIt_Judge((cNdIt_JudgeFunc)fpcCtRq_isCreatingByID, &id) != NULL;
}

void fpcCtRq_CreateQTo(create_request* pReq) {
    fpcCtTg_CreateQTo(pReq);
    fpcLy_CreatedMesg(pReq->mpLayer);
    fpcLy_CancelQTo(&pReq->mMtdTg);
}

void fpcCtRq_ToCreateQ(create_request* pReq) {
    fpcLy_CreatingMesg(pReq->mpLayer);
    fpcLy_ToCancelQ(pReq->mpLayer, &pReq->mMtdTg);
    fpcCtTg_ToCreateQ(pReq);
}

extern void cMl_NS_free(void* pPtr);

#if NON_MATCHING
bool fpcCtRq_Delete(create_request* pReq) {
    fpcCtRq_CreateQTo(pReq);
    if (pReq->mpCtRqMtd != NULL) {
        // flow control
        if (fpcMtd_Method(pReq->mpCtRqMtd->mpDelete, pReq) == 0)
            return 0;

        if (pReq->mpRes)
            pReq->mpRes->mpCtRq = NULL;
        cMl_NS_free(pReq);
        return 1;
    }

    return 0;
}
#else
asm bool fpcCtRq_Delete(create_request* pReq) {
    nofralloc
#include "f/f_pc/f_pc_create_req/asm/func_80020BA0.s"
}
#endif

bool fpcCtRq_Cancel(create_request* pReq) {
    if (pReq != NULL && !pReq->mbIsCancelling) {
        pReq->mbIsCancelling = true;
        base_process_class* pProc = pReq->mpRes;

        if (pProc != NULL && !fpcDt_Delete(pProc))
            return false;

        if (pReq->mpCtRqMtd != NULL && !fpcMtd_Method(pReq->mpCtRqMtd->mpCancel, pReq))
            return false;

        return fpcCtRq_Delete(pReq);
    } else {
        return true;
    }
}

int fpcCtRq_IsDoing(create_request* pReq) {
    if (pReq != NULL)
        return pReq->mbIsCreating;
    else
        return false;
}

static bool fpcCtRq_Do(create_request* pReq) {
    int ret = cPhs_COMPLEATE_e;

    if (pReq->mpCtRqMtd != NULL) {
        cPhs__Handler pHandler = pReq->mpCtRqMtd->mpHandler;
        if (pHandler != NULL) {
            pReq->mbIsCreating = true;
            ret = pHandler(pReq);
            pReq->mbIsCreating = false;
        }
    }

    switch (ret) {
    case cPhs_COMPLEATE_e: {
        int success = fpcEx_ToExecuteQ(pReq->mpRes);
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

extern void* cMl_NS_memalignB(int, unsigned long);
extern int fpcBs_MakeOfId(void);

create_request* fpcCtRq_Create(layer_class* pLayer, unsigned long size,
                               create_request_method_class* pMthd) {
    create_request* pReq = (create_request*)cMl_NS_memalignB(-4, size);

    if (pReq != NULL) {
        fpcCtTg_Init(pReq, pReq);
        fpcMtdTg_Init(&pReq->mMtdTg, (process_method_tag_func)fpcCtRq_Cancel, pReq);
        pReq->mpLayer = pLayer;
        pReq->mpCtRqMtd = pMthd;
        pReq->mBsPcId = fpcBs_MakeOfId();
        pReq->mpRes = NULL;
        pReq->mbIsCancelling = false;
        fpcCtRq_ToCreateQ(pReq);
    }

    return pReq;
}
};
