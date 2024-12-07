/**
 * f_pc_method_tag.cpp
 * Framework - Process Method Tag
 */

#include "f_pc/f_pc_method_tag.h"

/* 80023788-800237B8 0030+00 s=0 e=1 z=0  None .text      fpcMtdTg_Do__FP24process_method_tag_class
 */
s32 fpcMtdTg_Do(process_method_tag_class* i_methodTag) {
    return i_methodTag->method(i_methodTag->data);
}

/* 800237B8-800237D8 0020+00 s=0 e=1 z=0  None .text
 * fpcMtdTg_ToMethodQ__FP15node_list_classP24process_method_tag_class */
s32 fpcMtdTg_ToMethodQ(node_list_class* i_nodelist, process_method_tag_class* i_methodTag) {
    return cTg_Addition(i_nodelist, &i_methodTag->create_tag);
}

/* 800237D8-800237F8 0020+00 s=0 e=1 z=0  None .text
 * fpcMtdTg_MethodQTo__FP24process_method_tag_class             */
void fpcMtdTg_MethodQTo(process_method_tag_class* i_methodTag) {
    cTg_SingleCut(&i_methodTag->create_tag);
}

/* 800237F8-80023844 004C+00 s=0 e=3 z=0  None .text
 * fpcMtdTg_Init__FP24process_method_tag_classPFPv_iPv          */
s32 fpcMtdTg_Init(process_method_tag_class* i_methodTag, process_method_tag_func i_method, void* i_data) {
    cTg_Create(&i_methodTag->create_tag, i_methodTag);
    i_methodTag->method = i_method;
    i_methodTag->data = i_data;
    return 1;
}
