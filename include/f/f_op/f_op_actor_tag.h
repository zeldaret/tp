#ifndef F_OP_ACTOR_TAG_H_
#define F_OP_ACTOR_TAG_H_

#include "SComponent/c_tag.h"
#include "global.h"

extern "C" {

u32 fopAcTg_ToActorQ(create_tag_class* c);
u32 fopAcTg_ActorQTo(create_tag_class* c);
u32 fopAcTg_Init(create_tag_class* c, void* data);
}

#endif