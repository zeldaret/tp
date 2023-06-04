/**
 * f_pc_layer.cpp
 * Framework - Process Layer
 */

#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_layer.h"
#include "f_pc/f_pc_method.h"
#include "f_pc/f_pc_method_iter.h"
#include "f_pc/f_pc_method_tag.h"

/* 80021588-800215A8 0020+00 s=0 e=4 z=0  None .text fpcLy_CancelQTo__FP24process_method_tag_class
 */
void fpcLy_CancelQTo(process_method_tag_class* i_methods) {
    fpcMtdTg_MethodQTo(i_methods);
}

/* 800215A8-800215CC 0024+00 s=0 e=3 z=0  None .text
 * fpcLy_ToCancelQ__FP11layer_classP24process_method_tag_class  */
s32 fpcLy_ToCancelQ(layer_class* i_layer, process_method_tag_class* i_methods) {
    return fpcMtdTg_ToMethodQ(&i_layer->mCancelList, i_methods);
}

/* 800215CC-800215F8 002C+00 s=1 e=0 z=0  None .text
 * fpcLy_CancelMethod__FP24process_method_tag_class             */
bool fpcLy_CancelMethod(process_method_tag_class* i_layer) {
    return fpcMtdTg_Do(i_layer) == 1;
}

/* 800215F8-8002161C 0024+00 s=0 e=1 z=0  None .text
 * fpcLy_IntoQueue__FP11layer_classiP16create_tag_classi        */
s32 fpcLy_IntoQueue(layer_class* i_layer, int i_treeListNo, create_tag_class* i_createTag, int i_no) {
    return cTg_InsertToTree(&i_layer->mNodeListTree, i_treeListNo, i_createTag, i_no);
}

/* 8002161C-80021640 0024+00 s=0 e=1 z=0  None .text
 * fpcLy_ToQueue__FP11layer_classiP16create_tag_class           */
s32 fpcLy_ToQueue(layer_class* i_layer, int i_treeListNo, create_tag_class* i_createTag) {
    return cTg_AdditionToTree(&i_layer->mNodeListTree, i_treeListNo, i_createTag);
}

/* 80021640-80021664 0024+00 s=0 e=1 z=0  None .text
 * fpcLy_QueueTo__FP11layer_classP16create_tag_class            */
s32 fpcLy_QueueTo(layer_class* i_layer, create_tag_class* i_createTag) {
    return cTg_SingleCutFromTree(i_createTag);
}

/* 80021664-80021678 0014+00 s=0 e=1 z=0  None .text      fpcLy_IsDeletingMesg__FP11layer_class */
BOOL fpcLy_IsDeletingMesg(layer_class* i_layer) {
    return i_layer->counts.mDeletingCount > 0;
}

/* 80021678-80021688 0010+00 s=0 e=1 z=0  None .text      fpcLy_DeletingMesg__FP11layer_class */
void fpcLy_DeletingMesg(layer_class* i_layer) {
    i_layer->counts.mDeletingCount++;
}

/* 80021688-800216A0 0018+00 s=0 e=1 z=0  None .text      fpcLy_DeletedMesg__FP11layer_class */
void fpcLy_DeletedMesg(layer_class* i_layer) {
    if (i_layer->counts.mDeletingCount > 0) {
        i_layer->counts.mDeletingCount--;
    }
}

/* 800216A0-800216B4 0014+00 s=0 e=2 z=0  None .text      fpcLy_IsCreatingMesg__FP11layer_class */
BOOL fpcLy_IsCreatingMesg(layer_class* i_layer) {
    return i_layer->counts.mCreatingCount > 0;
}

/* 800216B4-800216C4 0010+00 s=0 e=2 z=0  None .text      fpcLy_CreatingMesg__FP11layer_class */
void fpcLy_CreatingMesg(layer_class* i_layer) {
    i_layer->counts.mCreatingCount++;
}

/* 800216C4-800216DC 0018+00 s=0 e=2 z=0  None .text      fpcLy_CreatedMesg__FP11layer_class */
void fpcLy_CreatedMesg(layer_class* i_layer) {
    if (i_layer->counts.mCreatingCount > 0) {
        i_layer->counts.mCreatingCount--;
    }
}

/* ############################################################################################## */
/* 803A39B0-803A39DC 002C+00 s=2 e=0 z=0  None .data      l_fpcLy_Crear */
layer_class l_fpcLy_Crear = {
    NULL, NULL, 0, 0xFFFFFFFF, NULL, 0, NULL, NULL, NULL, 0, 0, 0,
};

/* 803A39DC-803A39E8 000C+00 s=3 e=0 z=0  None .data      l_fpcLy_LayerList */
node_list_class l_fpcLy_LayerList = {
    NULL,
    NULL,
    0,
};

/* 800216DC-800216EC 0010+00 s=2 e=3 z=0  None .text      fpcLy_RootLayer__Fv */
layer_class* fpcLy_RootLayer(void) {
    return (layer_class*)l_fpcLy_LayerList.mpHead;
}

/* ############################################################################################## */
/* 80450D18-80450D1C 0004+00 s=2 e=0 z=0  None .sbss      l_fpcLy_CurrLayer_p */
static layer_class* l_fpcLy_CurrLayer_p;

/* 800216EC-800216F4 0008+00 s=1 e=13 z=0  None .text      fpcLy_SetCurrentLayer__FP11layer_class */
void fpcLy_SetCurrentLayer(layer_class* i_layer) {
    l_fpcLy_CurrLayer_p = i_layer;
}

/* 800216F4-800216FC 0008+00 s=1 e=21 z=0  None .text      fpcLy_CurrentLayer__Fv */
layer_class* fpcLy_CurrentLayer() {
    return l_fpcLy_CurrLayer_p;
}

/* 800216FC-8002174C 0050+00 s=1 e=0 z=0  None .text      fpcLy_Search__FUi */
layer_class* fpcLy_Search(unsigned int i_id) {
    layer_class* layer_p = fpcLy_RootLayer();
    while (layer_p != NULL) {
        if (layer_p->mLayerID == i_id) {
            return layer_p;
        }
        layer_p = (layer_class*)layer_p->mNode.mpNextNode;
    }
    return NULL;
}

/* 8002174C-800217BC 0070+00 s=0 e=5 z=0  None .text      fpcLy_Layer__FUi */
layer_class* fpcLy_Layer(unsigned int i_id) {
    if (i_id == 0 || fpcLy_RootLayer()->mLayerID == i_id) {
        return fpcLy_RootLayer();
    } else if (i_id == ~2 || fpcLy_CurrentLayer()->mLayerID == i_id) {
        return fpcLy_CurrentLayer();
    } else {
        return fpcLy_Search(i_id);
    }
}

/* 800217BC-800217E8 002C+00 s=1 e=0 z=0  None .text      fpcLy_Regist__FP11layer_class */
void fpcLy_Regist(layer_class* i_layer) {
    cLs_Addition(&l_fpcLy_LayerList, (node_class*)i_layer);
}

/* 800217E8-8002189C 00B4+00 s=0 e=1 z=0  None .text      fpcLy_Delete__FP11layer_class */
s32 fpcLy_Delete(layer_class* i_layer) {
    if (i_layer->mNodeListTree.mpLists->mSize == 0 && i_layer->mCancelList.mSize == 0) {
        cLs_SingleCut((node_class*)i_layer);
        *i_layer = l_fpcLy_Crear;
        return 1;
    } else {
        return 0;
    }
}

/* 8002189C-800218C8 002C+00 s=0 e=1 z=0  None .text      fpcLy_Cancel__FP11layer_class */
void fpcLy_Cancel(layer_class* i_layer) {
    fpcMtdIt_Method(&i_layer->mCancelList, (fpcMtdIt_MethodFunc)fpcLy_CancelMethod);
}

/* 800218C8-80021A00 0138+00 s=0 e=2 z=0  None .text
 * fpcLy_Create__FP11layer_classPvP15node_list_classi           */
void fpcLy_Create(layer_class* i_layer, void* i_node, node_list_class* i_nodeList, int i_numLists) {
    void* pvVar1;
    s32 iVar2;

    static int IsInitOfLayerList = 1;
    static int layer_id = 0;
    *i_layer = l_fpcLy_Crear;
    cNd_Create((node_class*)i_layer, NULL);
    i_layer->mLayerID = layer_id++;
    i_layer->mpPcNode = static_cast<process_node_class*>(i_node);
    if (IsInitOfLayerList == 1) {
        IsInitOfLayerList = 0;
        cLs_Create(&l_fpcLy_LayerList);
        fpcLy_SetCurrentLayer(i_layer);
    }
    (i_layer->mNodeListTree).mpLists = i_nodeList;
    (i_layer->mNodeListTree).mNumLists = i_numLists;
    cTr_Create(&i_layer->mNodeListTree, (i_layer->mNodeListTree).mpLists,
               (i_layer->mNodeListTree).mNumLists);
    fpcLy_Regist(i_layer);
}
