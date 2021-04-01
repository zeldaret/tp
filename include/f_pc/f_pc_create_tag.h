
#ifndef F_PC_CREATE_TAG_H_
#define F_PC_CREATE_TAG_H_

#include "SSystem/SComponent/c_tag.h"
#include "dolphin/types.h"

typedef struct create_tag {
    create_tag_class mBase;
} create_tag;

void fpcCtTg_ToCreateQ(create_tag* pTag);
void fpcCtTg_CreateQTo(create_tag* pTag);
s32 fpcCtTg_Init(create_tag* pTag, void* pUserData);

extern node_list_class g_fpcCtTg_Queue;

#endif
