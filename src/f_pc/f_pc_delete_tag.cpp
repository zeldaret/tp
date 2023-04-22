/**
 * f_pc_delete_tag.cpp
 * Framework - Process Delete Tag
 */

#include "f_pc/f_pc_delete_tag.h"
#include "global.h"

/* ############################################################################################## */
/* 803A39A0-803A39B0 000C+04 s=2 e=1 z=0  None .data      g_fpcDtTg_Queue */
node_list_class g_fpcDtTg_Queue = {NULL, NULL, 0};

/* 80020F30-80020F48 0018+00 s=0 e=1 z=0  None .text      fpcDtTg_IsEmpty__Fv */
BOOL fpcDtTg_IsEmpty() {
    return checkEqual(g_fpcDtTg_Queue.mSize, 0);
}

/* 80020F48-80020F7C 0034+00 s=1 e=1 z=0  None .text      fpcDtTg_ToDeleteQ__FP16delete_tag_class */
void fpcDtTg_ToDeleteQ(delete_tag_class* i_deleteTag) {
    i_deleteTag->mTimer = 1;
    cTg_Addition(&g_fpcDtTg_Queue, &i_deleteTag->mBase);
}

/* 80020F7C-80020F9C 0020+00 s=1 e=0 z=0  None .text      fpcDtTg_DeleteQTo__FP16delete_tag_class */
void fpcDtTg_DeleteQTo(delete_tag_class* i_deleteTag) {
    cTg_SingleCut(&i_deleteTag->mBase);
}

/* 80020F9C-8002101C 0080+00 s=0 e=1 z=0  None .text      fpcDtTg_Do__FP16delete_tag_classPFPv_i */
s32 fpcDtTg_Do(delete_tag_class* i_deleteTag, delete_tag_func i_func) {
    if (i_deleteTag->mTimer <= 0) {
        s32 ret;
        fpcDtTg_DeleteQTo(i_deleteTag);
        ret = i_func(i_deleteTag->mBase.mpTagData);
        if (ret == 0) {
            fpcDtTg_ToDeleteQ(i_deleteTag);
            return 0;
        } else {
            return 1;
        }
    } else {
        i_deleteTag->mTimer--;
        return 0;
    }
}

/* 8002101C-80021040 0024+00 s=0 e=1 z=0  None .text      fpcDtTg_Init__FP16delete_tag_classPv */
s32 fpcDtTg_Init(delete_tag_class* i_deleteTag, void* i_data) {
    cTg_Create(&i_deleteTag->mBase, i_data);
    return 1;
}
