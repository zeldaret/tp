/**
 * f_op_scene_req.cpp
 * Scene Process Request
 */

#include "f_op/f_op_scene_req.h"
#include "f_op/f_op_overlap_mng.h"
#include "f_op/f_op_scene.h"
#include "f_op/f_op_scene_pause.h"
#include "f_pc/f_pc_executor.h"

/* 8001EE34-8001EE64 019774 0030+00 1/0 0/0 0/0 .text
 * fopScnRq_phase_ClearOverlap__FP19scene_request_class         */
static cPhs__Step fopScnRq_phase_ClearOverlap(scene_request_class* i_sceneReq) {
    if (fopOvlpM_ClearOfReq() == 1) {
        return cPhs_NEXT_e;
    } else {
        return cPhs_INIT_e;
    }
}

/* 8001EE64-8001EE84 0197A4 0020+00 2/0 0/0 0/0 .text
 * fopScnRq_phase_Execute__FP19scene_request_class              */
static cPhs__Step fopScnRq_phase_Execute(scene_request_class* i_sceneReq) {
    return (cPhs__Step)fpcNdRq_Execute(&i_sceneReq->mCrtReq);
}

/* 8001EE84-8001EEB4 0197C4 0030+00 1/0 0/0 0/0 .text
 * fopScnRq_phase_IsDoingOverlap__FP19scene_request_class       */
static cPhs__Step fopScnRq_phase_IsDoingOverlap(scene_request_class* i_sceneReq) {
    if (fopOvlpM_IsDoingReq() == 1) {
        return cPhs_NEXT_e;
    } else {
        return cPhs_INIT_e;
    }
}

/* 8001EEB4-8001EEE4 0197F4 0030+00 1/0 0/0 0/0 .text
 * fopScnRq_phase_IsDoneOverlap__FP19scene_request_class        */
static cPhs__Step fopScnRq_phase_IsDoneOverlap(scene_request_class* i_sceneReq) {
    if (fopOvlpM_IsDone() == 1) {
        return cPhs_NEXT_e;
    } else {
        return cPhs_INIT_e;
    }
}

/* ############################################################################################## */
/* 80450CE0-80450CE8 0001E0 0004+04 2/2 0/0 0/0 .sbss            l_fopScnRq_IsUsingOfOverlap */
static s32 l_fopScnRq_IsUsingOfOverlap;

/* 8001EEE4-8001EF24 019824 0040+00 2/0 0/0 0/0 .text fopScnRq_phase_Done__FP19scene_request_class
 */
static cPhs__Step fopScnRq_phase_Done(scene_request_class* i_sceneReq) {
    if (i_sceneReq->mCrtReq.mParameter != 1) {
        fopScnPause_Disable((scene_class*)fpcEx_SearchByID(i_sceneReq->mCrtReq.mCreatingID));
    }
    l_fopScnRq_IsUsingOfOverlap = 0;
    return cPhs_NEXT_e;
}

/* 8001EF24-8001EF6C 019864 0048+00 1/0 0/0 0/0 .text fopScnRq_Execute__FP19scene_request_class */
static void fopScnRq_Execute(scene_request_class* i_sceneReq) {
    int tmp = cPhs_Do(&i_sceneReq->mReqPhsProcCls, i_sceneReq);
    switch (tmp) {
    case 2:
        fopScnRq_Execute(i_sceneReq);
    }
}

/* 8001EF6C-8001EFB0 0198AC 0044+00 1/0 0/0 0/0 .text
 * fopScnRq_PostMethod__FPvP19scene_request_class               */
static int fopScnRq_PostMethod(void* param_1, scene_request_class* i_sceneReq) {
    if (i_sceneReq->mFadeRequest) {
        fopScnPause_Enable((scene_class*)param_1);
        fopOvlpM_ToldAboutID(((scene_class*)param_1)->mBase.mBase.mBsPcId);
    }
    return 1;
}

/* 8001EFB0-8001EFF0 0198F0 0040+00 1/0 0/0 0/0 .text fopScnRq_Cancel__FP19scene_request_class */
static int fopScnRq_Cancel(scene_request_class* i_sceneReq) {
    if (i_sceneReq->mFadeRequest && !fopOvlpM_Cancel()) {
        return 0;
    } else {
        return 1;
    }
}

/* 8001EFF0-8001F034 019930 0044+00 1/1 0/0 0/0 .text            fopScnRq_FadeRequest__FsUs */
static scene_request_class* fopScnRq_FadeRequest(s16 param_1, u16 param_2) {
    request_base_class* req = NULL;

    if (l_fopScnRq_IsUsingOfOverlap == 0 && (req = fopOvlpM_Request(param_1, param_2), req != NULL))
    {
        l_fopScnRq_IsUsingOfOverlap = 1;
    }

    return (scene_request_class*)req;
}

/* 8001F034-8001F0FC 019974 00C8+00 0/0 3/3 0/0 .text fopScnRq_Request__FiP11scene_classsPvsUs */
s32 fopScnRq_Request(int param_1, scene_class* i_scene, s16 param_3, void* param_4, s16 param_5,
                     u16 param_6) {
    static node_create_request_method_class submethod = {
        (process_method_func)fopScnRq_Execute,
        (process_method_func)fopScnRq_Cancel,
        NULL,
        (process_method_func)fopScnRq_PostMethod,
    };

    static cPhs__Handler noFadeFase[8] = {
        (cPhs__Handler)fopScnRq_phase_Execute,
        (cPhs__Handler)fopScnRq_phase_Done,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    };

    static cPhs__Handler fadeFase[8] = {
        (cPhs__Handler)fopScnRq_phase_IsDoingOverlap,
        (cPhs__Handler)fopScnRq_phase_IsDoneOverlap,
        (cPhs__Handler)fopScnRq_phase_Execute,
        (cPhs__Handler)fopScnRq_phase_ClearOverlap,
        (cPhs__Handler)fopScnRq_phase_IsDoneOverlap,
        (cPhs__Handler)fopScnRq_phase_Done,
        NULL,
        NULL,
    };

    s32 ret;
    int tmp = 0;
    cPhs__Handler* phase_handler_table;
    phase_handler_table = noFadeFase;
    scene_request_class* pScnReq = (scene_request_class*)fpcNdRq_Request(
        sizeof(scene_request_class), param_1, (process_node_class*)i_scene, param_3, param_4,
        &submethod);

    if (!pScnReq) {
        ret = -1;
    } else {
        if (param_5 != 0x7fff) {
            phase_handler_table = fadeFase;
            tmp = (int)fopScnRq_FadeRequest(param_5, param_6);
            if (!tmp) {
                fpcNdRq_Delete(&pScnReq->mCrtReq);
                return -1;
            }
        }
        pScnReq->mFadeRequest = tmp;
        cPhs_Set(&pScnReq->mReqPhsProcCls, phase_handler_table);
        ret = pScnReq->mCrtReq.mRequestId;
    }

    return ret;
}

/* 8001F0FC-8001F11C 019A3C 0020+00 0/0 1/1 0/0 .text            fopScnRq_ReRequest__FUisPv */
s32 fopScnRq_ReRequest(fpc_ProcID param_1, s16 param_2, void* param_3) {
    return fpcNdRq_ReRequest(param_1, param_2, param_3);
}

/* 8001F11C-8001F13C 019A5C 0020+00 0/0 1/1 0/0 .text            fopScnRq_Handler__Fv */
void fopScnRq_Handler() {
    fpcNdRq_Handler();
}
