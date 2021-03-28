#ifndef F_F_OP_SCENE_TAG_H_
#define F_F_OP_SCENE_TAG_H_

#include "dolphin/types.h"

class scene_tag_class;

void fopScnTg_QueueTo(scene_tag_class* pSceneTag);
void fopScnTg_ToQueue(scene_tag_class* pSceneTag);
void fopScnTg_Init(scene_tag_class* pSceneTag, void* pData);

#endif