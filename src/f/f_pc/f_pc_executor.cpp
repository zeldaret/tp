
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_layer_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_node.h"
#include "f/f_pc/f_pc_searcher.h"

extern "C" {

extern int fpcPause_IsEnable(base_process_class* pProc, int);

// g_fpcNd_type
extern int lbl_80450D40;

base_process_class* fpcEx_Search(void* pFunc, void* pUserData) {
    return (base_process_class*)fpcLyIt_AllJudge((cNdIt_MethodFunc)pFunc, pUserData);
}

base_process_class* fpcEx_SearchByID(u32 id) {
    if (id + 2 <= 1)
        return NULL;

    return fpcEx_Search(fpcSch_JudgeByID, &id);
    ;
}

bool fpcEx_IsExist(int id) {
    return fpcEx_SearchByID(id) != NULL;
}

int fpcEx_Execute(base_process_class* pProc) {
    if (pProc->mInitState != 2 || fpcPause_IsEnable(pProc, 1) == 1)
        return 0;
    fpcBs_Execute(pProc);
    // TODO: missing return?
}

int fpcEx_ToLineQ(base_process_class* pProc) {
    layer_class* pLayer = pProc->mLyTg.mpLayer;
    base_process_class* pLayerPcNode = pLayer->mpPcNode;

    if (pLayer->mLayerID == 0 || cTg_IsUse(&pLayerPcNode->mLnTg) == true) {
        int ret = fpcLnTg_ToQueue(&pProc->mLnTg, pProc->mPi.b.mListID);
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

int fpcEx_ExecuteQTo(base_process_class* pProc) {
    int ret = fpcLyTg_QueueTo(&pProc->mLyTg);
    if (ret == 1) {
        pProc->mInitState = 3;
        return 1;
    } else {
        return 0;
    }
}

int fpcEx_ToExecuteQ(base_process_class* pProc) {
    int ret = fpcLyTg_ToQueue(&pProc->mLyTg, pProc->mPi.b.mLayer, pProc->mPi.b.mListID,
                              pProc->mPi.b.mListPrio);
    if (ret == 1) {
        fpcEx_ToLineQ(pProc);
        return 1;
    } else {
        return 0;
    }
}

void fpcEx_Handler(cNdIt_MethodFunc pFunc) {
    return fpcLnIt_Queue(pFunc);
}
};
