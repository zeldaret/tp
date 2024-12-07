/**
 * f_op_overlap_req.cpp
 * Overlap Process Request
 */

#include "SSystem/SComponent/c_request.h"
#include "f_op/f_op_overlap_req.h"
#include "f_pc/f_pc_manager.h"

void fopOvlpReq_SetPeektime(overlap_request_class*, u16);

/* 8001E6EC-8001E748 01902C 005C+00 2/1 0/0 0/0 .text
 * fopOvlpReq_phase_Done__FP21overlap_request_class             */
static int fopOvlpReq_phase_Done(overlap_request_class* i_overlapReq) {
    if (fpcM_Delete(i_overlapReq->overlap_task) == 1) {
        i_overlapReq->overlap_task = NULL;
        i_overlapReq->field_0x4 = 0;
        i_overlapReq->peektime = 0;
        i_overlapReq->field_0x8 = 0;
        i_overlapReq->field_0xc = 0;
        return cPhs_NEXT_e;
    }

    return cPhs_INIT_e;
}

/* 8001E748-8001E794 019088 004C+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsDone__FP21overlap_request_class           */
static s32 fopOvlpReq_phase_IsDone(overlap_request_class* i_overlapReq) {
    cReq_Done(&i_overlapReq->base);
    if (i_overlapReq->field_0x2-- <= 0) {
        return cPhs_NEXT_e;
    }

    return cPhs_INIT_e;
}

/* 8001E794-8001E7E4 0190D4 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsWaitOfFadeout__FP21overlap_request_class  */
static int fopOvlpReq_phase_IsWaitOfFadeout(overlap_request_class* i_overlapReq) {
    if (cReq_Is_Done(&i_overlapReq->overlap_task->request)) {
        i_overlapReq->field_0x8 = 0;
        return cPhs_NEXT_e;
    }

    return cPhs_INIT_e;
}

/* 8001E7E4-8001E854 019124 0070+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_WaitOfFadeout__FP21overlap_request_class    */
static int fopOvlpReq_phase_WaitOfFadeout(overlap_request_class* i_overlapReq) {
    if (i_overlapReq->peektime) {
        i_overlapReq->peektime--;
    }

    if (i_overlapReq->base.flag2 == 2 && !i_overlapReq->peektime) {
        cReq_Command(&i_overlapReq->overlap_task->request, 2);
        return cPhs_NEXT_e;
    }

    i_overlapReq->field_0x8 = 1;
    return cPhs_INIT_e;
}

/* 8001E854-8001E8A4 019194 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsComplete__FP21overlap_request_class       */
static int fopOvlpReq_phase_IsComplete(overlap_request_class* i_overlapReq) {
    if (cReq_Is_Done(&i_overlapReq->overlap_task->request)) {
        cReq_Done(&i_overlapReq->base);
        return cPhs_NEXT_e;
    }

    return cPhs_INIT_e;
}

/* 8001E8A4-8001E904 0191E4 0060+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsCreated__FP21overlap_request_class        */
static int fopOvlpReq_phase_IsCreated(overlap_request_class* i_overlapReq) {
    if (fpcM_IsCreating(i_overlapReq->request_id) == 0) {
        overlap_task_class* process = (overlap_task_class*)fpcM_SearchByID(i_overlapReq->request_id);
        if (process == NULL) {
            return cPhs_ERROR_e;
        }
    
        i_overlapReq->overlap_task = process;
        return cPhs_NEXT_e;
    }

    return cPhs_INIT_e;
}

/* 8001E904-8001E954 019244 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_Create__FP21overlap_request_class           */
static int fopOvlpReq_phase_Create(overlap_request_class* i_overlapReq) {
    fpcLy_SetCurrentLayer(i_overlapReq->layer);
    i_overlapReq->request_id =
        fpcSCtRq_Request(fpcLy_CurrentLayer(), i_overlapReq->procname, NULL, NULL, NULL);
    return cPhs_NEXT_e;
}

/* 8001E954-8001E9F0 019294 009C+00 0/0 1/1 0/0 .text
 * fopOvlpReq_Request__FP21overlap_request_classsUs             */
overlap_request_class* fopOvlpReq_Request(overlap_request_class* i_overlapReq, s16 i_procname,
                                       u16 i_peektime) {
    static cPhs__Handler phaseMethod[8] = {
        (cPhs__Handler)fopOvlpReq_phase_Create,
        (cPhs__Handler)fopOvlpReq_phase_IsCreated,
        (cPhs__Handler)fopOvlpReq_phase_IsComplete,
        (cPhs__Handler)fopOvlpReq_phase_WaitOfFadeout,
        (cPhs__Handler)fopOvlpReq_phase_IsWaitOfFadeout,
        (cPhs__Handler)fopOvlpReq_phase_IsDone,
        (cPhs__Handler)fopOvlpReq_phase_Done,
        (cPhs__Handler)NULL,
    };

    if (i_overlapReq->field_0x4 == 1) {
        i_overlapReq = NULL;
        return i_overlapReq;
    }

    cReq_Command(&i_overlapReq->base, 1);
    i_overlapReq->procname = i_procname;
    cPhs_Set(&i_overlapReq->phase_req, phaseMethod);
    fopOvlpReq_SetPeektime(i_overlapReq, i_peektime);
    i_overlapReq->field_0x4 = 1;
    i_overlapReq->field_0x2 = 1;
    i_overlapReq->overlap_task = NULL;
    i_overlapReq->field_0x8 = 0;
    i_overlapReq->field_0xc = 0;
    i_overlapReq->layer = fpcLy_RootLayer();
    return i_overlapReq;
}

/* 8001E9F0-8001EA88 019330 0098+00 0/0 1/1 0/0 .text
 * fopOvlpReq_Handler__FP21overlap_request_class                */
int fopOvlpReq_Handler(overlap_request_class* i_overlapReq) {
    int phase_state = cPhs_Do(&i_overlapReq->phase_req, i_overlapReq);

    switch (phase_state) {
    case cPhs_NEXT_e:
        return fopOvlpReq_Handler(i_overlapReq);
    case cPhs_INIT_e:
        return cPhs_INIT_e;
    case cPhs_LOADING_e:
        return cPhs_INIT_e;
    case cPhs_COMPLEATE_e:
        return cPhs_COMPLEATE_e;
    case cPhs_UNK3_e:
    case cPhs_ERROR_e:
        return cPhs_ERROR_e;
    default:
        return cPhs_ERROR_e;
    }
}

/* 8001EA88-8001EAB4 0193C8 002C+00 0/0 1/1 0/0 .text fopOvlpReq_Cancel__FP21overlap_request_class
 */
int fopOvlpReq_Cancel(overlap_request_class* i_overlapReq) {
    return fopOvlpReq_phase_Done(i_overlapReq) == cPhs_NEXT_e ? TRUE : FALSE;
}

/* 8001EAB4-8001EAC4 0193F4 0010+00 1/1 0/0 0/0 .text
 * fopOvlpReq_Is_PeektimeLimit__FP21overlap_request_class       */
int fopOvlpReq_Is_PeektimeLimit(overlap_request_class* i_overlapReq) {
    return i_overlapReq->peektime == 0 ? TRUE : FALSE;
}

/* 8001EAC4-8001EAD8 019404 0014+00 1/1 0/0 0/0 .text
 * fopOvlpReq_SetPeektime__FP21overlap_request_classUs          */
void fopOvlpReq_SetPeektime(overlap_request_class* i_overlapReq, u16 i_peektime) {
    if (i_peektime <= 0x7FFF) {
        i_overlapReq->peektime = i_peektime;
    }
}

/* 8001EAD8-8001EB34 019418 005C+00 0/0 1/1 0/0 .text
 * fopOvlpReq_OverlapClr__FP21overlap_request_class             */
int fopOvlpReq_OverlapClr(overlap_request_class* i_overlapReq) {
    if (i_overlapReq->base.flag0 == 1 || !fopOvlpReq_Is_PeektimeLimit(i_overlapReq))
    {
        return 0;
    }

    cReq_Create(&i_overlapReq->base, 2);
    return 1;
}
