#include "f/f_op/f_op_scene_iter.h"
#include "SComponent/c_list.h"
#include "SComponent/c_list_iter.h"
#include "SComponent/c_tag_iter.h"
#include "f/f_op/f_op_scene_tag.h"

void* fopScnIt_Judge(fop_ScnItFunc pFunc1, void* pData) {
    struct {
        fop_ScnItFunc mFunc;
        void* mpData;
    } iterParams;

    iterParams.mFunc = pFunc1;
    iterParams.mpData = pData;
    return cLsIt_Judge(&g_fopScnTg_SceneList, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iterParams);
}