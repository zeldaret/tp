/**
 * f_op_scene_iter.cpp
 * Framework - Scene Process Iteration
 */

#include "f_op/f_op_scene_iter.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "f_op/f_op_scene_tag.h"

/* 8001EC74-8001ECB0 0195B4 003C+00 0/0 1/1 0/0 .text            fopScnIt_Judge__FPFPvPv_PvPv */
void* fopScnIt_Judge(fop_ScnItFunc pFunc1, void* pData) {
    struct {
        fop_ScnItFunc mFunc;
        void* mpData;
    } iterParams;

    iterParams.mFunc = pFunc1;
    iterParams.mpData = pData;
    return cLsIt_Judge(&g_fopScnTg_SceneList, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iterParams);
}