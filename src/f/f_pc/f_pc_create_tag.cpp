
#include "f/f_pc/f_pc_create_tag.h"
#include "global.h"

// g_fpcCtTg_Queue
extern node_list_class lbl_803A3990;

extern "C" {

void fpcCtTg_ToCreateQ(create_tag_class* pTag) {
    cTg_Addition(&lbl_803A3990, pTag);
}

void fpcCtTg_CreateQTo(create_tag_class* pTag) {
    cTg_SingleCut(pTag);
}

int fpcCtTg_Init(create_tag* pTag, void* pUserData) {
    cTg_Create(pTag, pUserData);
    return 1;
}
};
