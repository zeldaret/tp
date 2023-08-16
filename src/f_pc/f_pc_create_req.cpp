/**
 * f_pc_create_req.cpp
 * Framework - Process Create Request
 */

#include "f_pc/f_pc_create_req.h"
#include "SSystem/SComponent/c_malloc.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_create_iter.h"
#include "f_pc/f_pc_deletor.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_layer_iter.h"

/* 80020ACC-80020AE8 001C+00 s=1 e=0 z=0  None .text      fpcCtRq_isCreatingByID__FP10create_tagPUi
 */
bool fpcCtRq_isCreatingByID(create_tag* i_createTag, unsigned int* i_procID) {
    create_request* pReq = static_cast<create_request*>(i_createTag->mBase.mpTagData);
    return pReq->mBsPcId == *i_procID;
}

/* 80020AE8-80020B20 0038+00 s=0 e=2 z=0  None .text      fpcCtRq_IsCreatingByID__FUi */
BOOL fpcCtRq_IsCreatingByID(unsigned int i_id) {
    return fpcCtIt_Judge((fpcLyIt_JudgeFunc)fpcCtRq_isCreatingByID, &i_id) != NULL ? TRUE : FALSE;
}

/* 80020B20-80020B5C 003C+00 s=1 e=0 z=0  None .text      fpcCtRq_CreateQTo__FP14create_request */
void fpcCtRq_CreateQTo(create_request* i_request) {
    fpcCtTg_CreateQTo(&i_request->mBase);
    fpcLy_CreatedMesg(i_request->mpLayer);
    fpcLy_CancelQTo(&i_request->mMtdTg);
}

/* 80020B5C-80020BA0 0044+00 s=1 e=0 z=0  None .text      fpcCtRq_ToCreateQ__FP14create_request */
void fpcCtRq_ToCreateQ(create_request* i_request) {
    fpcLy_CreatingMesg(i_request->mpLayer);
    fpcLy_ToCancelQ(i_request->mpLayer, &i_request->mMtdTg);
    fpcCtTg_ToCreateQ(&i_request->mBase);
}

/* 80020BA0-80020C14 0074+00 s=2 e=0 z=0  None .text      fpcCtRq_Delete__FP14create_request */
BOOL fpcCtRq_Delete(create_request* i_request) {
    fpcCtRq_CreateQTo(i_request);
    if (i_request->mpCtRqMtd != NULL && fpcMtd_Method(i_request->mpCtRqMtd->mpDelete, i_request) == 0) {
        return 0;
    } else {
        if (i_request->mpRes) {
            i_request->mpRes->mpCtRq = NULL;
        }
        cMl::free(i_request);
        return 1;
    }
}

/* 80020C14-80020CAC 0098+00 s=2 e=2 z=0  None .text      fpcCtRq_Cancel__FP14create_request */
BOOL fpcCtRq_Cancel(create_request* i_request) {
    base_process_class* pProc;
    if (i_request != NULL && !i_request->mbIsCancelling) {
        i_request->mbIsCancelling = TRUE;
        pProc = i_request->mpRes;

        if (pProc != NULL && !fpcDt_Delete(pProc))
            return FALSE;

        if (i_request->mpCtRqMtd != NULL && !fpcMtd_Method(i_request->mpCtRqMtd->mpCancel, i_request))
            return FALSE;

        return fpcCtRq_Delete(i_request);
    } else {
        return TRUE;
    }
}

/* 80020CAC-80020CC8 001C+00 s=0 e=1 z=0  None .text      fpcCtRq_IsDoing__FP14create_request */
s32 fpcCtRq_IsDoing(create_request* i_request) {
    if (i_request != NULL)
        return i_request->mbIsCreating;
    else
        return FALSE;
}

/* 80020CC8-80020D84 00BC+00 s=1 e=0 z=0  None .text      fpcCtRq_Do__FP14create_request */
BOOL fpcCtRq_Do(create_request* i_request) {
    s32 phase = cPhs_COMPLEATE_e;

    if (i_request->mpCtRqMtd != NULL) {
        cPhs__Handler pHandler = i_request->mpCtRqMtd->mpHandler;
        if (pHandler != NULL) {
            i_request->mbIsCreating = TRUE;
            phase = pHandler(i_request);
            i_request->mbIsCreating = FALSE;
        }
    }

    switch (phase) {
    case cPhs_COMPLEATE_e: {
        s32 success = fpcEx_ToExecuteQ(i_request->mpRes);
        if (success == 0)
            return fpcCtRq_Cancel(i_request);
        else
            return fpcCtRq_Delete(i_request);
    }
    case 3:
    case cPhs_ERROR_e:
        return fpcCtRq_Cancel(i_request);
    }

    return 1;
}

/* 80020D84-80020DB0 002C+00 s=0 e=1 z=0  None .text      fpcCtRq_Handler__Fv */

void fpcCtRq_Handler() {
    fpcCtIt_Method((fpcCtIt_MethodFunc)fpcCtRq_Do, NULL);
}

/* 80020DB0-80020E38 0088+00 s=0 e=2 z=0  None .text
 * fpcCtRq_Create__FP11layer_classUlP27create_request_method_class */
create_request* fpcCtRq_Create(layer_class* i_layer, u32 i_size, create_request_method_class* i_CtRqMethods) {
    create_request* pReq = (create_request*)cMl::memalignB(-4, i_size);

    if (pReq != NULL) {
        fpcCtTg_Init(&pReq->mBase, pReq);
        fpcMtdTg_Init(&pReq->mMtdTg, (process_method_tag_func)fpcCtRq_Cancel, pReq);
        pReq->mpLayer = i_layer;
        pReq->mpCtRqMtd = i_CtRqMethods;
        pReq->mBsPcId = fpcBs_MakeOfId();
        pReq->mpRes = NULL;
        pReq->mbIsCancelling = FALSE;
        fpcCtRq_ToCreateQ(pReq);
    }

    return pReq;
}
