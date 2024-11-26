/**
 * f_op_scene_mng.cpp
 * Framework - Scene Process Manager
 */

#include "f_op/f_op_scene_mng.h"
#include "f_op/f_op_scene_iter.h"
#include "f_op/f_op_scene_req.h"

/* 8001ECB0-8001ECE0 0195F0 0030+00 0/0 7/7 1/1 .text            fopScnM_SearchByID__FUi */
scene_class* fopScnM_SearchByID(fpc_ProcID id) {
    return (scene_class*)fopScnIt_Judge((fop_ScnItFunc)fpcSch_JudgeByID, &id);
}

/* 804505B8-804505C0 000038 0004+04 2/2 0/0 0/0 .sdata           l_scnRqID */
static fpc_ProcID l_scnRqID = fpcM_ERROR_PROCESS_ID_e;

/* 8001ECE0-8001ED3C 019620 005C+00 0/0 4/4 1/1 .text fopScnM_ChangeReq__FP11scene_classssUs */
int fopScnM_ChangeReq(scene_class* i_scene, s16 i_procName, s16 param_3, u16 param_4) {
    fpc_ProcID request_id = fopScnRq_Request(2, i_scene, i_procName, NULL, param_3, param_4);
    if (request_id == fpcM_ERROR_PROCESS_ID_e) {
        return 0;
    }

    l_scnRqID = request_id;
    return 1;
}

/* 8001ED3C-8001ED84 01967C 0048+00 0/0 1/1 0/0 .text            fopScnM_DeleteReq__FP11scene_class
 */
fpc_ProcID fopScnM_DeleteReq(scene_class* i_scene) {
    fpc_ProcID request_id = fopScnRq_Request(1, i_scene, 0x7FFF, NULL, 0x7FFF, 0);
    return request_id != fpcM_ERROR_PROCESS_ID_e;
}

/* 8001ED84-8001EDCC 0196C4 0048+00 0/0 2/2 0/0 .text            fopScnM_CreateReq__FssUsUl */
int fopScnM_CreateReq(s16 i_procName, s16 param_2, u16 param_3, u32 i_data) {
    fpc_ProcID request_id = fopScnRq_Request(0, 0, i_procName, (void*)i_data, param_2, param_3);
    return request_id != fpcM_ERROR_PROCESS_ID_e;
}

/* 8001EDCC-8001EE10 01970C 0044+00 0/0 1/1 0/0 .text            fopScnM_ReRequest__FsUl */
u32 fopScnM_ReRequest(s16 i_procName, u32 i_data) {
    if (l_scnRqID == fpcM_ERROR_PROCESS_ID_e) {
        return 0;
    }

    return fopScnRq_ReRequest(l_scnRqID, i_procName, (void*)i_data);
}

/* 8001EE10-8001EE30 019750 0020+00 0/0 1/1 0/0 .text            fopScnM_Management__Fv */
void fopScnM_Management() {
    fopScnRq_Handler();
}

/* 8001EE30-8001EE34 019770 0004+00 0/0 1/1 0/0 .text            fopScnM_Init__Fv */
void fopScnM_Init() {}
