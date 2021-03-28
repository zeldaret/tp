
#include "f/f_pc/f_pc_line_tag.h"

// g_fpcLn_Queue
extern node_lists_tree_class lbl_804505D8;

s32 fpcLnTg_Move(line_tag* pLineTag, int newLineListID) {
    if (pLineTag->mLineListID != newLineListID) {
        fpcLnTg_QueueTo(pLineTag);
        return fpcLnTg_ToQueue(pLineTag, newLineListID);
    }

    return 1;
}

void fpcLnTg_QueueTo(line_tag* pLineTag) {
    cTg_SingleCutFromTree(&pLineTag->mBase);
    pLineTag->mLineListID = -1;
}

s32 fpcLnTg_ToQueue(line_tag* pLineTag, int lineListID) {
    s32 ret = cTg_AdditionToTree(&lbl_804505D8, lineListID, &pLineTag->mBase);

    if (ret) {
        pLineTag->mLineListID = lineListID;
        return 1;
    } else {
        return 0;
    }
}

void fpcLnTg_Init(line_tag* pLineTag, void* pData) {
    cTg_Create(&pLineTag->mBase, pData);
    pLineTag->mLineListID = -1;
}
