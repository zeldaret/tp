
#include "f/f_pc/f_pc_create_tag.h"

// g_fpcCtTg_Queue
extern node_list_class lbl_803A3990;

void fpcCtTg_ToCreateQ(create_tag_class *pTag)
{
    cTg_Addition(&lbl_803A3990, pTag);
}

void fpcCtTg_CreateQTo(create_tag_class *pTag)
{
    cTg_SingleCut(pTag);
}

s32 fpcCtTg_Init(create_tag *pTag, void *pUserData)
{
    cTg_Create(&pTag->mBase, pUserData);
    return 1;
}
