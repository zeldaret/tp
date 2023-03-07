/**
 * f_pc_create_tag.cpp
 * Framework - Process Create Tag
 */

#include "f_pc/f_pc_create_tag.h"


/* ############################################################################################## */
/* 803A3990-803A39A0 000C+04 s=1 e=2 z=0  None .data      g_fpcCtTg_Queue */
node_list_class g_fpcCtTg_Queue = {NULL, NULL, 0};

/* 80020E38-80020E64 002C+00 s=0 e=1 z=0  None .text      fpcCtTg_ToCreateQ__FP10create_tag */
void fpcCtTg_ToCreateQ(create_tag* pTag) {
    cTg_Addition(&g_fpcCtTg_Queue, &pTag->mBase);
}

/* 80020E64-80020E84 0020+00 s=0 e=1 z=0  None .text      fpcCtTg_CreateQTo__FP10create_tag */
void fpcCtTg_CreateQTo(create_tag* pTag) {
    cTg_SingleCut(&pTag->mBase);
}

/* 80020E84-80020EA8 0024+00 s=0 e=1 z=0  None .text      fpcCtTg_Init__FP10create_tagPv */
s32 fpcCtTg_Init(create_tag* pTag, void* pUserData) {
    cTg_Create(&pTag->mBase, pUserData);
    return 1;
}
