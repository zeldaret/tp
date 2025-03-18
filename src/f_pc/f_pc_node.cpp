/**
 * f_pc_node.cpp
 * Framework - Process Node
 */

#include "f_pc/f_pc_node.h"
#include "f_pc/f_pc_layer_iter.h"
#include "f_pc/f_pc_debug_sv.h"

/* 800224F0-80022514 0024+00 s=1 e=1 z=0  None .text fpcNd_DrawMethod__FP21nodedraw_method_classPv
 */
s32 fpcNd_DrawMethod(nodedraw_method_class* i_method_class, void* i_data) {
    return fpcMtd_Method(i_method_class->draw_method, i_data);
}

/* 80022514-80022580 006C+00 s=1 e=0 z=0  None .text      fpcNd_Draw__FP18process_node_class */
s32 fpcNd_Draw(process_node_class* i_procNode) {
    s32 ret = 0;
    process_node_class* var_r28 = i_procNode;

    if (i_procNode->unk_0x1A8 == 0) {
        layer_class* save_layer = fpcLy_CurrentLayer();
        fpcLy_SetCurrentLayer(&var_r28->layer);
        ret = fpcNd_DrawMethod(i_procNode->nodedraw_method, i_procNode);
        fpcLy_SetCurrentLayer(save_layer);
    }

    return ret;
}

/* 80022580-800225DC 005C+00 s=1 e=0 z=0  None .text      fpcNd_Execute__FP18process_node_class */
s32 fpcNd_Execute(process_node_class* i_procNode) {
    s32 ret = 0;
    layer_class* save_layer = fpcLy_CurrentLayer();

#ifdef DEBUG
    if (fpcBs_Is_JustOfType(g_fpcNd_type, i_procNode->base.subtype) == 0) {
        if (g_fpcDbSv_service[11] != NULL) {
            g_fpcDbSv_service[11](i_procNode);
        }
        return 0;
    }
#endif

    fpcLy_SetCurrentLayer(&i_procNode->layer);
    ret = fpcMtd_Execute(&i_procNode->nodedraw_method->base, i_procNode);
    fpcLy_SetCurrentLayer(save_layer);
    return ret;
}

/* 80450D40-80450D48 0004+04 s=2 e=11 z=0  None .sbss      g_fpcNd_type */
int g_fpcNd_type;

/* 800225DC-8002265C 0080+00 s=1 e=0 z=0  None .text      fpcNd_IsCreatingFromUnder__FPv */
void* fpcNd_IsCreatingFromUnder(void* i_procNode) {
    layer_class* layer;
    process_node_class* procnode = (process_node_class*)i_procNode;
    if (procnode != NULL && fpcBs_Is_JustOfType(g_fpcNd_type, procnode->base.subtype) != FALSE)
    {
        layer = &procnode->layer;
        if (fpcLy_IsCreatingMesg(layer) == FALSE) {
            return (process_node_class*)fpcLyIt_Judge(
                layer, (fpcLyIt_JudgeFunc)fpcNd_IsCreatingFromUnder, NULL);
        } else {
            return procnode;
        }
    }
    
    return NULL;
}

/* 804505E0-804505E8 0004+04 s=1 e=0 z=0  None .sdata     g_fpcNd_IsCheckOfDeleteTiming */
BOOL g_fpcNd_IsCheckOfDeleteTiming = TRUE;

/* 8002265C-8002269C 0040+00 s=0 e=2 z=0  None .text fpcNd_IsDeleteTiming__FP18process_node_class
 */
s32 fpcNd_IsDeleteTiming(process_node_class* i_procNode) {
    if (g_fpcNd_IsCheckOfDeleteTiming == TRUE && fpcNd_IsCreatingFromUnder(i_procNode) != NULL) {
        return 0;
    }
    
    return 1;
}

/* 8002269C-800226C4 0028+00 s=1 e=0 z=0  None .text      fpcNd_IsDelete__FP18process_node_class */
s32 fpcNd_IsDelete(process_node_class* i_procNode) {
    return fpcMtd_IsDelete(&i_procNode->nodedraw_method->base, i_procNode);
}

/* 800226C4-80022728 0064+00 s=1 e=0 z=0  None .text      fpcNd_Delete__FP18process_node_class */
s32 fpcNd_Delete(process_node_class* i_procNode) {
    if (!fpcLy_IsDeletingMesg(&i_procNode->layer) &&
        fpcMtd_Delete(&i_procNode->nodedraw_method->base, i_procNode) == 1)
    {
        i_procNode->base.subtype = 0;
        return fpcLy_Delete(&i_procNode->layer);
    }

    return 0;
}

/* 80022728-800227C4 009C+00 s=1 e=0 z=0  None .text      fpcNd_Create__FP18process_node_class */
s32 fpcNd_Create(process_node_class* i_procNode) {
    process_node_class* procnode = (process_node_class*)i_procNode;
    layer_class* save_layer;
    s32 ret;

    if (procnode->base.init_state == 0) {
        node_process_profile_definition* pprofile = (node_process_profile_definition*)procnode->base.profile;
        procnode->base.subtype = fpcBs_MakeOfType(&g_fpcNd_type);
        procnode->nodedraw_method = (nodedraw_method_class*)pprofile->sub_methods;
        fpcLy_Create(&procnode->layer, procnode, procnode->layer_nodelist, 16);
        procnode->unk_0x1A8 = 0;
    }

    save_layer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&procnode->layer);
    ret = fpcMtd_Create(&procnode->nodedraw_method->base, procnode);
    fpcLy_SetCurrentLayer(save_layer);
    return ret;
}

/* 803A3A20-803A3A38 0014+04 s=0 e=9 z=0  None .data      g_fpcNd_Method */
nodedraw_method_class g_fpcNd_Method = {
    (process_method_func)fpcNd_Create, (process_method_func)fpcNd_Delete,
    (process_method_func)fpcNd_Execute, (process_method_func)fpcNd_IsDelete,
    (process_method_func)fpcNd_Draw,
};
