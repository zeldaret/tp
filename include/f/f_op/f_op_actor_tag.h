#ifndef F_OP_ACTOR_TAG_H
#define F_OP_ACTOR_TAG_H

#include "global.h"
#include "SComponent/c_tag.h"

extern "C" {

u32 fopAcTg_ToActorQ(create_tag_class* c);
u32 fopAcTg_ActorQTo(create_tag_class* c);
u32 fopAcTg_Init(create_tag_class* c, void* data);

}

#endif