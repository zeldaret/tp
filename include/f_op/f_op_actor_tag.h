#ifndef F_OP_ACTOR_TAG_H_
#define F_OP_ACTOR_TAG_H_

#include "SSystem/SComponent/c_tag.h"

int fopAcTg_ActorQTo(create_tag_class* i_createTag);
int fopAcTg_Init(create_tag_class* i_createTag, void* i_data);
int fopAcTg_ToActorQ(create_tag_class* i_createTag);

extern node_list_class g_fopAcTg_Queue;

#endif
