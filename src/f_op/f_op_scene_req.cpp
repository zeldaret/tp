/**
 * f_op_scene_req.cpp
 * Scene Process Request
 */

#include "f_op/f_op_scene_req.h"
#include "f_op/f_op_overlap_mng.h"
#include "f_op/f_op_scene.h"
#include "f_op/f_op_scene_pause.h"
#include "f_pc/f_pc_executor.h"
#include "f_pc/f_pc_manager.h"

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
    return (cPhs__Step)fpcNdRq_Execute(&i_sceneReq->create_request);
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

/* 80450CE0-80450CE8 0001E0 0004+04 2/2 0/0 0/0 .sbss            l_fopScnRq_IsUsingOfOverlap */
static BOOL l_fopScnRq_IsUsingOfOverlap;

/* 8001EEE4-8001EF24 019824 0040+00 2/0 0/0 0/0 .text fopScnRq_phase_Done__FP19scene_request_class
 */
static cPhs__Step fopScnRq_phase_Done(scene_request_class* i_sceneReq) {
    if (i_sceneReq->create_request.parameters != 1) {
        fopScnPause_Disable((scene_class*)fpcEx_SearchByID(i_sceneReq->create_request.creating_id));
    }

    l_fopScnRq_IsUsingOfOverlap = FALSE;
    return cPhs_NEXT_e;
}

/* 8001EF24-8001EF6C 019864 0048+00 1/0 0/0 0/0 .text fopScnRq_Execute__FP19scene_request_class */
static void fopScnRq_Execute(scene_request_class* i_sceneReq) {
    int phase_state = cPhs_Do(&i_sceneReq->phase_request, i_sceneReq);

    switch (phase_state) {
    case cPhs_NEXT_e:
        fopScnRq_Execute(i_sceneReq);
    }
}

/* 8001EF6C-8001EFB0 0198AC 0044+00 1/0 0/0 0/0 .text
 * fopScnRq_PostMethod__FPvP19scene_request_class               */
static int fopScnRq_PostMethod(void* i_scene, scene_request_class* i_sceneReq) {
    if (i_sceneReq->fade_request != NULL) {
        fopScnPause_Enable((scene_class*)i_scene);
        fopOvlpM_ToldAboutID(((scene_class*)i_scene)->base.base.id);
    }
    return 1;
}

/* 8001EFB0-8001EFF0 0198F0 0040+00 1/0 0/0 0/0 .text fopScnRq_Cancel__FP19scene_request_class */
static int fopScnRq_Cancel(scene_request_class* i_sceneReq) {
    if (i_sceneReq->fade_request != NULL && !fopOvlpM_Cancel()) {
        return 0;
    } else {
        return 1;
    }
}

/* 8001EFF0-8001F034 019930 0044+00 1/1 0/0 0/0 .text            fopScnRq_FadeRequest__FsUs */
static scene_request_class* fopScnRq_FadeRequest(s16 i_procname, u16 i_peektime) {
    overlap_request_class* req = NULL;

    if (!l_fopScnRq_IsUsingOfOverlap && (req = fopOvlpM_Request(i_procname, i_peektime), req != NULL))
    {
        l_fopScnRq_IsUsingOfOverlap = TRUE;
    }

    return (scene_request_class*)req;
}

/* 8001F034-8001F0FC 019974 00C8+00 0/0 3/3 0/0 .text fopScnRq_Request__FiP11scene_classsPvsUs */
fpc_ProcID fopScnRq_Request(int i_reqType, scene_class* i_scene, s16 i_procName, void* i_data, s16 i_fadename,
                     u16 i_peektime) {
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

    scene_request_class* fade_req = NULL;
    cPhs__Handler* phase_handler = noFadeFase;

    scene_request_class* req = (scene_request_class*)fpcNdRq_Request(
        sizeof(scene_request_class), i_reqType, (process_node_class*)i_scene, i_procName, i_data,
        &submethod);

    if (req == NULL) {
        return fpcM_ERROR_PROCESS_ID_e;
    }

    if (i_fadename != 0x7FFF) {
        phase_handler = fadeFase;
        fade_req = fopScnRq_FadeRequest(i_fadename, i_peektime);
        if (fade_req == NULL) {
            fpcNdRq_Delete(&req->create_request);
            return fpcM_ERROR_PROCESS_ID_e;
        }
    }

    req->fade_request = fade_req;
    cPhs_Set(&req->phase_request, phase_handler);
    return req->create_request.request_id;
}

/* 8001F0FC-8001F11C 019A3C 0020+00 0/0 1/1 0/0 .text            fopScnRq_ReRequest__FUisPv */
s32 fopScnRq_ReRequest(fpc_ProcID i_requestId, s16 i_procName, void* i_data) {
    return fpcNdRq_ReRequest(i_requestId, i_procName, i_data);
}

/* 8001F11C-8001F13C 019A5C 0020+00 0/0 1/1 0/0 .text            fopScnRq_Handler__Fv */
void fopScnRq_Handler() {
    fpcNdRq_Handler();
}
