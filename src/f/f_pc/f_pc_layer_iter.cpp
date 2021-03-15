#include "f/f_pc/f_pc_layer_iter.h"
#include "SComponent/c_tag_iter.h"
#include "SComponent/c_tree_iter.h"

s32 fpcLyIt_OnlyHere(layer_class* pLayer, cNdIt_MethodFunc pFunc, void* pUserData) {
    layer_iter lIter;
    lIter.mpFunc = pFunc;
    lIter.mpUserData = pUserData;
    return cTrIt_Method(&pLayer->mNodeListTree, (cNdIt_MethodFunc)cTgIt_MethodCall, &lIter);
}

s32 fpcLyIt_OnlyHereLY(layer_class* pLayer, cNdIt_MethodFunc pFunc, void* pUserData) {
    s32 result;
    layer_class* currentLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pLayer);
    result = fpcLyIt_OnlyHere(pLayer, pFunc, pUserData);
    fpcLy_SetCurrentLayer(currentLayer);
    return result;
}

void* fpcLyIt_Judge(layer_class* pLayer, fpcLyIt_JudgeFunc pFunc, void* pUserData) {
    layer_iter lIter;
    lIter.mpFunc = pFunc;
    lIter.mpUserData = pUserData;
    return cTrIt_Judge(&pLayer->mNodeListTree, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &lIter);
}

void* fpcLyIt_AllJudge(fpcLyIt_JudgeFunc pFunc, void* pUserData) {
    layer_iter lIter;
    layer_class* current;
    lIter.mpFunc = pFunc;
    lIter.mpUserData = pUserData;

    current = fpcLy_RootLayer();
    while (current != NULL) {
        void* result =
            cTrIt_Judge(&current->mNodeListTree, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &lIter);
        if (result != NULL) {
            return result;
        }
        current = (layer_class*)current->mNode.mpNextNode;
    }
    return NULL;
}