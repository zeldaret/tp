
#include "f/f_pc/f_pc_line_tag.h"

// g_fpcLn_Queue
extern node_lists_tree_class lbl_804505D8;

extern "C" {

int fpcLnTg_Move(line_tag *pLineTag, int newLineListID)
{
    if (pLineTag->mLineListID != newLineListID) {
        fpcLnTg_QueueTo(pLineTag);
        return fpcLnTg_ToQueue(pLineTag, newLineListID);
    }

    return 1;
}

void fpcLnTg_QueueTo(line_tag *pLineTag)
{
    cTg_SingleCutFromTree(pLineTag);
    pLineTag->mLineListID = -1;
}

int fpcLnTg_ToQueue(line_tag *pLineTag, int lineListID)
{
    int ret = cTg_AdditionToTree(&lbl_804505D8, lineListID, pLineTag);

    if (ret) {
        pLineTag->mLineListID = lineListID;
        return 1;
    } else {
        return 0;
    }
}

void fpcLnTg_Init(line_tag *pLineTag, void *pData)
{
    cTg_Create(pLineTag, pData);
    pLineTag->mLineListID = -1;
}

};

