/**
 * f_pc_method_tag.cpp
 * Framework - Process Method Tag
 */

#include "f_pc/f_pc_method_tag.h"

/* 80023788-800237B8 0030+00 s=0 e=1 z=0  None .text      fpcMtdTg_Do__FP24process_method_tag_class
 */
s32 fpcMtdTg_Do(process_method_tag_class* i_methodTag) {
    return i_methodTag->mpFunc(i_methodTag->mpMthdData);
}

/* 800237B8-800237D8 0020+00 s=0 e=1 z=0  None .text
 * fpcMtdTg_ToMethodQ__FP15node_list_classP24process_method_tag_class */
s32 fpcMtdTg_ToMethodQ(node_list_class* pList, process_method_tag_class* i_methodTag) {
    return cTg_Addition(pList, &i_methodTag->mCreateTag);
}

/* 800237D8-800237F8 0020+00 s=0 e=1 z=0  None .text
 * fpcMtdTg_MethodQTo__FP24process_method_tag_class             */
void fpcMtdTg_MethodQTo(process_method_tag_class* i_methodTag) {
    cTg_SingleCut(&i_methodTag->mCreateTag);
}

/* 800237F8-80023844 004C+00 s=0 e=3 z=0  None .text
 * fpcMtdTg_Init__FP24process_method_tag_classPFPv_iPv          */
s32 fpcMtdTg_Init(process_method_tag_class* i_methodTag, process_method_tag_func i_mtdTgFunc, void* i_data) {
    cTg_Create(&i_methodTag->mCreateTag, i_methodTag);
    i_methodTag->mpFunc = i_mtdTgFunc;
    i_methodTag->mpMthdData = i_data;
    return 1;
}
