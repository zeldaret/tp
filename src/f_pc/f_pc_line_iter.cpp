/**
 * f_pc_line_iter.cpp
 * Framework - Process Line Iterator
 */

#include "f_pc/f_pc_line_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "SSystem/SComponent/c_tree_iter.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_line.h"


/* 800236C0-80023728 0068+00 s=1 e=0 z=0  None .text
 * fpcLnIt_MethodCall__FP16create_tag_classP13method_filter     */
static s32 fpcLnIt_MethodCall(create_tag_class* i_createTag, method_filter* i_filter) {
    layer_class* pLayer = static_cast<base_process_class*>(i_createTag->mpTagData)->mLyTg.mpLayer;
    layer_class* pCurLayer = fpcLy_CurrentLayer();
    s32 ret;

    fpcLy_SetCurrentLayer(pLayer);
    ret = cTgIt_MethodCall(i_createTag, i_filter);
    fpcLy_SetCurrentLayer(pCurLayer);

    return ret;
}

/* 80023728-80023764 003C+00 s=0 e=1 z=0  None .text      fpcLnIt_Queue__FPFPvPv_i */
void fpcLnIt_Queue(fpcLnIt_QueueFunc i_queueFunc) {
    method_filter filter;
    filter.mpMethodFunc = (cNdIt_MethodFunc)i_queueFunc;
    filter.mpUserData = NULL;
    cTrIt_Method(&g_fpcLn_Queue, (cNdIt_MethodFunc)fpcLnIt_MethodCall, &filter);
}
