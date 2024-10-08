/**
 * f_op_actor_tag.cpp
 *
 */

#include "f_op/f_op_actor_tag.h"
#include "SSystem/SComponent/c_list.h"

/* ############################################################################################## */
/* 803A35E0-803A35F0 000700 000C+04 1/1 2/2 0/0 .data            g_fopAcTg_Queue */
node_list_class g_fopAcTg_Queue = {NULL, NULL, 0};

/* 80019834-80019860 014174 002C+00 0/0 1/1 0/0 .text fopAcTg_ToActorQ__FP16create_tag_class */
u32 fopAcTg_ToActorQ(create_tag_class* i_createTag) {
    return cTg_Addition(&g_fopAcTg_Queue, i_createTag);
}

/* 80019860-80019880 0141A0 0020+00 0/0 1/1 0/0 .text fopAcTg_ActorQTo__FP16create_tag_class */
u32 fopAcTg_ActorQTo(create_tag_class* i_createTag) {
    return cTg_SingleCutFromTree(i_createTag);
}

/* 80019880-800198A4 0141C0 0024+00 0/0 1/1 0/0 .text fopAcTg_Init__FP16create_tag_classPv */
u32 fopAcTg_Init(create_tag_class* i_createTag, void* i_data) {
    cTg_Create(i_createTag, i_data);
    return 1;
}