/**
 * f_op_overlap_req.cpp
 * Overlap Process Request
 */

#include "SSystem/SComponent/c_request.h"
#include "f_op/f_op_overlap_req.h"
#include "f_pc/f_pc_manager.h"
#include "f_pc/f_pc_stdcreate_req.h"

void fopOvlpReq_SetPeektime(overlap_request_class*, u16);

/* 8001E6EC-8001E748 01902C 005C+00 2/1 0/0 0/0 .text
 * fopOvlpReq_phase_Done__FP21overlap_request_class             */
static int fopOvlpReq_phase_Done(overlap_request_class* i_overlapReq) {
    if (fpcM_Delete(i_overlapReq->field_0x20) == 1) {
        i_overlapReq->field_0x20 = 0;
        i_overlapReq->field_0x4 = 0;
        i_overlapReq->mPeektime = 0;
        i_overlapReq->field_0x8 = 0;
        i_overlapReq->field_0xc = 0;
        return 2;
    }

    return 0;
}

/* 8001E748-8001E794 019088 004C+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsDone__FP21overlap_request_class           */
static s32 fopOvlpReq_phase_IsDone(overlap_request_class* param_1) {
    cReq_Done((request_base_class*)param_1);
    return param_1->field_0x2-- <= 0 ? 2 : 0;
}

/* 8001E794-8001E7E4 0190D4 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsWaitOfFadeout__FP21overlap_request_class  */
static int fopOvlpReq_phase_IsWaitOfFadeout(overlap_request_class* i_overlapReq) {
    if (cReq_Is_Done((request_base_class*)(i_overlapReq->field_0x20 + 0xC4))) {
        i_overlapReq->field_0x8 = 0;
        return 2;
    }

    return 0;
}

/* 8001E7E4-8001E854 019124 0070+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_WaitOfFadeout__FP21overlap_request_class    */
static int fopOvlpReq_phase_WaitOfFadeout(overlap_request_class* i_overlapReq) {
    if (i_overlapReq->mPeektime) {
        i_overlapReq->mPeektime--;
    }

    if (((u8)(i_overlapReq->field_0x0 & 0x3F)) == 2 && !i_overlapReq->mPeektime) {
        cReq_Command((request_base_class*)(i_overlapReq->field_0x20 + 0xC4), 2);
        return 2;
    }

    i_overlapReq->field_0x8 = 1;
    return 0;
}

/* 8001E854-8001E8A4 019194 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsComplete__FP21overlap_request_class       */
static int fopOvlpReq_phase_IsComplete(overlap_request_class* i_overlapReq) {
    if (cReq_Is_Done((request_base_class*)(i_overlapReq->field_0x20 + 0xC4))) {
        cReq_Done((request_base_class*)i_overlapReq);
        return 2;
    }

    return 0;
}

/* 8001E8A4-8001E904 0191E4 0060+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_IsCreated__FP21overlap_request_class        */
static int fopOvlpReq_phase_IsCreated(overlap_request_class* i_overlapReq) {
    if (fpcM_IsCreating(i_overlapReq->field_0x14) == 0) {
        base_process_class* pBaseProc = fpcEx_SearchByID(i_overlapReq->field_0x14);
    
        if (pBaseProc == NULL) {
            return cPhs_ERROR_e;
        }
    
        i_overlapReq->field_0x20 = (u8*)pBaseProc;
        return 2;
    }

    return 0;
}

/* 8001E904-8001E954 019244 0050+00 1/0 0/0 0/0 .text
 * fopOvlpReq_phase_Create__FP21overlap_request_class           */
static int fopOvlpReq_phase_Create(overlap_request_class* i_overlapReq) {
    fpcLy_SetCurrentLayer(i_overlapReq->pCurrentLayer);
    i_overlapReq->field_0x14 =
        fpcSCtRq_Request(fpcLy_CurrentLayer(), i_overlapReq->field_0x10, 0, 0, 0);
    return 2;
}

/* 8001E954-8001E9F0 019294 009C+00 0/0 1/1 0/0 .text
 * fopOvlpReq_Request__FP21overlap_request_classsUs             */
request_base_class* fopOvlpReq_Request(overlap_request_class* i_overlapReq, s16 param_2,
                                       u16 param_3) {
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
        i_overlapReq = 0;
        return (request_base_class*)i_overlapReq;
    }

    cReq_Command((request_base_class*)i_overlapReq, 1);
    i_overlapReq->field_0x10 = param_2;
    cPhs_Set(&i_overlapReq->field_0x18, phaseMethod);
    fopOvlpReq_SetPeektime(i_overlapReq, param_3);
    i_overlapReq->field_0x4 = 1;
    i_overlapReq->field_0x2 = 1;
    i_overlapReq->field_0x20 = 0;
    i_overlapReq->field_0x8 = 0;
    i_overlapReq->field_0xc = 0;
    i_overlapReq->pCurrentLayer = fpcLy_RootLayer();
    return (request_base_class*)i_overlapReq;
}

/* 8001E9F0-8001EA88 019330 0098+00 0/0 1/1 0/0 .text
 * fopOvlpReq_Handler__FP21overlap_request_class                */
int fopOvlpReq_Handler(overlap_request_class* i_overlapReq) {
    int phase_state = cPhs_Do(&i_overlapReq->field_0x18, i_overlapReq);

    switch (phase_state) {
    case cPhs_TWO_e:
        return fopOvlpReq_Handler(i_overlapReq);
    case cPhs_ZERO_e:
        return cPhs_ZERO_e;
    case cPhs_ONE_e:
        return cPhs_ZERO_e;
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
    return fopOvlpReq_phase_Done(i_overlapReq) == 2 ? 1 : 0;
}

/* 8001EAB4-8001EAC4 0193F4 0010+00 1/1 0/0 0/0 .text
 * fopOvlpReq_Is_PeektimeLimit__FP21overlap_request_class       */
int fopOvlpReq_Is_PeektimeLimit(overlap_request_class* i_overlapReq) {
    return i_overlapReq->mPeektime == 0 ? 1 : 0;
}

/* 8001EAC4-8001EAD8 019404 0014+00 1/1 0/0 0/0 .text
 * fopOvlpReq_SetPeektime__FP21overlap_request_classUs          */
void fopOvlpReq_SetPeektime(overlap_request_class* i_overlapReq, u16 param_2) {
    if (0x7fff < param_2) {
        return;
    }

    i_overlapReq->mPeektime = param_2;
}

/* 8001EAD8-8001EB34 019418 005C+00 0/0 1/1 0/0 .text
 * fopOvlpReq_OverlapClr__FP21overlap_request_class             */
int fopOvlpReq_OverlapClr(overlap_request_class* i_overlapReq) {
    if ((u8)((i_overlapReq->field_0x0 >> 7) & 1) == 1 || !fopOvlpReq_Is_PeektimeLimit(i_overlapReq))
    {
        return 0;
    }

    cReq_Create((request_base_class*)i_overlapReq, 2);
    return 1;
}
