
#ifndef F_PC_CREATE_TAG_H
#define F_PC_CREATE_TAG_H

#include "compatibility_c_cpp.h"
#include "dolphin/types.h"
#include "SComponent/c_tag.h"

typedef struct create_tag {
    create_tag_class mBase;
} create_tag;

BEGIN_C_DECLARATIONS

void fpcCtTg_ToCreateQ(create_tag_class *pTag);
void fpcCtTg_CreateQTo(create_tag_class *pTag);
int fpcCtTg_Init(create_tag *pTag, void *pUserData);

END_C_DECLARATIONS

#endif
