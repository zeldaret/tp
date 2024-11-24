/**
 * f_op_camera_mng.cpp
 * Camera Process Manager
 */

#include "f_op/f_op_camera_mng.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_stdcreate_req.h"

/* ############################################################################################## */
/* 803F1DD8-803F1DE8 01EAF8 0010+00 1/1 0/0 0/0 .bss             l_fopCamM_id */
static u32 l_fopCamM_id[4];

/* 8001E308-8001E310 018C48 0008+00 0/0 12/12 2/2 .text fopCamM_GetParam__FP12camera_class */
u32 fopCamM_GetParam(camera_class* i_this) {
    return i_this->base.parameters;
}

/* 8001E310-8001E374 018C50 0064+00 0/0 1/1 0/0 .text            fopCamM_Create__FisPv */
u32 fopCamM_Create(int i_cameraIdx, s16 i_procName, void* param_3) {
    l_fopCamM_id[i_cameraIdx] = fpcSCtRq_Request(fpcLy_CurrentLayer(), i_procName, 0, 0, param_3);
    return l_fopCamM_id[i_cameraIdx];
}

/* 8001E374-8001E378 018CB4 0004+00 0/0 1/1 0/0 .text            fopCamM_Management__Fv */
void fopCamM_Management() {}

/* 8001E378-8001E37C 018CB8 0004+00 0/0 1/1 0/0 .text            fopCamM_Init__Fv */
void fopCamM_Init() {}
