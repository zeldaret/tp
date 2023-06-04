/**
 * f_pc_line_tag.cpp
 * Framework - Process Line Tag
 */

#include "f_pc/f_pc_line_tag.h"
#include "f_pc/f_pc_line.h"


/* 800235A8-80023600 0058+00 s=0 e=1 z=0  None .text      fpcLnTg_Move__FP8line_tagi */
s32 fpcLnTg_Move(line_tag* i_lineTag, int i_newListID) {
    if (i_lineTag->mLineListID != i_newListID) {
        fpcLnTg_QueueTo(i_lineTag);
        return fpcLnTg_ToQueue(i_lineTag, i_newListID);
    }

    return 1;
}

/* 80023600-80023634 0034+00 s=1 e=1 z=1  None .text      fpcLnTg_QueueTo__FP8line_tag */
void fpcLnTg_QueueTo(line_tag* i_lineTag) {
    cTg_SingleCutFromTree(&i_lineTag->mBase);
    i_lineTag->mLineListID = -1;
}

/* 80023634-8002368C 0058+00 s=1 e=1 z=1  None .text      fpcLnTg_ToQueue__FP8line_tagi */
s32 fpcLnTg_ToQueue(line_tag* i_lineTag, int lineListID) {
    s32 ret = cTg_AdditionToTree(&g_fpcLn_Queue, lineListID, &i_lineTag->mBase);

    if (ret) {
        i_lineTag->mLineListID = lineListID;
        return 1;
    } else {
        return 0;
    }
}

/* 8002368C-800236C0 0034+00 s=0 e=1 z=0  None .text      fpcLnTg_Init__FP8line_tagPv */
void fpcLnTg_Init(line_tag* i_lineTag, void* i_data) {
    cTg_Create(&i_lineTag->mBase, i_data);
    i_lineTag->mLineListID = -1;
}
