
#include "f/f_pc/f_pc_create_tag.h"

// g_fpcCtTg_Queue
extern node_list_class lbl_803A3990;

void fpcCtTg_ToCreateQ(create_tag* pTag) {
    cTg_Addition(&lbl_803A3990, &pTag->mBase);
}

void fpcCtTg_CreateQTo(create_tag* pTag) {
    cTg_SingleCut(&pTag->mBase);
}

s32 fpcCtTg_Init(create_tag* pTag, void* pUserData) {
    cTg_Create(&pTag->mBase, pUserData);
    return 1;
}
