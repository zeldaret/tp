
#ifndef F_PC_CREATE_TAG_H_
#define F_PC_CREATE_TAG_H_

#include "SComponent/c_tag.h"
#include "global.h"

typedef struct create_tag {
    create_tag_class mBase;
} create_tag;

void fpcCtTg_ToCreateQ(create_tag* pTag);
void fpcCtTg_CreateQTo(create_tag* pTag);
s32 fpcCtTg_Init(create_tag* pTag, void* pUserData);

#endif
