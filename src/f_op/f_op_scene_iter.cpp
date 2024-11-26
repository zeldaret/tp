/**
 * f_op_scene_iter.cpp
 * Framework - Scene Process Iteration
 */

#include "f_op/f_op_scene_iter.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "f_op/f_op_scene_tag.h"

/* 8001EC74-8001ECB0 0195B4 003C+00 0/0 1/1 0/0 .text            fopScnIt_Judge__FPFPvPv_PvPv */
void* fopScnIt_Judge(fop_ScnItFunc i_judgeFunc, void* i_data) {
    struct {
        fop_ScnItFunc func;
        void* data;
    } userdata;

    userdata.func = i_judgeFunc;
    userdata.data = i_data;
    return cLsIt_Judge(&g_fopScnTg_SceneList, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &userdata);
}
