/**
 * f_op_draw_tag.cpp
 *
 */

#include "f_op/f_op_draw_tag.h"
#include "SSystem/SComponent/c_list.h"
#include "SSystem/SComponent/c_tag.h"
#include "global.h"

/* ############################################################################################## */
/* 804505D0-804505D8 000050 0008+00 2/2 2/2 0/0 .sdata           g_fopDwTg_Queue */
node_lists_tree_class g_fopDwTg_Queue = {NULL, 0};

/* 800204AC-800204D4 01ADEC 0028+00 0/0 4/4 2/2 .text fopDwTg_ToDrawQ__FP16create_tag_classi */
void fopDwTg_ToDrawQ(create_tag_class* i_createTag, int i_priority) {
    cTg_AdditionToTree(&g_fopDwTg_Queue, i_priority, i_createTag);
}

/* 800204D4-800204F4 01AE14 0020+00 0/0 8/8 3/3 .text fopDwTg_DrawQTo__FP16create_tag_class */
void fopDwTg_DrawQTo(create_tag_class* i_createTag) {
    cTg_SingleCutFromTree(i_createTag);
}

/* 800204F4-80020518 01AE34 0024+00 0/0 4/4 0/0 .text fopDwTg_Init__FP16create_tag_classPv */
bool fopDwTg_Init(create_tag_class* i_createTag, void* i_process) {
    cTg_Create(i_createTag, i_process);
    return true;
}

/* ############################################################################################## */
/* 803F1E10-803F4CF0 01EB30 2EE0+00 1/1 0/0 0/0 .bss             lists$2216 */
static node_list_class lists[1000];

/* 80020518-80020548 01AE58 0030+00 0/0 1/1 0/0 .text            fopDwTg_CreateQueue__Fv */
void fopDwTg_CreateQueue() {
    cTr_Create(&g_fopDwTg_Queue, lists, ARRAY_SIZE(lists));
}