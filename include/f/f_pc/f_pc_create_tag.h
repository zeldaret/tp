
#ifndef F_PC_CREATE_TAG_H
#define F_PC_CREATE_TAG_H

#include "SComponent/c_tag.h"
#include "global.h"

struct create_tag : public create_tag_class {};

extern "C" {

void fpcCtTg_ToCreateQ(create_tag_class* pTag);
void fpcCtTg_CreateQTo(create_tag_class* pTag);
int fpcCtTg_Init(create_tag* pTag, void* pUserData);
};

#endif
