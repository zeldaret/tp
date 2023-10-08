#ifndef F_F_OP_SCENE_TAG_H_
#define F_F_OP_SCENE_TAG_H_

#include "f_pc/f_pc_node.h"
#include "SSystem/SComponent/c_phase.h"

class scene_tag_class {
public:
    u8 field_0x00[0x14];
};

void fopScnTg_QueueTo(scene_tag_class* pSceneTag);
void fopScnTg_ToQueue(scene_tag_class* pSceneTag);
void fopScnTg_Init(scene_tag_class* pSceneTag, void* pData);

extern node_list_class g_fopScnTg_SceneList;

#endif
