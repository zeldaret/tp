/**
 * f_op_overlap_mng.cpp
 * Overlap Process Manager
 */

#include "SSystem/SComponent/c_request.h"
#include "f_op/f_op_overlap_mng.h"
#include "f_op/f_op_overlap_req.h"
#include "f_op/f_op_scene_pause.h"
#include "f_pc/f_pc_executor.h"

/* 804505B0-804505B8 000030 0004+04 10/10 0/0 0/0 .sdata           l_fopOvlpM_overlap */
// making it not an array put it in .bss
static overlap_request_class* l_fopOvlpM_overlap[1] = {NULL};

/* 8001E484-8001E4C4 018DC4 0040+00 0/0 1/1 0/0 .text            fopOvlpM_SceneIsStop__Fv */
int fopOvlpM_SceneIsStop() {
    if (l_fopOvlpM_overlap[0] != NULL) {
        return fopScnPause_Enable(
            (scene_class*)fpcEx_SearchByID(l_fopOvlpM_overlap[0]->overlap_task->scene_id));
    }
    
    return 0;
}

/* 8001E4C4-8001E504 018E04 0040+00 0/0 5/5 0/0 .text            fopOvlpM_SceneIsStart__Fv */
int fopOvlpM_SceneIsStart() {
    if (l_fopOvlpM_overlap[0] != NULL) {
        return fopScnPause_Disable(
            (scene_class*)fpcEx_SearchByID(l_fopOvlpM_overlap[0]->overlap_task->scene_id));
    }
    
    return 0;
}

/* 8001E504-8001E51C 018E44 0018+00 0/0 3/3 0/0 .text fopOvlpM_IsOutReq__FP18overlap_task_class */
int fopOvlpM_IsOutReq(overlap_task_class* i_overlap_task) {
    return i_overlap_task->request.flag2 == 2;
}

/* 8001E51C-8001E540 018E5C 0024+00 0/0 6/6 0/0 .text fopOvlpM_Done__FP18overlap_task_class */
void fopOvlpM_Done(overlap_task_class* i_overlap_task) {
    cReq_Done(&i_overlap_task->request);
}

/* 8001E540-8001E558 018E80 0018+00 0/0 1/1 0/0 .text            fopOvlpM_ToldAboutID__FUi */
void fopOvlpM_ToldAboutID(fpc_ProcID i_sceneId) {
    if (l_fopOvlpM_overlap[0] != NULL) {
        l_fopOvlpM_overlap[0]->overlap_task->scene_id = i_sceneId;
    }
}

/* 8001E558-8001E574 018E98 001C+00 0/0 6/6 7/7 .text            fopOvlpM_IsPeek__Fv */
int fopOvlpM_IsPeek() {
    return l_fopOvlpM_overlap[0] != NULL ? l_fopOvlpM_overlap[0]->field_0x8 : FALSE;
}

/* 8001E574-8001E5A8 018EB4 0034+00 0/0 1/1 0/0 .text            fopOvlpM_IsDone__Fv */
int fopOvlpM_IsDone() {
    return l_fopOvlpM_overlap[0] != NULL ? cReq_Is_Done(&l_fopOvlpM_overlap[0]->base) : FALSE;
}

/* 8001E5A8-8001E5D0 018EE8 0028+00 0/0 3/3 1/1 .text            fopOvlpM_IsDoingReq__Fv */
int fopOvlpM_IsDoingReq() {
    if (l_fopOvlpM_overlap[0] != NULL && l_fopOvlpM_overlap[0]->field_0x4 == 1) {
        return 1;
    }

    return 0;
}

/* 8001E5D0-8001E604 018F10 0034+00 0/0 1/1 0/0 .text            fopOvlpM_ClearOfReq__Fv */
int fopOvlpM_ClearOfReq() {
    return l_fopOvlpM_overlap[0] != NULL ? fopOvlpReq_OverlapClr(l_fopOvlpM_overlap[0]) : 0;
}

/* 803F1DE8-803F1E10 01EB08 0028+00 1/1 0/0 0/0 .bss             l_fopOvlpM_Request */
static overlap_request_class l_fopOvlpM_Request;

/* 8001E604-8001E650 018F44 004C+00 0/0 1/1 0/0 .text            fopOvlpM_Request__FsUs */
overlap_request_class* fopOvlpM_Request(s16 i_procname, u16 i_peektime) {
    if (l_fopOvlpM_overlap[0] == NULL) {
        l_fopOvlpM_overlap[0] = fopOvlpReq_Request(&l_fopOvlpM_Request, i_procname, i_peektime);
        return l_fopOvlpM_overlap[0];
    }

    return NULL;
}

/* 8001E650-8001E698 018F90 0048+00 0/0 1/1 0/0 .text            fopOvlpM_Management__Fv */
void fopOvlpM_Management() {
    if (l_fopOvlpM_overlap[0] != NULL) {
        switch (fopOvlpReq_Handler(l_fopOvlpM_overlap[0])) {
        case cPhs_UNK3_e:
        case cPhs_COMPLEATE_e:
        case cPhs_ERROR_e:
            l_fopOvlpM_overlap[0] = NULL;
            break;
        }
    }
}

/* 8001E698-8001E6E8 018FD8 0050+00 0/0 1/1 0/0 .text            fopOvlpM_Cancel__Fv */
int fopOvlpM_Cancel() {
    if (l_fopOvlpM_overlap[0] == NULL) {
        return 1;
    }

    if (fopOvlpReq_Cancel(l_fopOvlpM_overlap[0]) == true) {
        l_fopOvlpM_overlap[0] = NULL;
        return 1;
    }

    return 0;
}

/* 8001E6E8-8001E6EC 019028 0004+00 0/0 1/1 0/0 .text            fopOvlpM_Init__Fv */
void fopOvlpM_Init() {}
