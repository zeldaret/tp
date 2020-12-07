#include "global.h"
#include "f/f_pc/f_pc_node.h"
#include "f/f_pc/f_pc_layer_iter.h"

// g_fpcNd_type
extern s32 lbl_80450D40;
// f_pc_node::g_fpcNd_IsCheckOfDeleteTiming
extern int lbl_804505E0;

extern "C" {

int fpcNd_DrawMethod(nodedraw_method_class *pNodeMethod, void* pData) {
    return fpcMtd_Method(pNodeMethod->mpNodedrawFunc, pData);
}

int fpcNd_Draw(process_node_class *pProcNode) {
  int uVar2 = 0x0;
  if (pProcNode->mUnk0 == 0) { 
    layer_class *uVar1 = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&pProcNode->mLayer);
    uVar2 = fpcNd_DrawMethod(pProcNode->mpNodeMtd,pProcNode);
    fpcLy_SetCurrentLayer(uVar1);
  }
  return uVar2;
}

int fpcNd_Execute(process_node_class *pProcNode) {
    int ret;
    layer_class *uVar1 = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&pProcNode->mLayer);
    ret = fpcMtd_Execute(pProcNode->mpNodeMtd,pProcNode);
    fpcLy_SetCurrentLayer(uVar1);
    return ret;
}

void* fpcNd_IsCreatingFromUnder(process_node_class* param_1) {
    layer_class *layer;
    if (param_1 != NULL && fpcBs_Is_JustOfType(lbl_80450D40,param_1->mSubType) != false) {
        layer = &param_1->mLayer;
        int uVar1 = fpcLy_IsCreatingMesg(layer);
        if (uVar1 == 0x0) {
            return (process_node_class *)fpcLyIt_Judge(layer, (cNdIt_MethodFunc) fpcNd_IsCreatingFromUnder, NULL);
        } else {
            return param_1;
        }
    }
    else {
        return NULL;
    }
}

int fpcNd_IsDeleteTiming(process_node_class* param_1) {
    if (lbl_804505E0 == 0x1 && fpcNd_IsCreatingFromUnder(param_1) != NULL) {
        return 0;
    }
    else {
        return 1;
    }
}

int fpcNd_IsDelete(process_node_class* param_1) {
    return fpcMtd_IsDelete(param_1->mpNodeMtd, param_1);
}

int fpcNd_Delete(process_node_class* param_1) {
  if ((fpcLy_IsDeletingMesg(&param_1->mLayer) == 0x0) && fpcMtd_Delete(param_1->mpNodeMtd,param_1) == 0x1) {
    param_1->mSubType = 0x0;
    return fpcLy_Delete(&param_1->mLayer);
  }
  else {
    return 0;
  }
}

int fpcNd_Create(process_node_class* tmp) {
    // this is definetly fake, it doesn't match without the cast, naive approach swaps r31 and r30
    process_node_class *param_1 = (process_node_class*) tmp;
    process_profile_definition *ppVar4;
    if (param_1->mInitState == '\0') {
        ppVar4 = param_1->mpProf;
        param_1->mSubType = fpcBs_MakeOfType(&lbl_80450D40);
        param_1->mpNodeMtd = ppVar4->mNDrwMthCls;
        fpcLy_Create(&param_1->mLayer,param_1,param_1->mLayerNodeLists,0x10);
        param_1->mUnk0 = 0;
    }
    layer_class *uVar2 = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(&param_1->mLayer);
    int uVar3 = fpcMtd_Create(param_1->mpNodeMtd,param_1);
    fpcLy_SetCurrentLayer(uVar2);
    return uVar3;
}

}