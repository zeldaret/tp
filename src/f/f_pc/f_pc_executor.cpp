
#include "f/f_pc/f_pc_executor.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_line_iter.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_node.h"

extern "C" {

extern int fpcLyTg_ToQueue(layer_management_tag_class *pTag, u32 layerID, u16 listID, u16 listPrio);
extern int fpcLyTg_QueueTo(layer_management_tag_class *pTag);
extern int fpcBs_Is_JustOfType(int a, int b);

#if 0
int fpcEx_ToLineQ(base_process_class *pProc)
{
    layer_class *pLayer = pProc->mLyTg.mpLayer;

    if (pLayer->mLayerID != 0)
        return 0;
    if (!cTg_IsUse(&pLayer->mpPcNode->mLnTg))
        return 0;

    int ret = fpcLnTg_ToQueue(&pProc->mLnTg, pProc->mPi.b.mListID);
    if (ret == 0) {
        fpcLyTg_QueueTo(&pProc->mLyTg);
        return 0;
    }

    pProc->mInitState = 2;
    if (fpcBs_Is_JustOfType(g_fpcNd_type, pProc->mSubType)) {
        // TODO: f_node
    }

    return 1;
}
#endif

int fpcEx_ExecuteQTo(base_process_class *pProc)
{
    int ret = fpcLyTg_QueueTo(&pProc->mLyTg);
    if (ret == 1) {
        pProc->mInitState = 3;
        return 1;
    } else {
        return 0;
    }
}

int fpcEx_ToExecuteQ(base_process_class *pProc)
{
    int ret = fpcLyTg_ToQueue(&pProc->mLyTg, pProc->mPi.b.mLayer, pProc->mPi.b.mListID, pProc->mPi.b.mListPrio);
    if (ret == 1) {
        fpcEx_ToLineQ(pProc);
        return 1;
    } else {
        return 0;
    }
}

void fpcEx_Handler(cNdIt_MethodFunc pFunc)
{
    return fpcLnIt_Queue(pFunc);
}

};
