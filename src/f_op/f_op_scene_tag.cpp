/**
 * f_op_scene_tag.cpp
 * Scene Process Tag
 */

#include "f_op/f_op_scene_tag.h"

/* 8001F13C-8001F15C 019A7C 0020+00 0/0 1/1 0/0 .text fopScnTg_QueueTo__FP15scene_tag_class */
void fopScnTg_QueueTo(scene_tag_class* i_sceneTag) {
    cTg_SingleCut(&i_sceneTag->base);
}

/* 803A3918-803A3928 000A38 000C+04 1/1 1/1 0/0 .data            g_fopScnTg_SceneList */
node_list_class g_fopScnTg_SceneList = {NULL, NULL, 0};

/* 8001F15C-8001F188 019A9C 002C+00 0/0 1/1 0/0 .text fopScnTg_ToQueue__FP15scene_tag_class */
void fopScnTg_ToQueue(scene_tag_class* i_sceneTag) {
    cTg_Addition(&g_fopScnTg_SceneList, &i_sceneTag->base);
}

/* 8001F188-8001F1A8 019AC8 0020+00 0/0 1/1 0/0 .text fopScnTg_Init__FP15scene_tag_classPv */
void fopScnTg_Init(scene_tag_class* i_sceneTag, void* i_data) {
    cTg_Create(&i_sceneTag->base, i_data);
}
