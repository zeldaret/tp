
#ifndef F_PC_CREATE_TAG_H
#define F_PC_CREATE_TAG_H

#include "SComponent/c_tag.h"
#include "global.h"

typedef struct create_tag {
    create_tag_class mBase;
} create_tag;

extern "C" {

void fpcCtTg_ToCreateQ(create_tag_class* pTag);
void fpcCtTg_CreateQTo(create_tag_class* pTag);
s32 fpcCtTg_Init(create_tag* pTag, void* pUserData);

};

#endif
