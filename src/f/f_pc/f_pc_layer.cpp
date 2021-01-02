#include "f/f_pc/f_pc_layer.h"
#include "dolphin/types.h"
#include "f/f_pc/f_pc_method_iter.h"
#include "f/f_pc/f_pc_method_tag.h"

// f_pc_layer::l_fpcLy_CurrLayer_p
extern layer_class* lbl_80450D18;
extern s8 lbl_80450D20;
// f_pc_layer::IsInitOfLayerList
extern s32 lbl_80450D1C;
extern s8 lbl_80450D28;
// f_pc_layer::layer_id
extern s32 lbl_80450D24;
// f_pc_layer::l_fpcLy_LayerList
extern node_list_class lbl_803A39DC;
// f_pc_layer::l_fpcLy_Crear
extern layer_class lbl_803A39B0;

extern "C" {

void fpcLy_CancelQTo(process_method_tag_class* pMthd) {
    fpcMtdTg_MethodQTo(pMthd);
}

s32 fpcLy_ToCancelQ(layer_class* pLayer, process_method_tag_class* pMthd) {
    return fpcMtdTg_ToMethodQ(&pLayer->mCancelList, pMthd);
}

BOOL fpcLy_CancelMethod(process_method_tag_class* pLayer) {
    return checkEqual(1, fpcMtdTg_Do(pLayer));
}

s32 fpcLy_IntoQueue(layer_class* pLayer, s32 treeListIdx, create_tag_class* pTag, s32 idx) {
    return cTg_InsertToTree(&pLayer->mNodeListTree, treeListIdx, pTag, idx);
}

s32 fpcLy_ToQueue(layer_class* pLayer, s32 treeListIdx, create_tag_class* pTag) {
    return cTg_AdditionToTree(&pLayer->mNodeListTree, treeListIdx, pTag);
}

s32 fpcLy_QueueTo(layer_class* pLayer, create_tag_class* pTag) {
    return cTg_SingleCutFromTree(pTag);
}

BOOL fpcLy_IsDeletingMesg(layer_class* pLayer) {
    return pLayer->counts.mDeletingCount > 0;
}

void fpcLy_DeletingMesg(layer_class* pLayer) {
    pLayer->counts.mDeletingCount++;
}

void fpcLy_DeletedMesg(layer_class* pLayer) {
    if (pLayer->counts.mDeletingCount > 0) {
        pLayer->counts.mDeletingCount--;
    }
}

BOOL fpcLy_IsCreatingMesg(layer_class* pLayer) {
    return pLayer->counts.mCreatingCount > 0;
}

void fpcLy_CreatingMesg(layer_class* pLayer) {
    pLayer->counts.mCreatingCount++;
}

void fpcLy_CreatedMesg(layer_class* pLayer) {
    if (pLayer->counts.mCreatingCount > 0) {
        pLayer->counts.mCreatingCount--;
    }
}

layer_class* fpcLy_RootLayer(void) {
    return (layer_class*)lbl_803A39DC.mpHead;
}

void fpcLy_SetCurrentLayer(layer_class* pLayer) {
    lbl_80450D18 = pLayer;
}

layer_class* fpcLy_CurrentLayer(void) {
    return lbl_80450D18;
}

layer_class* fpcLy_Search(u32 id) {
    layer_class* iVar1 = fpcLy_RootLayer();
    while (iVar1 != NULL) {
        if (iVar1->mLayerID == id) {
            return iVar1;
        }
        iVar1 = (layer_class*)iVar1->mNode.mpNextNode;
    }
    return NULL;
}

layer_class* fpcLy_Layer(u32 id) {
    if (id == 0 || fpcLy_RootLayer()->mLayerID == id) {
        return fpcLy_RootLayer();
    } else if (id == ~2 || fpcLy_CurrentLayer()->mLayerID == id) {
        return fpcLy_CurrentLayer();
    } else {
        return fpcLy_Search(id);
    }
}

void fpcLy_Regist(layer_class* pLayer) {
    cLs_Addition(&lbl_803A39DC, (node_class*)pLayer);
}

s32 fpcLy_Delete(layer_class* pLayer) {
    if (pLayer->mNodeListTree.mpLists->mSize == 0 && pLayer->mCancelList.mSize == 0) {
        cLs_SingleCut((node_class*)pLayer);
        *pLayer = lbl_803A39B0;
        return 1;
    } else {
        return 0;
    }
}

void fpcLy_Cancel(layer_class* pLayer) {
    fpcMtdIt_Method(&pLayer->mCancelList, (cNdIt_MethodFunc)fpcLy_CancelMethod);
}

void fpcLy_Create(layer_class* pLayer, process_node_class* pPcNode, node_list_class* pLists,
                  s32 listNum) {
    void* pvVar1;
    s32 iVar2;

    if (lbl_80450D20 == 0) {
        lbl_80450D1C = 0x1;  // IsInitOfLayerList
        lbl_80450D20 = 1;
    }
    if (lbl_80450D28 == 0) {
        lbl_80450D24 = 0;  // layer_id
        lbl_80450D28 = 1;
    }
    *pLayer = lbl_803A39B0;
    cNd_Create((node_class*)pLayer, NULL);
    pLayer->mLayerID = lbl_80450D24++;
    pLayer->mpPcNode = pPcNode;
    if (lbl_80450D1C == 0x1) {
        lbl_80450D1C = 0x0;
        cLs_Create(&lbl_803A39DC);
        fpcLy_SetCurrentLayer(pLayer);
    }
    (pLayer->mNodeListTree).mpLists = pLists;
    (pLayer->mNodeListTree).mNumLists = listNum;
    cTr_Create(&pLayer->mNodeListTree, (pLayer->mNodeListTree).mpLists,
               (pLayer->mNodeListTree).mNumLists);
    fpcLy_Regist(pLayer);
}
}