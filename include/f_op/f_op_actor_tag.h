#ifndef F_OP_ACTOR_TAG_H_
#define F_OP_ACTOR_TAG_H_

#include "SSystem/SComponent/c_tag.h"

u32 fopAcTg_ActorQTo(create_tag_class* pTag);
u32 fopAcTg_Init(create_tag_class* pTag, void* data);
u32 fopAcTg_ToActorQ(create_tag_class* c);

// f_op_actor_tag::g_fopAcTg_Queue
extern node_list_class g_fopAcTg_Queue;

#endif