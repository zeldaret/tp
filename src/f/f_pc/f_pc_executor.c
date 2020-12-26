
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_node.h"
#include "f/f_pc/f_pc_searcher.h"

extern s32 fpcPause_IsEnable(base_process_class* pProc, s32);

// g_fpcNd_type
extern s32 lbl_80450D40;

base_process_class* fpcEx_Search(void* pFunc, void* pUserData) {
    return (base_process_class*)fpcLyIt_AllJudge((cNdIt_MethodFunc)pFunc, pUserData);
}

base_process_class* fpcEx_SearchByID(u32 id) {
    if (id + 2 <= 1)
        return NULL;

    return fpcEx_Search(fpcSch_JudgeByID, &id);
    ;
}

BOOL fpcEx_IsExist(s32 id) {
    return fpcEx_SearchByID(id) != NULL;
}

s32 fpcEx_Execute(base_process_class* pProc) {
    if (pProc->mInitState != 2 || fpcPause_IsEnable(pProc, 1) == 1)
        return 0;
    return fpcBs_Execute(pProc);
}

s32 fpcEx_ToLineQ(base_process_class* pProc) {
    layer_class* pLayer = pProc->mLyTg.mpLayer;
    base_process_class* pLayerPcNode = &pLayer->mpPcNode->mBase;

    if (pLayer->mLayerID == 0 || cTg_IsUse(&pLayerPcNode->mLnTg.mBase) == TRUE) {
        s32 ret = fpcLnTg_ToQueue(&pProc->mLnTg, pProc->mPi.mInfoCurr.mListID);
        if (ret == 0) {
            fpcLyTg_QueueTo(&pProc->mLyTg);
            return 0;
        }

        pProc->mInitState = 2;
        if (fpcBs_Is_JustOfType(lbl_80450D40, pProc->mSubType)) {
            process_node_class* pNode = (process_node_class*)pProc;
            fpcLyIt_OnlyHere(&pNode->mLayer, (cNdIt_MethodFunc)fpcEx_ToLineQ, pNode);
        }

        return 1;
    }

    return 0;
}

s32 fpcEx_ExecuteQTo(base_process_class* pProc) {
    s32 ret = fpcLyTg_QueueTo(&pProc->mLyTg);
    if (ret == 1) {
        pProc->mInitState = 3;
        return 1;
    } else {
        return 0;
    }
}

s32 fpcEx_ToExecuteQ(base_process_class* pProc) {
    s32 ret = fpcLyTg_ToQueue(&pProc->mLyTg, pProc->mPi.mInfoCurr.mLayer,
                              pProc->mPi.mInfoCurr.mListID, pProc->mPi.mInfoCurr.mListPrio);
    if (ret == 1) {
        fpcEx_ToLineQ(pProc);
        return 1;
    } else {
        return 0;
    }
}

void fpcEx_Handler(cNdIt_MethodFunc pFunc) {
    fpcLnIt_Queue(pFunc);
}
