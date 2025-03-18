/**
 * f_pc_layer_iter.cpp
 * Framework - Process Layer Iterator
 */

#include "f_pc/f_pc_layer_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "SSystem/SComponent/c_tree_iter.h"
#include "f_pc/f_pc_layer.h"

/* 80021B88-80021BC0 0038+00 s=1 e=4 z=0  None .text fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
 */
s32 fpcLyIt_OnlyHere(layer_class* i_layer, fpcLyIt_OnlyHereFunc i_func, void* i_data) {
    layer_iter iter;
    iter.func = i_func;
    iter.data = i_data;
    return cTrIt_Method(&i_layer->node_tree, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter);
}

/* 80021BC0-80021C28 0068+00 s=0 e=1 z=0  None .text fpcLyIt_OnlyHereLY__FP11layer_classPFPvPv_iPv
 */
s32 fpcLyIt_OnlyHereLY(layer_class* i_layer, fpcLyIt_OnlyHereFunc i_func, void* i_data) {
    s32 result;
    layer_class* save_layer = fpcLy_CurrentLayer();

    fpcLy_SetCurrentLayer(i_layer);
    result = fpcLyIt_OnlyHere(i_layer, i_func, i_data);

    fpcLy_SetCurrentLayer(save_layer);
    return result;
}

s32 fpcLyIt_All(fpcLyIt_OnlyHereFunc i_func, void* i_data) {
    int ret = 1;

    layer_iter iter;
    layer_class* layer;
    iter.func = i_func;
    iter.data = i_data;

    for (layer = fpcLy_RootLayer(); layer != NULL; layer = (layer_class*)layer->node.mpNextNode) {
        if (cTrIt_Method(&layer->node_tree, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter) == 0) {
            ret = 0;
        }
    }

    return ret;
}

/* 80021C28-80021C60 0038+00 s=0 e=3 z=0  None .text      fpcLyIt_Judge__FP11layer_classPFPvPv_PvPv
 */
void* fpcLyIt_Judge(layer_class* i_layer, fpcLyIt_JudgeFunc i_func, void* i_data) {
    layer_iter iter;
    iter.func = i_func;
    iter.data = i_data;
    return cTrIt_Judge(&i_layer->node_tree, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
}

/* 80021C60-80021CD4 0074+00 s=0 e=1 z=4  None .text      fpcLyIt_AllJudge__FPFPvPv_PvPv */
void* fpcLyIt_AllJudge(fpcLyIt_JudgeFunc i_func, void* i_data) {
    void* ret;

    layer_iter iter;
    layer_class* layer;
    iter.func = i_func;
    iter.data = i_data;

    for (layer = fpcLy_RootLayer(); layer != NULL; layer = (layer_class*)layer->node.mpNextNode) {
        ret = cTrIt_Judge(&layer->node_tree, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
        if (ret != NULL) {
            return ret;
        }
    }

    return NULL;
}
