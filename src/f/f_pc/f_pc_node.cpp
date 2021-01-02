#include "f/f_pc/f_pc_node.h"
#include "dolphin/types.h"
#include "f/f_pc/f_pc_layer_iter.h"

// g_fpcNd_type
extern s32 lbl_80450D40;
// f_pc_node::g_fpcNd_IsCheckOfDeleteTiming
extern s32 lbl_804505E0;

extern "C" {

s32 fpcNd_DrawMethod(nodedraw_method_class* pNodeMethod, void* pData) {
    return fpcMtd_Method(pNodeMethod->mNodedrawFunc, pData);
}

s32 fpcNd_Draw(process_node_class* pProcNode) {
    s32 uVar2 = 0x0;
    if (pProcNode->mUnk0 == 0) {
        layer_class* uVar1 = fpcLy_CurrentLayer();
        fpcLy_SetCurrentLayer(&pProcNode->mLayer);
        uVar2 = fpcNd_DrawMethod(pProcNode->mpNodeMtd, pProcNode);
        fpcLy_SetCurrentLayer(uVar1);
    }
    return uVar2;
}

s32 fpcNd_Execute(process_node_class* pProcNode) {
    s32 ret;
    layer_class* uVar1 = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&pProcNode->mLayer);
    ret = fpcMtd_Execute(&pProcNode->mpNodeMtd->mBase, pProcNode);
    fpcLy_SetCurrentLayer(uVar1);
    return ret;
}

void* fpcNd_IsCreatingFromUnder(process_node_class* pProcNode) {
    layer_class* layer;
    if (pProcNode != NULL &&
        fpcBs_Is_JustOfType(lbl_80450D40, pProcNode->mBase.mSubType) != FALSE) {
        layer = &pProcNode->mLayer;
        if (fpcLy_IsCreatingMesg(layer) == 0x0) {
            return (process_node_class*)fpcLyIt_Judge(
                layer, (cNdIt_MethodFunc)fpcNd_IsCreatingFromUnder, NULL);
        } else {
            return pProcNode;
        }
    } else {
        return NULL;
    }
}

s32 fpcNd_IsDeleteTiming(process_node_class* pProcNode) {
    if (lbl_804505E0 == 0x1 && fpcNd_IsCreatingFromUnder(pProcNode) != NULL) {
        return 0;
    } else {
        return 1;
    }
}

s32 fpcNd_IsDelete(process_node_class* pProcNode) {
    return fpcMtd_IsDelete(&pProcNode->mpNodeMtd->mBase, pProcNode);
}

s32 fpcNd_Delete(process_node_class* pProcNode) {
    if ((fpcLy_IsDeletingMesg(&pProcNode->mLayer) == 0x0) &&
        fpcMtd_Delete(&pProcNode->mpNodeMtd->mBase, pProcNode) == 0x1) {
        pProcNode->mBase.mSubType = 0x0;
        return fpcLy_Delete(&pProcNode->mLayer);
    } else {
        return 0;
    }
}

s32 fpcNd_Create(process_node_class* pProcNode1) {
    // this cast looks like a fake match, but it doesn't match without the cast, naive approach
    // swaps r31 and r30 most likely it gets casted to another unknown struct
    process_node_class* pProcNode = (process_node_class*)pProcNode1;
    layer_class* uVar2;
    s32 uVar3;
    if (pProcNode->mBase.mInitState == 0) {
        node_process_profile_definition* pProcProfileDef =
            (node_process_profile_definition*)pProcNode->mBase.mpProf;
        pProcNode->mBase.mSubType = fpcBs_MakeOfType(&lbl_80450D40);
        pProcNode->mpNodeMtd = pProcProfileDef->mNDrwMthCls;
        fpcLy_Create(&pProcNode->mLayer, pProcNode, pProcNode->mLayerNodeLists, 0x10);
        pProcNode->mUnk0 = 0;
    }
    uVar2 = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&pProcNode->mLayer);
    uVar3 = fpcMtd_Create(&pProcNode->mpNodeMtd->mBase, pProcNode);
    fpcLy_SetCurrentLayer(uVar2);
    return uVar3;
}
}