
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_base.h"
#include "SComponent/c_tag_iter.h"
#include "SComponent/c_tree_iter.h"

// g_fpcLn_Queue
extern node_lists_tree_class lbl_804505D8;

static s32 fpcLnIt_MethodCall(create_tag_class *pTag, method_filter *pFilter)
{
    layer_class *pLayer = ((base_process_class *) pTag->mpTagData)->mLyTg.mpLayer;
    layer_class *pCurLayer = fpcLy_CurrentLayer();
    s32 ret;

    fpcLy_SetCurrentLayer(pLayer);
    ret = cTgIt_MethodCall(pTag, pFilter);
    fpcLy_SetCurrentLayer(pCurLayer);

    return ret;
}

void fpcLnIt_Queue(cNdIt_MethodFunc pFunc)
{
    method_filter filter;
    filter.mpMethodFunc = pFunc;
    filter.mpUserData = NULL;
    cTrIt_Method(&lbl_804505D8, (cNdIt_MethodFunc) fpcLnIt_MethodCall, &filter);
}
